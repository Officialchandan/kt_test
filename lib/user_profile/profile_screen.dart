import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constant/colors.dart';
import 'profile_widget/sp_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Text(
              "Chandan Vishwakarma",
              style: primaryTextColor,
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: CircleAvatar(
                backgroundColor: icanColor,
                radius: 10,
                child: const Text("1", style: TextStyle(fontSize: 10)),
              ),
            ),
            FaIcon(
              Icons.arrow_drop_down,
              color: icanColor,
              size: 27,
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: CircleAvatar(
              child: FaIcon(
                Icons.person_add_alt,
                color: icanColor,
                size: 20,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: 460.0,
            child: Stack(
              children: <Widget>[
                Container(
                  height: 180.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/cover.jpg'),
                        fit: BoxFit.cover),
                    // borderRadius: BorderRadius.circular(10.0)
                  ),
                ),
                Positioned(
                  right: 6,
                  top: 85,
                  child: Column(
                    children: [
                      const CircleAvatar(
                          radius: 18,
                          child: FaIcon(Icons.emoji_emotions_outlined)),
                      const SizedBox(
                        height: 4,
                      ),
                      CircleAvatar(
                          backgroundColor: Colors.blueGrey,
                          radius: 18,
                          child: FaIcon(
                            Icons.camera_alt,
                            color: icanColor,
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            //   backgroundImage: AssetImage('assets/Mike Tyler.jpg'),
                            radius: 90.0,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.blue, width: 4),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(80))),
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/Mike Tyler.jpg'),
                                    radius: 80.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            bottom: 5,
                            right: 11,
                            child: CircleAvatar(
                              radius: 17.0,
                              backgroundColor:
                                  Color.fromARGB(255, 218, 209, 209),
                              child: FaIcon(Icons.camera_alt),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      const Text('Chandan Vishwakarma',
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20.0),
                      const Text(
                          'Flutter Developer...😉\n!\nlike to help businesses to develop iOS and Andriod Apps!\n',
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            height: 40.0,
                            width: w - 80,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                FaIcon(Icons.add_circle),
                                SizedBox(
                                  width: 2,
                                ),
                                Text('Add to Story',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0)),
                              ],
                            )),
                          ),
                          Container(
                            height: 40.0,
                            width: 45.0,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(5.0)),
                            child: const Icon(Icons.more_horiz),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            child: Divider(height: 40.0),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: const <Widget>[
                    Icon(Icons.home, color: Colors.grey, size: 30.0),
                    SizedBox(width: 10.0),
                    Text('Lives in New York', style: TextStyle(fontSize: 16.0))
                  ],
                ),
                const SizedBox(height: 15.0),
                Row(
                  children: const <Widget>[
                    Icon(Icons.location_on, color: Colors.grey, size: 30.0),
                    SizedBox(width: 10.0),
                    Text('From New York', style: TextStyle(fontSize: 16.0))
                  ],
                ),
                const SizedBox(height: 15.0),
                Row(
                  children: const <Widget>[
                    Icon(Icons.more_horiz, color: Colors.grey, size: 30.0),
                    SizedBox(width: 10.0),
                    Text('See your About Info',
                        style: TextStyle(fontSize: 16.0))
                  ],
                ),
                const SizedBox(height: 15.0),
                Container(
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: const Center(
                      child: Text('Edit Public Details',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0))),
                ),
              ],
            ),
          ),
          const Divider(height: 40.0),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text('Friends',
                            style: TextStyle(
                                fontSize: 22.0, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 6.0),
                        Text('536 friends',
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.grey[800])),
                      ],
                    ),
                    const Text('Find Friends',
                        style: TextStyle(fontSize: 16.0, color: Colors.blue)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: h / 7.6,
                            width: w / 3 - 20,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage('assets/samantha.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          const SizedBox(height: 5.0),
                          const Text('Samantha',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: w / 3 - 20,
                            width: w / 3 - 20,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage('assets/andrew.jpg')),
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          const SizedBox(height: 5.0),
                          const Text('Andrew',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: w / 3 - 20,
                            width: w / 3 - 20,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage('assets/Sam Wilson.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          const SizedBox(height: 5.0),
                          const Text('Sam Wilson',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: w / 3 - 20,
                            width: w / 3 - 20,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage('assets/steven.jpg')),
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          const SizedBox(height: 5.0),
                          const Text('Steven',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: w / 3 - 20,
                            width: w / 3 - 20,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage('assets/greg.jpg')),
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          const SizedBox(height: 5.0),
                          const Text('Greg',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: w / 3 - 20,
                            width: w / 3 - 20,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage('assets/andy.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          const SizedBox(height: 5.0),
                          const Text('Andy',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15.0),
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: const Center(
                      child: Text('See All Friends',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0))),
                ),
              ],
            ),
          ),
          SeparatorWidget(w: w),
        ],
      )),
    );
  }
}
