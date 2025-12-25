import 'dart:convert';
import 'dart:developer';
import 'package:al_quran_mobile/core/constants/app_constants.dart';

import 'package:al_quran_mobile/data/models/details/detail_surah_model.dart';
import 'package:al_quran_mobile/data/models/surah_model.dart';
import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';

class RemoteResource {
  late final Dio dio;

  RemoteResource() {
    dio = Dio(
      BaseOptions(
        // URL Hardcoded diganti dengan Constant dari AppConstants
        baseUrl: AppConstants.baseUrl,
        // timeout settings
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
        headers: {'Accept': 'application/json', 'Accept-Charset': 'utf-8'},
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          log('REQUEST[${options.method}] => PATH: ${options.path}');
          return handler.next(options);
        },
        onResponse: (response, handler) {
          log(
            'RESPONSE[${response.statusCode}] => DATA: ${response.data.toString().substring(0, 50)}...',
          );
          if (response.data is String) {
            try {
              response.data = json.decode(utf8.decode(response.data.codeUnits));
            } catch (e) {
              log("Gagal decode manual JSON: $e");
            }
          }
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          log(
            'ERROR[${e.response?.statusCode}] => PATH: ${e.requestOptions.path}',
          );
          return handler.next(e);
        },
      ),
    );
  }

  Future<Either<String, List<SurahModel>>> fetchQuran() async {
    try {
      // Constant endpoint dari AppConstants
      final response = await dio.get(AppConstants.surahEndpoint);

      if (response.statusCode == 200) {
        if (response.data is List) {
          List<dynamic> data = response.data;
          List<SurahModel> surahList = data.map((json) {
            return SurahModel.fromMap(json);
          }).toList();
          return Right(surahList);
        } else {
          return const Left('Format data API tidak sesuai (Bukan List)');
        }
      } else {
        return Left('Server Error: ${response.statusCode}');
      }
    } on DioException catch (e) {
      return Left(_handleDioError(e));
    } catch (e) {
      return Left('Terjadi kesalahan tidak terduga: $e');
    }
  }

  Future<Either<String, DetailSurahModel>> detailSurah(int id) async {
    try {
      // Menggunakan String Interpolation untuk menyusun endpoint
      // Hasilnya sama: 'quran/surah' + '/' + '1' => 'quran/surah/1'
      final response = await dio.get('${AppConstants.surahEndpoint}/$id');

      if (response.statusCode == 200) {
        DetailSurahModel detailSurah = DetailSurahModel.fromMap(response.data);
        return Right(detailSurah);
      } else {
        return Left('Server Error: ${response.statusCode}');
      }
    } on DioException catch (e) {
      return Left(_handleDioError(e));
    } catch (e) {
      return Left('Terjadi kesalahan parsing data: $e');
    }
  }

  String _handleDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
        return 'Koneksi habis waktu (Timeout). Cek internetmu.';
      case DioExceptionType.connectionError:
        return 'Tidak ada koneksi internet.';
      case DioExceptionType.badResponse:
        return 'Terjadi kesalahan pada server (${e.response?.statusCode}).';
      default:
        return 'Koneksi error: ${e.message}';
    }
  }
}
