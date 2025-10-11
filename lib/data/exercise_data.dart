import 'package:workoutapp_final/model/exercise_model.dart';

class ExerciseData {
  final List<ExerciseModel> exerciseList = [
    ExerciseModel(
      id: 0,
      exerciseName: "Push-Ups",
      exerciseImageUrl: "assets/images/exercises/downward-facing.png",
      noOfMinutes: 10,
      completed: false,
    ),
    ExerciseModel(
      id: 1,
      exerciseName: "Squats",
      exerciseImageUrl: "assets/images/exercises/downward-facing.png",
      noOfMinutes: 5,
      completed: false,
    ),
    ExerciseModel(
      id: 2,
      exerciseName: "Cobra Stretch",
      exerciseImageUrl: "assets/images/exercises/cobra.png",
      noOfMinutes: 8,
      completed: false,
    ),
    ExerciseModel(
      id: 3,
      exerciseName: "Dragging",
      exerciseImageUrl: "assets/images/exercises/dragging.png",
      noOfMinutes: 6,
      completed: false,
    ),
    ExerciseModel(
      id: 4,
      exerciseName: "Hunch Back Stretch",
      exerciseImageUrl: "assets/images/exercises/hunch_back.png",
      noOfMinutes: 7,
      completed: false,
    ),
    ExerciseModel(
      id: 5,
      exerciseName: "Treadmill (Men)",
      exerciseImageUrl: "assets/images/exercises/treadmill-machine_men.png",
      noOfMinutes: 15,
      completed: false,
    ),
    ExerciseModel(
      id: 6,
      exerciseName: "Treadmill (Women)",
      exerciseImageUrl: "assets/images/exercises/treadmill-machine_women.png",
      noOfMinutes: 15,
      completed: false,
    ),
    ExerciseModel(
      id: 7,
      exerciseName: "Triangle Pose",
      exerciseImageUrl: "assets/images/exercises/triangle.png",
      noOfMinutes: 10,
      completed: false,
    ),
    ExerciseModel(
      id: 8,
      exerciseName: "Weight Lifting",
      exerciseImageUrl: "assets/images/exercises/weightlifting.png",
      noOfMinutes: 12,
      completed: false,
    ),
    ExerciseModel(
      id: 9,
      exerciseName: "Yoga",
      exerciseImageUrl: "assets/images/exercises/yoga.png",
      noOfMinutes: 20,
      completed: false,
    ),
  ];
}
