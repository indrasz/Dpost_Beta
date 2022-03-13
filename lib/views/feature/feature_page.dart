import 'package:dpost_beta/shared/theme.dart';
import 'package:dpost_beta/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class FeaturePage extends StatelessWidget {
  const FeaturePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget imageFeature() {
      return Container(
        width: 290,
        height: 290,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg_splash1.png'),
          ),
        ),
      );
    }

    Widget titleFeature() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Text(
          'Judul Fitur 1',
          style: blackTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget subtitleFeature() {
      return Container(
        margin: EdgeInsets.only(top: 10, bottom: 50),
        child: Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Volutpat sit ornare diam suspendisse leo sed dolor. Tristique.',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: regular,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget buttonFeature() {
      return CustomButton(
        width: 365,
        margin: EdgeInsets.only(top: 50.0),
        title: 'Continue', 
        onPressed: () {

        }
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            imageFeature(),
            titleFeature(),
            subtitleFeature(),
            buttonFeature(),
          ],
        ),
      ),
    );
  }
}
