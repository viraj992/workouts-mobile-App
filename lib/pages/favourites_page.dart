import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workoutapp_final/constants/colors.dart';
import 'package:workoutapp_final/constants/responsive.dart';
import 'package:workoutapp_final/data/user_data.dart';
import 'package:workoutapp_final/model/equipment_model.dart';
import 'package:workoutapp_final/model/exercise_model.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
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
                Text(
                  "Here are all your favorited Workouts",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: kMainColor,
                  ),
                ),
                const SizedBox(height: 10),

                //Exerice Grid View
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: kDefaultpadding,
                    mainAxisSpacing: kDefaultpadding,
                    childAspectRatio: 4/5
                  ),
                  itemCount: userData.favExerciseList.length,
                  itemBuilder: (context, index) {
                    ExerciseModel favExercise = userData.favExerciseList[index];
                    return Card(
                      color: kCardBgColor,
                      child: Padding(
                        padding: const EdgeInsets.all(kDefaultpadding),
                        child: Column(
                          children: [
                            Text(favExercise.exerciseName,style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                            ),),
                            const SizedBox(height: 10,),
                            Image.asset(
                              favExercise.exerciseImageUrl,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(height: 10,),
                            Text(
                              "${favExercise.noOfMinutes.toString()} Min Workouts",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: kMainPinkColor
                            ),),
                          ]
                        ),
                      )
                    );
                  },
                ),

                // 2nd part
                const SizedBox(height: 20),
                Text(
                  "Here are all your favorited Equipments",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: kMainColor,
                  ),
                ),
                const SizedBox(height: 10),

                //Exerice Grid View
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: kDefaultpadding,
                    mainAxisSpacing: kDefaultpadding,
                    childAspectRatio: 6/8
                  ),
                  itemCount: userData.favEquipmentList.length,
                  itemBuilder: (context, index) {
                    EquipmentModel favEquipment = userData.favEquipmentList[index];
                    return Card(
                      color: kCardBgColor,
                      child: Padding(
                        padding: const EdgeInsets.all(kDefaultpadding),
                        child: Column(
                          children: [
                            Text(favEquipment.equipmentname,style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                            ),),
                            const SizedBox(height: 10,),
                            Image.asset(
                              favEquipment.equipmentImageUrl,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(height: 10,),
                            Text(
                              "${favEquipment.noOfMinutes.toString()} Min Workouts",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: kMainPinkColor
                            ),),
                            // const SizedBox(height: 7,),
                            // Text(
                            //   "${favEquipment.equipmentDescription} ",
                            // style: TextStyle(
                            //   fontSize: 14,
                            //   fontWeight: FontWeight.normal,
                            //   color: kSubtitleColor
                            // ),
                            // textAlign: TextAlign.center,
                            // ),
                          ]
                        ),
                      )
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
