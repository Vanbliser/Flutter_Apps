import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:conclase_tracnine/tracnine_library.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  int _selectedIndex = 0;

  static List<Widget> screens = [
    const HomeDashboard(),
    const TripHomeScreen(),
    const EarningsScreen(),
    const AccountScreen()
  ];

  void onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: KangarooAppStyle.navLabelUnselected,
        currentIndex: _selectedIndex,
        onTap: onNavItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset('assets/icons/icon_home.svg'),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset(
                'assets/icons/icon_trip.svg',
                color: KangarooAppColors.green,
              ),
            ),
            label: 'Trips',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset(
                'assets/icons/icon_earnings.svg',
                color: KangarooAppColors.green,
              ),
            ),
            label: 'Earnings',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset(
                'assets/icons/icon_account.svg',
                color: KangarooAppColors.green,
              ),
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
