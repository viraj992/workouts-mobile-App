import 'package:flutter/material.dart';
import 'package:workoutapp_final/constants/colors.dart';
import 'package:workoutapp_final/constants/responsive.dart';
import 'package:workoutapp_final/data/equipment_data.dart';
import 'package:workoutapp_final/data/exercise_data.dart';
import 'package:workoutapp_final/data/user_data.dart';
import 'package:workoutapp_final/model/equipment_model.dart';
import 'package:workoutapp_final/model/exercise_model.dart';
import 'package:workoutapp_final/widgets/add_equipment_card.dart';
import 'package:workoutapp_final/widgets/add_exercise_card.dart';

class AddNewPage extends StatefulWidget {
  const AddNewPage({super.key});

  @override
  State<AddNewPage> createState() => _AddNewPageState();
}

class _AddNewPageState extends State<AddNewPage> {
  //import the user from user_data.dart (user)
  final userData = user;

  //exerciseList
  final exerciseList = ExerciseData().exerciseList;

  final equipmentList = EquipmentData().equipmentList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultpadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, ${userData.fullName}",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: kMainBlackColor,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Lets Add Some Workouts and Equipment for today!",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: kMainColor,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "All Exercises",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: kMainBlackColor,
                  ),
                ),
                const SizedBox(height: 10),

                //List view
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: exerciseList.length, // needed
                    itemBuilder: (context, index) {
                      ExerciseModel exercise = exerciseList[index];
                      return AddExerciseCard(
                        exerciseTitle: exercise.exerciseName,
                        noOfMinutes: exercise.noOfMinutes,
                        exerciseImageUrl: exercise.exerciseImageUrl,
                        isAdded: userData.exerciseList.contains(exercise),
                        isFavourited: userData.favExerciseList.contains(
                          exercise,
                        ),
                        toggleAddExercise: () {
                          setState(() {
                            if (userData.exerciseList.contains(exercise)) {
                              userData.removeExercise(exercise);
                              //print(userData.exerciseList.length);
                            } else {
                              userData.addExercise(exercise);
                              //print(userData.exerciseList.length);
                            }
                            //print(userData.exerciseList.last.exerciseName);
                          });
                        },

                        toggleAddFavExercise: () {
                          setState(() {
                            if (userData.favExerciseList.contains(exercise)) {
                              userData.removeFavExercise(exercise);
                              //print(userData.favExerciseList.length);
                            } else {
                              userData.addFavExercise(exercise);
                              //print(userData.favExerciseList.length);
                            }
                          });
                        },
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "All Equipments",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: kMainBlackColor,
                  ),
                ),
                const SizedBox(height: 10),

                //List view
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: equipmentList.length,
                    itemBuilder: (context, index) {
                      EquipmentModel equipment = equipmentList[index];

                      return AddEquipmentCard(
                        equipmentname: equipment.equipmentname,
                        
                        equipmentImageUrl: equipment.equipmentImageUrl,
                        noOfMinutes: equipment.noOfMinutes,
                        noofCalories: equipment.noofCalories,
                        isAddEquipment: userData.equipmentList.contains(
                          equipment,
                        ),
                        isfavouriteEquipment: userData.favEquipmentList.contains(equipment),
                        toggleAddEquipment: () {
                          setState(() {
                            if (userData.equipmentList.contains(equipment)) {
                              userData.removeEquipment(equipment);
                              //print(userData.equipmentList.length);
                            } else {
                              userData.addEquipment(equipment);
                              //print(userData.equipmentList.length);
                            }
                          });
                        },

                        toggleAddFavEquipment: () {
                          setState(() {
                            if (userData.favEquipmentList.contains(equipment)) {
                              userData.removeFavEquipment(equipment);
                              //print(userData.favEquipmentList.length);
                            } else {
                              userData.addFavEquipment(equipment);
                              //print(userData.favEquipmentList.length);
                            }
                          });
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
