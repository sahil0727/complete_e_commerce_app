import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.erorrs,
  }) : super(key: key);

  final List<String> erorrs;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        erorrs.length,
        (index) => fromErrorText(erorr: erorrs[index]),
      ),
    );
  }

  Row fromErrorText({required String erorr}) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/icons/Error.svg',
          width: getProportionateScreenWidth(14),
          height: getProportionateScreenWidth(14),
        ),
        Text(erorr),
      ],
    );
  }
}
