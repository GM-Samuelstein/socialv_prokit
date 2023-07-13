import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:socialv_prokit/screens/auth/screens/SVSignInScreen.dart';
import 'package:socialv_prokit/themes/theme15_pet_adoption/screens/T15walkthrough_screen.dart';

class SVSplashScreen extends StatefulWidget {
  const SVSplashScreen({Key? key}) : super(key: key);

  @override
  State<SVSplashScreen> createState() => _SVSplashScreenState();
}

class _SVSplashScreenState extends State<SVSplashScreen> {
  @override
  void initState() {
    init();
    super.initState();
  }

  Future<void> init() async {
    setStatusBarColor(Colors.transparent);
    await 10.seconds.delay;
    await Walkthrough().launch(context, isNewTask: true);
    finish(context);
    SVSignInScreen().launch(context, isNewTask: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Image.asset(
      'images/socialv/alarrt-logo.png',
      width: 300,
      height: 150,
    )));
  }
}

// Stack(
//         alignment: Alignment.center,
//         children: [
//           Image.asset(
//             'images/socialv/svSplashImage.jpg',
//             height: context.height(),
//             width: context.width(),
//             fit: BoxFit.fill,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset('images/socialv/svAppIcon.png',
//                   height: 50,
//                   width: 52,
//                   fit: BoxFit.cover,
//                   color: Colors.white),
//               8.width,
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("ALARRT!",
//                       style: primaryTextStyle(
//                           color: Colors.white,
//                           letterSpacing: 6.0,
//                           size: 40,
//                           weight: FontWeight.w900)),
//                   Text("Stay Informed...",
//                       style: primaryTextStyle(
//                           color: Colors.white,
//                           letterSpacing: 4.0,
//                           size: 20,
//                           weight: FontWeight.normal)),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
