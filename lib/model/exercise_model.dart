class ExerciseModel {
  final int id;
  final String exerciseName;
  final String exerciseImageUrl;
  final int noOfMinutes;
 bool completed;

  ExerciseModel({
    required this.id,
    required this.exerciseName,
    required this.exerciseImageUrl,
    required this.noOfMinutes,
    required this.completed,
  });
}
