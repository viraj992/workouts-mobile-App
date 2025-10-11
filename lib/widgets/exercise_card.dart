import 'package:flutter/material.dart';
import 'package:workoutapp_final/constants/colors.dart';

class ExerciseCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;
  const ExerciseCard({super.key, required this.title, required this.imageUrl, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        color: kCardBgColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            
          )
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title,style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold
            ),),
            const SizedBox(height: 10,),
            Flexible(
              child: Image.asset(imageUrl,
              width: 100 ,
                        
              fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 10,),
            Text(description,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: kMainColor
            ),),
          ],
        ),
      ),
    );
  }
}
