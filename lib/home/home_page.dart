import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:gym_app/cardio/cardio_page.dart';
import 'package:gym_app/exercises/muscle_list_page.dart';
import 'package:gym_app/login/login_page.dart';
import 'package:gym_app/meals/recipe_page.dart';
import 'package:gym_app/nearByGym/nearByGymPage.dart';
import 'package:gym_app/schedule/workout_schedule_page.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List menuArr = [
    {"name": "Meals", "image": "assets/img/Baingan Bharta.jpg", "tag": "1"},
    {"name": "Cardio", "image": "assets/img/running.jpg", "tag": "2"},
    {"name": "Exercises", "image": "assets/img/chest_dips.jpg", "tag": "3"},
    {"name": "Schedule", "image": "assets/img/hammer_curls.jpg", "tag": "4"},
  ];
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;
  User? _user;
  String? _profileImageUrl;

  @override
  void initState() {
    super.initState();
    _user = _auth.currentUser;
    if (_user != null) {
      _profileImageUrl = _user!.photoURL;
    } else {
      _logout();
    }
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                _user?.displayName ?? 'Anonymous',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(_user?.email ?? 'No email'),
              currentAccountPicture: InkWell(
                onTap: _pickImageFromGallery,
                child: CircleAvatar(
                  backgroundColor: Colors.black87,
                  backgroundImage: _profileImageUrl != null
                      ? NetworkImage(_profileImageUrl!)
                      : null,
                  child: _profileImageUrl == null
                      ? Text(
                          _user?.displayName?.substring(0, 1).toUpperCase() ??
                              'A',
                          style: const TextStyle(
                            fontSize: 40.0,
                            color: Color.fromARGB(255, 215, 201, 201),
                          ),
                        )
                      : null,
                ),
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img/lunges.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: MediaQuery.sizeOf(context).height,
              color: const Color.fromARGB(221, 21, 20, 20),
              child: Column(
                children: [
                  _buildDrawerItem(Icons.home, "Home", () {
                    Navigator.pop(context);
                  }),
                  _buildDrawerItem(Icons.exit_to_app, "Logout", () {
                    _logout();
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.black,
                expandedHeight: media.width * 0.6,
                collapsedHeight: kToolbarHeight + 20,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        "assets/img/push_ups.jpg",
                        fit: BoxFit.cover,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.7),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'Hello, ',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    _user?.displayName ?? 'Anonymous',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const MuscleListPage(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                child: const Text('Get Started'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  "assets/img/pull_ups.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              GridView.builder(
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.all(16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.7,
                ),
                itemCount: menuArr.length,
                itemBuilder: (context, index) {
                  var mObj = menuArr[index] as Map? ?? {};
                  return InkWell(
                    onTap: () {
                      _navigateToPage(context, mObj["tag"].toString());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              mObj["image"],
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.transparent,
                                    Colors.black.withOpacity(0.7),
                                  ],
                                ),
                              ),
                              child: Text(
                                mObj["name"],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.center,
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
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          bool permissionGranted = await _requestLocationPermission();
          if (permissionGranted) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NearbyGymsPage()),
            );
          }
        },
        child: Icon(Icons.location_on),
        backgroundColor: Colors.red,
      ),
    );
  }

  Future<bool> _requestLocationPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Location permission is denied')),
        );
        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Location permissions are permanently denied')),
      );
      return false;
    }

    return true;
  }

  Widget _buildDrawerItem(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
      onTap: onTap,
    );
  }

  Future<void> _logout() async {
    await _auth.signOut();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  Future<void> _pickImageFromGallery() async {
    final ImagePicker _picker = ImagePicker();
    XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
      if (!imageFile.existsSync()) {
        print('File does not exist: ${imageFile.path}');
        return;
      }
      try {
        Reference ref =
            _storage.ref().child('profile_pictures').child('${_user!.uid}.jpg');
        UploadTask uploadTask = ref.putFile(imageFile);
        TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() => null);

        String downloadUrl = await taskSnapshot.ref.getDownloadURL();

        await _user!.updatePhotoURL(downloadUrl);

        setState(() {
          _user = _auth.currentUser;
          _profileImageUrl = downloadUrl;
        });
      } catch (e) {
        print('Error uploading and updating profile photo: $e');
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to upload and update profile photo.'),
          ),
        );
      }
    }
  }

  void _navigateToPage(BuildContext context, String tag) {
    switch (tag) {
      case "5":
        Scaffold.of(context).openDrawer();
        break;
      case "4":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WorkoutSchedulePage()),
        );
        break;
      case "1":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RecipesPage()),
        );
        break;
      case "2":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CardioPage()),
        );
        break;
      case "3":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MuscleListPage()),
        );
        break;
      default:
    }
  }
}
