import 'dart:convert';

import 'package:ui_100_day_6/common/models/excersize.dart';
import 'package:ui_100_day_6/common/services/file_service.dart';

class ExcersizeService {

  FileService fileService;

  ExcersizeService({this.fileService});

  Future<List<Excersize>> getExcersize() async {
    final contents = await fileService.getFileContents();
    List<dynamic> list = json.decode(contents);
    return list.map((e) => Excersize.fromJson(e)).toList();
  }
}