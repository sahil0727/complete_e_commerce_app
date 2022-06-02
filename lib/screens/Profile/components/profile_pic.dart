import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 115,
      height: 115,
      child: Stack(
        clipBehavior: Clip.none, // for remove overflow --> hide icon button
        fit: StackFit.expand, // for manage user profile photo
        children: [
          CircleAvatar(
            child: Image.asset(
              'assets/images/Profile Image.png',
            ),
          ),
          Positioned(
            right: -10,
            bottom: -5,
            child: SizedBox(
              width: 45,
              height: 45,
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                    side: BorderSide(
                      color: Colors.black.withOpacity(0.35),
                      width: 0.45,
                    ),
                  ),
                ),
                onPressed: () {},
                child: SvgPicture.asset(
                  'assets/icons/Camera Icon.svg',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
