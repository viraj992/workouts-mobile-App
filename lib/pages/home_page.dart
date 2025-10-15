import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workoutapp_final/constants/colors.dart';
import 'package:workoutapp_final/constants/responsive.dart';
import 'package:workoutapp_final/data/equipment_data.dart';
import 'package:workoutapp_final/data/exercise_data.dart';
import 'package:workoutapp_final/data/user_data.dart';
import 'package:workoutapp_final/pages/equipments_page.dart';
import 'package:workoutapp_final/pages/exercise_details_page.dart';
import 'package:workoutapp_final/widgets/exercise_card.dart';
import 'package:workoutapp_final/widgets/progress_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //date and time formatters
  final DateFormat formetter = DateFormat('EEEE , MMMM');
  final DateFormat dayFormat = DateFormat('dd');

  //user data
  final userData = user;

  //Exercise and equipment data
  final exerciseList = ExerciseData().exerciseList;
  final equipmentList = EquipmentData().equipmentList;

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
                  "Welcome ${userData.fullName} ! ",
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
                Text(
                  "Today's Activity",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExerciseDetailsPage(
                              exerciseTitle: "WarmUp",
                              exerciseDescription:
                                  "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                              exerciseList: exerciseList,
                            ),
                          ),
                        );
                      },
                      child: ExerciseCard(
                        title: "Warmup",
                        imageUrl: "assets/images/exercises/triangle.png",
                        description: "see more..",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EquipmentsDetailsPage(
                              equipmentTitle: "equipments",
                              equipmentDescription: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                              equipmentList: equipmentList,
                            ),
                          ),
                        );
                      },
                      child: ExerciseCard(
                        title: "Equipment",
                        imageUrl: "assets/images/equipments/kettlebells.png",
                        description: "see more..",
                      ),
                    ),
                  ],
                ),
                // SizedBox(height: 15),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     GestureDetector(
                //       onTap: () {
                //         Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //             builder: (context) => ExerciseDetailsPage(
                //               exerciseTitle: "Exercises",
                //               exerciseDescription:
                //                   "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                //               exerciseList: exerciseList,
                //             ),
                //           ),
                //         );
                //       },
                //       child: ExerciseCard(
                //         title: "Exercises",
                //         imageUrl: "assets/images/exercises/triangle.png",
                //         description: "see more..",
                //       ),
                //     ),
                //     GestureDetector(
                //       onTap: () {
                //         Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //             builder: (context) => ExerciseDetailsPage(
                //               exerciseTitle: "Streching",
                //               exerciseDescription:
                //                   "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                //               exerciseList: exerciseList,
                //             ),
                //           ),
                //         );
                //       },
                //       child: ExerciseCard(
                //         title: "Streching",
                //         imageUrl: "assets/images/exercises/yoga.png",
                //         description: "see more..",
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
