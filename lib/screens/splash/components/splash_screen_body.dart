import '../components/splash_component.dart';
import 'package:flutter/material.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({Key? key}) : super(key: key);

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  List<Map<String, String>> splashData = [
    {
      'text': 'Welcome to Xyron, let\'s shop',
      'image': 'assets/images/splash_1.png'
    },
    {
      'text': 'We help people connect with store \narround Aryavrat',
      'image': 'assets/images/splash_2.png'
    },
    {
      'text': 'We show the easy way to shop. \nJust stay at home with us',
      'image': 'assets/images/splash_3.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: splashData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData.elementAt(index).values.first.toString(),
                  image: splashData[index]['image'].toString(),
                ),
              ),
            ),
            const Expanded(
              flex: 2,
              child: SizedBox(),
            )
          ],
        ),
      ),
    );
  }
}
