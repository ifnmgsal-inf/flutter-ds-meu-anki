import 'dart:convert';

import 'package:http/http.dart';
import 'package:meu_anki/api/api_key.dart';
import 'package:meu_anki/model/answer.dart';

class AnswerService {
  final String url =
      'https://gist.github.com/leonardo-silva/06a9ef5cfaff85a665c27729de17a2c9';

  Future<List<Answer>> getAnswers() async {
    final Response response = await get(
      Uri.parse(url),
      headers: {'Authorization': 'Bearer $githubApiKey'},
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> mapResponse = json.decode(response.body);
      List<dynamic> listDynamic = json.decode(
        mapResponse['files']['meuanki-german.json']['content'],
      );

      List<Answer> listAnswers = [];
      for (var item in listDynamic) {
        Map<String, dynamic> mapItem = item as Map<String, dynamic>;
        Answer answer = Answer(
          id: int.parse(mapItem['id'].toString()),
          sentence: mapItem['sentence'],
          translation: mapItem['translation'],
        );
        listAnswers.add(answer);
      }

      return listAnswers;
    } else {
      throw Exception('Failed to load answers');
    }
  }
}
