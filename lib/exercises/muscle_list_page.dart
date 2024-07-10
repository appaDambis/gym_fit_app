import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gym_app/exercises/muscle_detail_page.dart';

import 'muscle_model.dart';

class MuscleListPage extends StatefulWidget {
  const MuscleListPage({Key? key}) : super(key: key);

  @override
  _MuscleListPageState createState() => _MuscleListPageState();
}

class _MuscleListPageState extends State<MuscleListPage> {
  late List<Muscle> muscles = [];

  @override
  void initState() {
    super.initState();
    loadMuscles();
  }

  // Future<void> loadMuscles() async {
  //   final String response =
  //       await rootBundle.loadString('assets/exercises.json');
  //   final List<dynamic> jsonResponse = json.decode(response);
  //   setState(() {
  //     muscles = jsonResponse.map((json) => Muscle.fromJson(json)).toList();
  //   });
  // }

  Future<void> loadMuscles() async {
    final String response =
        await rootBundle.loadString('assets/exercises.json');
    List<dynamic> jsonResponse = json.decode(response);
    setState(() {
      muscles = jsonResponse.map((json) => Muscle.fromJson(json)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Muscle Groups'),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/img/background2.jpg', // Replace with your background image path
              fit: BoxFit.cover,
            ),
          ),
          muscles.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: muscles.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MuscleDetailPage(
                              muscle: muscles[index],
                            ),
                          ),
                        );
                      },
                      child: Card(
                        margin: const EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 5,
                        child: Stack(
                          children: [
                            // Background image for the card
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                muscles[index].image,
                                height: 200,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            // Gradient overlay for text visibility
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  ),
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.black.withOpacity(0.7),
                                      Colors.transparent,
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                  ),
                                ),
                              ),
                            ),
                            // Muscle name text
                            Positioned(
                              bottom: 10,
                              left: 10,
                              child: Text(
                                muscles[index].muscle,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
        ],
      ),
    );
  }
}
