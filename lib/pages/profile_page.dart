import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workoutapp_final/constants/colors.dart';
import 'package:workoutapp_final/constants/responsive.dart';
import 'package:workoutapp_final/data/user_data.dart';
import 'package:workoutapp_final/model/equipment_model.dart';
import 'package:workoutapp_final/model/exercise_model.dart';
import 'package:workoutapp_final/widgets/profile_card.dart';
import 'package:workoutapp_final/widgets/progress_card.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  //date and time formatters
  final DateFormat formetter = DateFormat('EEEE , MMMM');
  final DateFormat dayFormat = DateFormat('dd');

  //user data
  final userData = user;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formetter.format(now);
    String formattedDay = dayFormat.format(now);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultpadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$formattedDate $formattedDay",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: kSubtitleColor,
                  ),
                ),
                Text(
                  "${userData.fullName} ",
                  style: const TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w800,
                    color: kMainBlackColor,
                  ),
                ),
                const SizedBox(height: 10),
                ProgressCard(
                  progressValue: userData.calculateTotalCaloriesBurned(),
                  total: 100),
                const SizedBox(height: 15),

                //
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kCardBgColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(kDefaultpadding * 1.5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Minutes Spend: ${userData.calculateTotalMinutesSpent().toString()}",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: kMainDarkblue,
                          ),
                        ),

                        const SizedBox(height: 15),

                        Text(
                          "Total Exercises Completed: ${userData.totalExercisesCompleted.toString()}",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: kMainBlackColor,
                          ),
                        ),
                        const SizedBox(height: 4),

                        Text(
                          "Total Equipments handovered: ${userData.totalequipmentHandOvered.toString()}",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: kMainBlackColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  "Your Exercises",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600,color: kMainDarkblue),
                ),
                const SizedBox(height: 10),

                //exercise list of the user
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: userData.exerciseList.length,
                  itemBuilder: (context, index) {
                    ExerciseModel userExercise = userData.exerciseList[index];

                    return ProfileCard(
                      taskName: userExercise.exerciseName,
                      taskImageUrl: userExercise.exerciseImageUrl,
                      markAsDone: () {
                        setState(() {
                          userData.markExerciseAsCompleted(userExercise.id);
                        });
                      },
                    );
                  },
                ),

                //
                const SizedBox(height: 10),
                Text(
                  "Your Equipments",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                    color: kMainDarkblue,
                  ),
                ),
                const SizedBox(height: 10),

                //equipment list of the user
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: userData.equipmentList.length,
                  itemBuilder: (context, index) {
                    EquipmentModel userEquipment =
                        userData.equipmentList[index];

                    return ProfileCard(
                      taskName: userEquipment.equipmentname,
                      taskImageUrl: userEquipment.equipmentImageUrl,
                      markAsDone: () {
                        setState(() {
                          userData.markAsHandovered(userEquipment.id);
                        });
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
