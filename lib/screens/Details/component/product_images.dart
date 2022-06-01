import 'package:flutter/material.dart';

import '../../../Models/product.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class ProductsImages extends StatefulWidget {
  const ProductsImages({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<ProductsImages> createState() => _ProductsImagesState();
}

class _ProductsImagesState extends State<ProductsImages> {
  int selectImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(240),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(
              widget.product.images.elementAt(selectImage),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              widget.product.images.length,
              (index) => buildSmallPreview(index: index),
            )
          ],
        ),
      ],
    );
  }

  Widget buildSmallPreview({required int index}) {
    return GestureDetector(
      onTap: () {
        // log('$index');
        setState(() {
          selectImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: getProportionateScreenWidth(15)),
        padding: EdgeInsets.all(getProportionateScreenWidth(5)),
        width: getProportionateScreenWidth(58),
        height: getProportionateScreenWidth(58),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(
            color: index == selectImage ? kPrimaryColor : Colors.black12,
            width: index == selectImage ? 0.75 : 0.85,
          ),
        ),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
