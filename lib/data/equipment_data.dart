import 'package:workoutapp_final/model/equipment_model.dart';

class EquipmentData {
  final List<EquipmentModel> equipmentList = [
    // 🏋️ Free Weights
    EquipmentModel(
      id: 0,
      equipmentname: "Dumbbell",
      equipmentDescription: "A dumbbell is a short bar with a weight at each end, used for strength training and physical exercise. It is commonly found in gyms and home workout spaces, and is ideal for building muscle, improving fitness, and supporting overall health.",
      equipmentImageUrl: "assets/images/equipments/dumbbell.png",
      noOfMinutes: 8,
      noofCalories: 4,
      handOvered: false,
    ),
    EquipmentModel(
      id: 1,
      equipmentname: "Barbell Bar",
      equipmentDescription: "A barbell bar is a long, straight metal bar used in weightlifting and strength training. It is designed to hold weight plates on each end, allowing users to perform exercises such as squats, deadlifts, and bench presses to build muscle and improve fitness.",
      equipmentImageUrl: "assets/images/equipments/barbell-bar.png",
      noOfMinutes: 12,
      noofCalories: 5,
      handOvered: false,
    ),
    EquipmentModel(
      id: 2,
      equipmentname: "Barbell",
      equipmentDescription: "A barbell is a long metal bar used in weightlifting and strength training, designed to hold weight plates on either end for exercises such as squats, deadlifts, and bench presses.",
      equipmentImageUrl: "assets/images/equipments/barbell.png",
      noOfMinutes: 12,
      noofCalories: 5,
      handOvered: false,
    ),

    // 💪 Bodyweight Stations
    EquipmentModel(
      id: 3,
      equipmentname: "Pull-Up Bar",
      equipmentDescription: "A pull-up bar is a sturdy horizontal bar designed for performing pull-up exercises, which strengthen the upper body and core. Commonly used in home gyms or fitness centers, it supports bodyweight workouts for improved health and fitness.",
      equipmentImageUrl: "assets/images/equipments/pull-up-bar.png",
      noOfMinutes: 10,
      noofCalories: 5,
      handOvered: false,
    ),
    EquipmentModel(
      id: 4,
      equipmentname: "Dip Bar",
      equipmentDescription: "A dip bar is a sturdy piece of exercise equipment designed for performing bodyweight exercises such as dips, leg raises, and other strength training movements. It is commonly used to build upper body and core strength.",
      equipmentImageUrl: "assets/images/equipments/dip-bar.png",
      noOfMinutes: 10,
      noofCalories: 4,
      handOvered: false,
    ),
    EquipmentModel(
      id: 5,
      equipmentname: "Power Tower",
      equipmentDescription: "A Power Tower is a versatile piece of exercise equipment designed for bodyweight workouts such as pull-ups, dips, knee raises, and push-ups. It helps build upper body and core strength, making it ideal for home gyms and fitness routines.",
      equipmentImageUrl: "assets/images/equipments/power-tower.png",
      noOfMinutes: 15,
      noofCalories: 6,
      handOvered: false,
    ),

    // 🦵 Machines
    EquipmentModel(
      id: 6,
      equipmentname: "Smith Machine",
      equipmentDescription: "A Smith Machine is a piece of exercise equipment featuring a barbell fixed within steel rails, allowing for vertical movement. It is commonly used for weight training and strength exercises, providing added safety and stability for users during workouts.",
      equipmentImageUrl: "assets/images/equipments/smith-machine.png",
      noOfMinutes: 15,
      noofCalories: 6,
      handOvered: false,
    ),
    EquipmentModel(
      id: 7,
      equipmentname: "Incline Leg Press",
      equipmentDescription: "A robust gym machine designed for lower body strength training, allowing users to perform leg press exercises at an inclined angle for targeted muscle development.",
      equipmentImageUrl: "assets/images/equipments/incline-leg-press.png",
      noOfMinutes: 15,
      noofCalories: 6,
      handOvered: false,
    ),
    EquipmentModel(
      id: 8,
      equipmentname: "Leg Extension Machine",
      equipmentDescription: "A Leg Extension Machine is a fitness equipment designed to strengthen and isolate the quadriceps muscles in the legs by allowing users to perform leg extension exercises in a controlled manner. Commonly found in gyms and rehabilitation centers, it supports lower body training and knee health.",
      equipmentImageUrl: "assets/images/equipments/leg-extension-machine.png",
      noOfMinutes: 12,
      noofCalories: 5,
      handOvered: false,
    ),
    EquipmentModel(
      id: 9,
      equipmentname: "High-Low Pulley Cable",
      equipmentDescription: "A high-low pulley cable is a versatile piece of exercise equipment used in gyms and home fitness setups. It allows users to perform a wide range of strength training exercises by adjusting the cable height, targeting different muscle groups for a full-body workout.",
      equipmentImageUrl: "assets/images/equipments/high-low-pulley-cable.png",
      noOfMinutes: 15,
      noofCalories: 6,
      handOvered: false,
    ),

    // 🏃 Cardio & Flexibility
    EquipmentModel(
      id: 10,
      equipmentname: "Treadmill",
      equipmentDescription: "A treadmill is a fitness machine designed for walking, jogging, or running while staying in one place. It is commonly used for exercise and cardiovascular training indoors.",
      equipmentImageUrl: "assets/images/equipments/treadmill.png",
      noOfMinutes: 20,
      noofCalories: 8,
      handOvered: false,
    ),
    EquipmentModel(
      id: 11,
      equipmentname: "Cross Trainer",
      equipmentDescription: "A cross trainer is a versatile exercise machine designed to provide a full-body cardiovascular workout by simulating walking, running, and stair climbing with minimal impact on the joints. It is commonly used for improving fitness, burning calories, and enhancing overall health and wellness.",
      equipmentImageUrl: "assets/images/equipments/cross-trainer.png",
      noOfMinutes: 20,
      noofCalories: 9,
      handOvered: false,
    ),
    EquipmentModel(
      id: 12,
      equipmentname: "Gymnastics Mat",
      equipmentDescription: "A cushioned, non-slip surface designed to provide safety and comfort during gymnastics routines, tumbling, and other athletic activities. Commonly used in gyms, schools, and training centers to prevent injuries.",
      equipmentImageUrl: "assets/images/equipments/gymnastics-mat.png",
      noOfMinutes: 10,
      noofCalories: 2,
      handOvered: false,
    ),
  ];
}
