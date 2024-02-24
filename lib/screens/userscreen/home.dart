import 'package:carousel_slider/carousel_slider.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginpage/chatbot/chatbot.dart';
import 'package:loginpage/controler/contribution_controller.dart';
import 'package:loginpage/screens/sidebar/navbar.dart';
import 'package:loginpage/screens/userscreen/banner/aptitude.dart';
import 'package:loginpage/screens/userscreen/banner/job.dart';
import 'package:loginpage/screens/userscreen/banner/ug_updates.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  final contributionController = Get.put(ContributionController());

  @override
  void initState() {
    contributionController.getContributionList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidenav(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          surfaceTintColor: Colors.transparent,
          title: SizedBox(
            height: 50,
            child: Image.asset('assets/images/abet.png'),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Chatbot()));
                },
                icon: const Icon(EvaIcons.messageCircleOutline))
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              height: 50,
              width: MediaQuery.of(context).size.width / 1.5,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(60),
                  border: const Border(
                      top: BorderSide(
                        color: Color.fromARGB(255, 243, 223, 38),
                      ),
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 243, 223, 38),
                      ),
                      left: BorderSide(
                        color: Color.fromARGB(255, 243, 223, 38),
                      ),
                      right: BorderSide(
                        color: Color.fromARGB(255, 243, 223, 38),
                      ))),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    EvaIcons.searchOutline,
                    size: 30,
                    color: Color.fromARGB(255, 243, 223, 38),
                  ),
                  border: InputBorder.none,
                  label: Text(
                    "",
                    style: TextStyle(),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 220,
              child: CarouselSlider(
                items: const [
                  ImageSlider(imgUrl: 'assets/images/ug.jpg'),
                  ImageSlider(imgUrl: 'assets/images/aptitude.jpg'),
                  ImageSlider(imgUrl: 'assets/images/job.jpg'),
                ],
                options: CarouselOptions(
                  height: 400.0,
                  autoPlay: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  aspectRatio: 16 / 9,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 1.0,
                ),
              ),
            ),

            Container(
              height: 50,
              margin: const EdgeInsets.only(left: 2, right: 2),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 243, 223, 38),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: CarouselSlider(
                items: [
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const UgUpdates(),
                            ));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'University updates',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AptitudeTest(),
                            ));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Aptitude test',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const JobVacanay(),
                            ));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Job vacancy',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: 100.0,
                  autoPlay: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 1.0,
                ),
              ),
            ),
            const SizedBox(height: 5),
            // Story cards starts here..
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: const StoryCard(
                            //imagePath: 'assets/images/login.jpg',
                            storyCardText: 'java script'),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: const StoryCard(
                            //imagePath: 'assets/images/login.jpg',
                            storyCardText: 'sgdhd'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: const StoryCard(
                            // imagePath: 'assets/images/login.jpg',
                            storyCardText: 'qqqqqqqq'),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: const StoryCard(
                            //imagePath: 'assets/images/login.jpg',
                            storyCardText: 'sdffggg'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: const StoryCard(
                            //imagePath: 'assets/images/login.jpg',
                            storyCardText: 'djgbfn'),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Function to be called when the card is tapped
                          // Navigator.of(context)
                          //     .push(MaterialPageRoute(builder: (context) {
                          //   return LearnAndEntertain();
                          // }));
                        },
                        child: const StoryCard(
                            //imagePath: 'assets/images/login.jpg',
                            storyCardText: 'eeeeee'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class StoryCard extends StatelessWidget {
  // final String imagePath;
  final String storyCardText;

  const StoryCard({
    super.key,
    //required this.imagePath,
    required this.storyCardText,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        width: 150,
        height: 130,
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
          ),
        ),
      ),
    );
  }
}

class ImageSlider extends StatelessWidget {
  final String imgUrl;
  const ImageSlider({
    super.key,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(imgUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
