// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const Homepage());
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              child: Image.asset("assets/images/one_day_one_challenge.png"),
            ),
            TodayChallenge(
                title: "Relevez votre défi journalier",
                subtitle:
                    "Chaque défi palpitant vous fera progresser !\n LE DEFI D'AUJOURD'HUI EST: COURRIR 3KM"),
            Text(
              " Mes amis:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            FriendToday(
                title: 'Paul',
                subtitle: 'Distance: 3KM, Time: 16"23"98, Top 200'),
            FriendToday(
                title: 'Christelle ',
                subtitle: 'Distance: 3KM, Time: 18"23"98,  Top 500'),
            FriendToday(
                title: 'Amandine',
                subtitle: 'Distance: 3KM, Time: 18"23"98,  Top 500'),
            FriendToday(
                title: 'Augustin',
                subtitle: 'Distance: 3KM, Time: 15min12sec,  Top 1000'),
            FriendToday(
                title: 'Isaac',
                subtitle: 'Distance: 3KM, Time: 15min12sec,  Top 1000'),
            FriendToday(
                title: 'Nadia',
                subtitle: 'Distance: 3KM, Time: 15min12sec,  Top 1000'),
            FriendToday(
                title: 'Charles-Henri ',
                subtitle: 'Distance: 3KM, Time: 15min12sec,  Top 1000'),
            FriendToday(
                title: 'John ',
                subtitle: 'Distance: 3KM, Time: 15min12sec,  Top 1000'),
          ],
        ),
      ),
    );
  }
}

class TodayChallenge extends StatelessWidget {
  final String title;
  final String subtitle;

  TodayChallenge({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(16.0),
        title: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          // Handle tile tap
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  ChallengeDetailPage(title: title, subtitle: subtitle),
            ),
          );
          print('Challenge Tapped');
        },
      ),
    );
  }
}

class ChallengeDetailPage extends StatelessWidget {
  final String title;
  final String subtitle;

  ChallengeDetailPage({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Challenge Details',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              subtitle,
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}

class FriendToday extends StatelessWidget {
  final String title;
  final String subtitle;

  FriendToday({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(16.0),
        leading: Icon(Icons.person),
        title: Center(
          child: Column(
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        subtitle: Text(
          subtitle,
          textAlign: TextAlign.center,
        ),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          // Handle tile tap
          print('Challenge Tapped');
        },
      ),
    );
  }
}
