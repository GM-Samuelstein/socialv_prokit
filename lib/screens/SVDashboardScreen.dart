import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:socialv_prokit/screens/fragments/SVHomeFragment.dart';
import 'package:socialv_prokit/screens/fragments/SVNotificationFragment.dart';
import 'package:socialv_prokit/screens/fragments/SVSearchFragment.dart';
import 'package:socialv_prokit/utils/SVCommon.dart';
import 'package:socialv_prokit/walletApp/screen/WAMyProfileScreen.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/screens/t12_bottom_sheet.dart';

class SVDashboardScreen extends StatefulWidget {
  @override
  State<SVDashboardScreen> createState() => _SVDashboardScreenState();
}

class _SVDashboardScreenState extends State<SVDashboardScreen> {
  int selectedIndex = 0;

  Widget getFragment() {
    if (selectedIndex == 0) {
      return SVHomeFragment();
    } else if (selectedIndex == 1) {
      return SVSearchFragment();
    } else if (selectedIndex == 2) {
      return T12BottomSheet();
    } else if (selectedIndex == 3) {
      return SVNotificationFragment();
    } else if (selectedIndex == 4) {
      return WAMyProfileScreen();
    }
    return SVHomeFragment();
  }

  @override
  void initState() {
    setStatusBarColor(Colors.transparent);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: svGetScaffoldColor(),
      body: getFragment(),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('images/socialv/icons/ic_Home.png',
                    height: 24,
                    width: 24,
                    fit: BoxFit.cover,
                    color: context.iconColor)
                .paddingTop(12),
            label: '',
            activeIcon: Image.asset('images/socialv/icons/ic_HomeSelected.png',
                    height: 24, width: 24, fit: BoxFit.cover)
                .paddingTop(12),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/socialv/icons/ic_Search.png',
                    height: 24,
                    width: 24,
                    fit: BoxFit.cover,
                    color: context.iconColor)
                .paddingTop(12),
            label: '',
            activeIcon: Image.asset(
                    'images/socialv/icons/ic_SearchSelected.png',
                    height: 24,
                    width: 24,
                    fit: BoxFit.cover)
                .paddingTop(12),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/socialv/icons/ic_Plus.png',
                    height: 24,
                    width: 24,
                    fit: BoxFit.cover,
                    color: context.iconColor)
                .paddingTop(12),
            label: '',
            activeIcon: Image.asset('images/socialv/icons/ic_PlusSelected.png',
                    height: 24, width: 24, fit: BoxFit.cover)
                .paddingTop(12),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/socialv/icons/ic_Notification.png',
                    height: 24,
                    width: 24,
                    fit: BoxFit.cover,
                    color: context.iconColor)
                .paddingTop(12),
            label: '',
            activeIcon: Image.asset(
                    'images/socialv/icons/ic_NotificationSelected.png',
                    height: 24,
                    width: 24,
                    fit: BoxFit.cover)
                .paddingTop(12),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/socialv/icons/ic_User.png',
                    height: 24, width: 24, fit: BoxFit.cover)
                .paddingTop(12),
            label: '',
            activeIcon: Image.asset('images/socialv/icons/ic_UserSelected.png',
                    height: 24, width: 24, fit: BoxFit.cover)
                .paddingTop(12),
          ),
        ],
        onTap: (val) {
          selectedIndex = val;
          setState(() {});
        },
        currentIndex: selectedIndex,
      ),
    );
  }
}
