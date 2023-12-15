import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> downloadAndSaveFile(String url, String fileName) async {
  try {
    // 권한 확인 및 요청
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      await Permission.storage.request();
    }

    // URL에서 파일 다운로드
    var response = await http.get(Uri.parse(url));
    var bytes = response.bodyBytes;

    // 파일 저장 경로 얻기
    var dir = await getApplicationDocumentsDirectory();
    File file = File("${dir.path}/$fileName");

    // 파일에 데이터 쓰기
    await file.writeAsBytes(bytes);
    print("File downloaded and saved: ${file.path}");
  } catch (e) {
    print(e.toString());
  }
}
