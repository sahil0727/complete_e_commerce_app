import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImagePickerOption extends StatelessWidget {
  const ImagePickerOption({
    Key? key,
    required this.image,
    required this.optionText,
  }) : super(key: key);
  final String image;

  final String optionText;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 8),
      decoration: BoxDecoration(
        color: const Color(0xffdadada).withOpacity(0.15),
        borderRadius: BorderRadius.circular(35),
        border: Border.all(color: Colors.black12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(optionText),
          SizedBox(
            width: 35,
            height: 35,
            child: SvgPicture.asset(image),
          ),
        ],
      ),
    );
  }
}
