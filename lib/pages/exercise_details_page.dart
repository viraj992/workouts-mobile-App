import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workoutapp_final/constants/colors.dart';
import 'package:workoutapp_final/constants/responsive.dart';
import 'package:workoutapp_final/model/exercise_model.dart';
import 'package:workoutapp_final/widgets/exercise_card.dart';

class ExerciseDetailsPage extends StatefulWidget {
  final String exerciseTitle;
  final String exerciseDescription;
  final List<ExerciseModel> exerciseList;
  const ExerciseDetailsPage({
    super.key,
    required this.exerciseTitle,
    required this.exerciseDescription,
    required this.exerciseList,
  });

  @override
  State<ExerciseDetailsPage> createState() => _ExerciseDetailsPageState();
}

class _ExerciseDetailsPageState extends State<ExerciseDetailsPage> {
  //Date nad Time Formatters
  final DateFormat formetter = DateFormat('EEEE , MMMM');
  final DateFormat dayFormat = DateFormat('dd');
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formetter.format(now);
    String formattedDay = dayFormat.format(now);

    return Scaffold(
      appBar: AppBar(
        title: Column(
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
              widget.exerciseTitle,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: kMainBlackColor,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultpadding),
          child: Column(
            children: [
              Text(
                widget.exerciseDescription,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: kMainBlackColor,
                ),
              ),
              SizedBox(height: 10),

              //grid view
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: kDefaultpadding,
                  mainAxisSpacing: kDefaultpadding,
                ),
                itemCount:widget.exerciseList.length ,
                itemBuilder: (context, index) {
                  ExerciseModel exercise = widget.exerciseList[index];
                  return ExerciseCard(
                    title: exercise.exerciseName,
                    imageUrl: exercise.exerciseImageUrl,
                    description: "${exercise.noOfMinutes} of Workout",
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
