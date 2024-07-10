import 'package:flutter/material.dart';

import 'workout_data.dart';

class WorkoutSchedulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Weekly Workout Schedule'),
      ),
      body: Stack(children: [
        Positioned.fill(
          child: Opacity(
            opacity: 0.7,
            child: Image.asset(
              'assets/img/background2.jpg', // Background image path
              fit: BoxFit.cover,
            ),
          ),
        ),
        PageView.builder(
          itemCount: WorkoutData.days.length,
          itemBuilder: (context, index) {
            return _buildWorkoutDayCard(index);
          },
        ),
      ]),
    );
  }

  Widget _buildWorkoutDayCard(int index) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Card(
          elevation: 5,
          child: Stack(
            alignment: Alignment.center,
            children: [
              _buildBackgroundImage(index),
              _buildWorkoutDayInfo(index),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBackgroundImage(int index) {
    return Image.asset(
      WorkoutData.images[index],
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }

  Widget _buildWorkoutDayInfo(int index) {
    return Container(
      padding: const EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            WorkoutData.days[index],
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 194, 189, 189),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            _getWorkoutRoutine(index),
            style: const TextStyle(fontSize: 18, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  String _getWorkoutRoutine(int index) {
    switch (index) {
      case 0:
        return 'Back exercises like pull-ups, rows, and bicep curls.';
      case 1:
        return 'Chest exercises like bench press, push-ups, and tricep dips.';
      case 2:
        return 'Shoulder exercises like overhead press, lateral raises, and ab exercises like crunches or planks.';
      case 3:
        return 'Back exercises focusing on different angles and bicep curls.';
      case 4:
        return 'Chest exercises with a mix of triceps workouts for balanced upper body training.';
      case 5:
        return 'Leg day with squats, lunges, leg presses, and calf raises.';
      default:
        return '';
    }
  }
}
