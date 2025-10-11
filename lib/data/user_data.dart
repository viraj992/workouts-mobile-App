import 'package:workoutapp_final/model/equipment_model.dart';
import 'package:workoutapp_final/model/exercise_model.dart';
import 'package:workoutapp_final/model/user_model.dart';

UserModel user = UserModel(
  userId: "123456",
  fullName: "John Doe",
  gender: "male",
  address: "123 Main St. city, country",
  age: 23,
  description: "Fitness enthusiast",
  exerciseList: [
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
  ],
  equipmentList: [
    EquipmentModel(
      id: 0,
      equipmentname: "Dumbbells",
      equipmentDescription: "A pair of dumbbells for strength training exercise.",
      equipmentImageUrl: "assets/images/equipments/dumbbell.png",
      noOfMinutes: 5,
      noofCalories: 2,
      handOvered: false,
    ),
  ],
  favExerciseList: [
    ExerciseModel(
      id: 1,
      exerciseName: "Squats",
      exerciseImageUrl: "assets/images/exercises/downward-facing.png",
      noOfMinutes: 5,
      completed: false,
    ),
  ],
  favEquipmentList: [
    EquipmentModel(
      id: 0,
      equipmentname: "Dumbbells",
      equipmentDescription: "A pair of dumbbells for strength training exercise.",
      equipmentImageUrl: "assets/images/equipments/dumbbell.png",
      noOfMinutes: 5,
      noofCalories: 2,
      handOvered: false,
    ),
  ],
);
