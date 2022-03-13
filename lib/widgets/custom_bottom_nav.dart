import 'package:dpost_beta/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  final String imgUrl;
  final bool isSelected;

  const CustomBottomNav({
    Key? key,
    required this.imgUrl,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          imgUrl,
          width: 24,
          height: 24,
          // color: context.read<PageCubit>().state == index
          //     ? kPrimaryColor
          //     : kGreyColor,
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: isSelected ? blueColor : greyColor,
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ],
    );
  }
}
