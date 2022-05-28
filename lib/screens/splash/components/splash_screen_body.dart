import 'package:complete_e_commerce_app/constants.dart';
import 'package:complete_e_commerce_app/size_config.dart';
import '../../../components/default_button.dart';
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
  int currentPage = 0;
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
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                physics: const BouncingScrollPhysics(),
                itemCount: splashData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData.elementAt(index).values.first.toString(),
                  image: splashData[index]['image'].toString(),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: Column(
                  children: [
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    const Spacer(flex: 3),
                    DefaultButton(
                      text: 'Continue',
                      press: () {},
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      width: index == currentPage ? 35 : 6,
      height: 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : const Color(0xffd8d8d8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
