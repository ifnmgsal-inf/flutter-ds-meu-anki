class Answer {
  final int id;
  final String sentence;
  final String translation;

  Answer({required this.id, required this.sentence, required this.translation});

  factory Answer.fromJson(Map<String, dynamic> json) {
    return Answer(
      id: int.parse(json['id'].toString()),
      sentence: json['sentence'],
      translation: json['translation'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id.toString(),
      'sentence': sentence,
      'translation': translation,
    };
  }

  @override
  String toString() {
    return 'Answer{id: $id, sentence: $sentence, translation: $translation}';
  }
}
