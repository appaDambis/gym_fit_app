import 'package:gym_app/exercises/excersice_model.dart';
// class Muscle {
//   final String muscle;
//   final String image;
//   final List<Exercise> exercises;

//   Muscle({required this.image, required this.muscle, required this.exercises});

//   factory Muscle.fromJson(Map<String, dynamic> json) {
//     List<dynamic> exercisesJson = json['exercises'];
//     List<Exercise> exercises = exercisesJson
//         .map((exerciseJson) => Exercise.fromJson(exerciseJson))
//         .toList();
//     return Muscle(
//       muscle: json['muscle'],
//       image: json['image'],
//       exercises: exercises,
//     );
//   }
// }

class Muscle {
  final String muscle;
  final String image;
  final List<Exercise> exercises;

  Muscle({
    required this.muscle,
    required this.image,
    required this.exercises,
  });

  factory Muscle.fromJson(Map<String, dynamic> json) {
    List<dynamic> exerciseJson = json['exercises'];
    List<Exercise> exercises =
        exerciseJson.map((exercise) => Exercise.fromJson(exercise)).toList();
    return Muscle(
        muscle: json['muscle'], image: json['image'], exercises: exercises);
  }
}
