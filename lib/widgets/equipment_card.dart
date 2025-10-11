import 'package:flutter/material.dart';
import 'package:workoutapp_final/constants/colors.dart';

class EquipmentCard extends StatelessWidget {
  final String equipmentname;
  final String equipmentDescription;
  final String equipmentImageUrl;
  final int noOfMinutes;
  final double noofCalories;
  const EquipmentCard({
    super.key,
    required this.equipmentname,
    required this.equipmentDescription,
    required this.equipmentImageUrl,
    required this.noOfMinutes,
    required this.noofCalories,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kCardBgColor
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(equipmentname,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
            const SizedBox(height: 10,),
            Row(
              children: [
                Image.asset(
                  equipmentImageUrl,
                  fit: BoxFit.cover,
                  width: 100,
                ),
                const SizedBox(width: 25,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${noOfMinutes.toString()} of Workout",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kSubpinkColor, 
                    ),),
                    Text("${noofCalories.toString()} Calories Burned",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kSubpinkColor, 
                    ),),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20,),
            Text(equipmentDescription,
            style: TextStyle(
              fontSize: 15,
              color: kMainBlackColor,
              fontWeight: FontWeight.normal
            ),
            textAlign: TextAlign.justify,),
          ],
        ),
      ),
    );
  }
}
