import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workoutapp_final/constants/colors.dart';
import 'package:workoutapp_final/constants/responsive.dart';
import 'package:workoutapp_final/model/equipment_model.dart';
import 'package:workoutapp_final/widgets/equipment_card.dart';

class EquipmentsDetailsPage extends StatefulWidget {
  final String equipmentTitle;
  final String equipmentDescription;
  final List<EquipmentModel> equipmentList;
  const EquipmentsDetailsPage({
    super.key,
    required this.equipmentTitle,
    required this.equipmentDescription,
    required this.equipmentList,
  });

  @override
  State<EquipmentsDetailsPage> createState() => _EquipmentsDetailsPageState();
}

class _EquipmentsDetailsPageState extends State<EquipmentsDetailsPage> {
  //Date and Time Formatters
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
              widget.equipmentTitle,
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
                widget.equipmentDescription,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: kMainBlackColor,
                ),
              ),
              const SizedBox(height: 20),

              //Grid
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: kDefaultpadding,
                  mainAxisSpacing: kDefaultpadding,
                  childAspectRatio: 14 / 16, //16/13
                ),
                itemCount: widget.equipmentList.length,
                itemBuilder: (context, index) {
                  EquipmentModel equipment = widget.equipmentList[index];
                  return EquipmentCard(
                    equipmentname: equipment.equipmentname,
                    equipmentDescription: equipment.equipmentDescription,
                    equipmentImageUrl: equipment.equipmentImageUrl,
                    noOfMinutes: equipment.noOfMinutes,
                    noofCalories: equipment.noofCalories,
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
