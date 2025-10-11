import 'package:flutter/material.dart';
import 'package:workoutapp_final/constants/colors.dart';
import 'package:workoutapp_final/constants/responsive.dart';

class AddExerciseCard extends StatefulWidget {
  final String exerciseTitle;
  final String exerciseImageUrl;
  final int noOfMinutes;
  final bool isAdded;
  final bool isFavourited;
  final void Function() toggleAddExercise;
  final void Function() toggleAddFavExercise;

  const AddExerciseCard({
    super.key,
    required this.exerciseTitle,
    required this.noOfMinutes,
    required this.exerciseImageUrl,
    required this.toggleAddExercise,
    required this.isAdded,
    required this.toggleAddFavExercise,
    required this.isFavourited,
  });

  @override
  State<AddExerciseCard> createState() => _AddExerciseCardState();
}

class _AddExerciseCardState extends State<AddExerciseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      margin: EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kCardBgColor,
        boxShadow: [
          BoxShadow(color: Colors.black12, offset: Offset(0, 2), blurRadius: 2),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(kDefaultpadding),
        child: Column(
          children: [
            Text(
              widget.exerciseTitle,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Flexible(
              child: Image.asset(
                widget.exerciseImageUrl,
                width: 100,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "${widget.noOfMinutes.toString()} Minutes",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: kSubtitleColor,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: kSubtitleColor.withValues(alpha: 0.3),
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          widget.toggleAddExercise();
                        },
                        icon: Icon(
                          widget.isAdded ? Icons.remove : Icons.add,
                          size: 30,
                          color: kMainDarkblue,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: kSubtitleColor.withValues(alpha: 0.2),
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          widget.toggleAddFavExercise();
                        },
                        icon: Icon(
                          widget.isFavourited ? Icons.favorite : Icons.favorite_border,
                          size: 30,
                          color: kSubpinkColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
