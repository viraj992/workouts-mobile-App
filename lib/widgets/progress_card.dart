import 'package:flutter/material.dart';
import 'package:workoutapp_final/constants/colors.dart';

class ProgressCard extends StatefulWidget {
  final double progressValue;
  final int total;
  const ProgressCard({
    super.key,
    required this.progressValue,
    required this.total,
  });

  @override
  State<ProgressCard> createState() => _ProgressCardState();
}

class _ProgressCardState extends State<ProgressCard> {
  @override
  Widget build(BuildContext context) {
    int done = (widget.progressValue * widget.total).toInt();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [kMainColor, kMainDarkblue],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Proteins, Fats & \nCarbohydrates",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: kMainWhiteColor,
              ),
            ),
            const SizedBox(height: 30),
            LinearProgressIndicator(
              value: widget.progressValue,
              backgroundColor: kMainDarkblue,
              valueColor: AlwaysStoppedAnimation(kMainWhiteColor),
              minHeight: 15,
              borderRadius: BorderRadius.circular(100),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTag(
                  "Done",
                  done.toString(),
                ),
                _buildTag(
                  "Total",
                  widget.total.toString(),
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }

  Widget _buildTag(String title, String value) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: kMainWhiteColor
          ),
          ),
          const SizedBox(height: 5,),
          Text(
          value,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: kMainWhiteColor
          ),
          ),
      ]
    );
  }
}
