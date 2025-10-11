import 'package:workoutapp_final/model/equipment_model.dart';
import 'package:workoutapp_final/model/exercise_model.dart';

class UserModel {
  final String userId;
  final String fullName;
  final String gender;
  final String address;
  final int age;
  final String description;
  int totalExercisesCompleted = 0;
  int totalequipmentHandOvered = 0;

  final List<ExerciseModel> exerciseList;
  final List<EquipmentModel> equipmentList;

  final List<ExerciseModel> favExerciseList;
  final List<EquipmentModel> favEquipmentList;

  UserModel({
    required this.userId,
    required this.fullName,
    required this.gender,
    required this.address,
    required this.age,
    required this.description,
    required this.exerciseList,
    required this.equipmentList,
    required this.favExerciseList,
    required this.favEquipmentList,
  });

  //methods
  //method to add new exercise to the exerciseList
  void addExercise(ExerciseModel exercise) {
    exerciseList.add(exercise);
  }

  //method to remove exercise from the exercise List
  void removeExercise(ExerciseModel exercise) {
    exerciseList.remove(exercise);
  }

  //method to add new favourite exercise to the favExerciseList
  void addFavExercise(ExerciseModel exercise) {
    favExerciseList.add(exercise);
  }

  //method to remove from  favExerciseList
  void removeFavExercise(ExerciseModel exercise) {
    favExerciseList.remove(exercise);
  }

  void addEquipment(EquipmentModel equipment) {
    equipmentList.add(equipment);
  }

  void removeEquipment(EquipmentModel equipment) {
    equipmentList.remove(equipment);
  }

  // methods to add and remove favourote equipment
  void addFavEquipment(EquipmentModel equipment) {
    favEquipmentList.add(equipment);
  }

  void removeFavEquipment(EquipmentModel equipment) {
    favEquipmentList.remove(equipment);
  }

  //method to calculate the total minutes spend
  int calculateTotalMinutesSpent() {
    int totalMinutesSpend = 0;

    //loop through exerciseList & calculate no of minutes
    for (var exercise in exerciseList) {
      totalMinutesSpend = totalMinutesSpend + exercise.noOfMinutes;
    }
    //loop through exerciseList & calculate no of minutes
    for (var equipment in equipmentList) {
      totalMinutesSpend += equipment.noOfMinutes;
    }
    return totalMinutesSpend;
  }

  //Method to mark an exercise as completed
  void markExerciseAsCompleted(int exerciseId) {
    final exercise = exerciseList.firstWhere(
      (exercise) => exercise.id == exerciseId,
    );

    exercise.completed = true;

    //remove from the exercise list
    removeExercise(exercise);

    totalExercisesCompleted++;
  }

  //Method to mark an equipment as completed
  void markAsHandovered(int equipmentId) {
    final equipment = equipmentList.firstWhere(
      (equipment) => equipment.id == equipmentId,
    );

    equipment.handOvered == true;

    //remove from the equipment list
    removeEquipment(equipment);

    totalequipmentHandOvered++;
  }

  //method to calculate total - no Calories burned
  double calculateTotalCaloriesBurned() {
    double totalcaloriesBurned = 0;

    for (var equipment in equipmentList) {
      totalcaloriesBurned += equipment.noofCalories;
    }

    //convert in to value between 0 and 1
    if (totalcaloriesBurned > 0 && totalcaloriesBurned <= 10) {
      totalcaloriesBurned = totalcaloriesBurned / 10; // 5 >> 0.5
    }
    if (totalcaloriesBurned > 10 && totalcaloriesBurned <= 100) {
      totalcaloriesBurned = totalcaloriesBurned / 100; // 40 >> 0.4
    }
    if (totalcaloriesBurned > 100 && totalcaloriesBurned <= 1000) {
      totalcaloriesBurned = totalcaloriesBurned / 1000; // 300 >> 0.3
    }
    return totalcaloriesBurned;
  }
}
