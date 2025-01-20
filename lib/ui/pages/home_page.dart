import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      bottomNavigationBar: BottomAppBar(
        child: BottomNavigationBar(
        selectedItemColor: blueColor,
        unselectedItemColor: blackColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: blueTextStyle.copyWith(
          fontSize: 10,
          fontWeight: medium,
        ),
        unselectedLabelStyle: blackTextStyle.copyWith(
          fontSize: 10,
          fontWeight: medium,
        ),
        items: [
        BottomNavigationBarItem
        (
          icon: Image.asset('asset/ic_overview.png',
          width: 20,
          color: blueColor,
          ), 
          label: 'Overview'
        ),
        BottomNavigationBarItem
        (
          icon: Image.asset('asset/ic_history.png',
          width: 20,
          ), 
          label: 'History'
        ),
        BottomNavigationBarItem
        (
          icon: Image.asset('asset/ic_statistic.png',
          width: 20,
          ), 
          label: 'Statistic'
        ),
        BottomNavigationBarItem
        (
          icon: Image.asset('asset/ic_reward.png',
          width: 20,
          ), 
          label: 'Reward'
        ),
      ],
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: purpleColor,
        child: Image.asset('asset/ic_plus_circle.png',
        width: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}