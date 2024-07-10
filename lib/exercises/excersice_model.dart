// class Exercise {
//   final String name;
//   final String image;
//   final String description;
//   final String videoLink;
//   final List<String> benefits;

//   Exercise({
//     required this.name,
//     required this.image,
//     required this.description,
//     required this.videoLink,
//     required this.benefits,
//   });

//   factory Exercise.fromJson(Map<String, dynamic> json) {
//     List<dynamic> benefitsJson = json['benefits'];
//     List<String> benefits =
//         benefitsJson.map((benefit) => benefit.toString()).toList();
//     return Exercise(
//       name: json['name'],
//       image: json['image'],
//       description: json['description'],
//       videoLink: json['videoLink'],
//       benefits: benefits,
//     );
//   }
// }

class Exercise {
  final String name;
  final String image;
  final String description;
  final String videoLink;
  final List<String> benefits;

  Exercise(
      {required this.name,
      required this.image,
      required this.description,
      required this.videoLink,
      required this.benefits});

  factory Exercise.fromJson(Map<String, dynamic> json) {
    List<dynamic> benefitsJosn = json['benefits'];
    List<String> benefits =
        benefitsJosn.map((benefit) => benefit.toString()).toList();
    return Exercise(
        name: json['name'],
        image: json['image'],
        description: json['description'],
        videoLink: json['videoLink'],
        benefits: benefits);
  }
}
