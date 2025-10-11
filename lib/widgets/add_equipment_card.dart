import 'package:flutter/material.dart';
import 'package:workoutapp_final/constants/colors.dart';
import 'package:workoutapp_final/constants/responsive.dart';

class AddEquipmentCard extends StatefulWidget {
  final String equipmentname;
  final String equipmentImageUrl;
  final int noOfMinutes;
  final double noofCalories;

  final void Function() toggleAddEquipment;
  final bool isAddEquipment;

  final void Function() toggleAddFavEquipment;
  final bool isfavouriteEquipment;

  const AddEquipmentCard({
    super.key,
    required this.equipmentname,
    required this.equipmentImageUrl,
    required this.noOfMinutes,
    required this.noofCalories,
    required this.toggleAddEquipment,
    required this.isAddEquipment,
    required this.toggleAddFavEquipment,
    required this.isfavouriteEquipment,
  });

  @override
  State<AddEquipmentCard> createState() => _AddEquipmentCardState();
}

class _AddEquipmentCardState extends State<AddEquipmentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: kCardBgColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(color: Colors.black12, offset: Offset(0, 2), blurRadius: 2),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(kDefaultpadding * 1.6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.equipmentname,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kMainBlackColor,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  widget.equipmentImageUrl,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.51,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${widget.noOfMinutes} minutes workout",
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: kMainPurpleColor,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "${widget.noofCalories} cal burned",
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: kMainPurpleColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
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
                          widget.toggleAddEquipment();
                        },
                        icon: Icon(
                          widget.isAddEquipment ? Icons.remove : Icons.add,
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
                          widget.toggleAddFavEquipment();
                        },
                        icon: Icon(
                          widget.isfavouriteEquipment
                              ? Icons.favorite
                              : Icons.favorite_border,
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
