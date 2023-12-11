import 'package:dots_indicator/dots_indicator.dart';
import 'package:financial_piggy_bank/main.dart';
import 'package:financial_piggy_bank/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  ValueNotifier<int> page = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF171030),
      body: Column(children: [
        if (page.value == 0)
          Expanded(child: Image.asset('assets/onBoarding-image1.png')),
        if (page.value == 1)
          Expanded(child: Image.asset('assets/onBoarding-image2.png')),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 89, 11, 11),
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xFF28233E),
                borderRadius: BorderRadius.circular(11)),
            child: Column(children: [
              if (page.value == 0)
                const Padding(
                  padding: EdgeInsets.only(bottom: 12, top: 38),
                  child: Text(
                    'Let\'s Achieve Financial Success Together',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              if (page.value == 1)
                const Padding(
                  padding: EdgeInsets.only(bottom: 12, top: 38),
                  child: Text(
                    'We value your feedback',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              if (page.value == 1)
                const Padding(
                  padding: EdgeInsets.only(bottom: 33, left: 20, right: 20),
                  child: Text(
                    'Every day we are getting better due to your ratings and reviews — that helps us protect your accounts.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontSize: 13,
                        color: Color(0xFF928EB0),
                        fontWeight: FontWeight.w400),
                  ),
                ),
              if (page.value == 0)
                const Padding(
                  padding: EdgeInsets.only(bottom: 33),
                  child: Text(
                    'Become a financial expert on the go! Bid farewell to financial uncertainty!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontSize: 13,
                        color: Color(0xFF928EB0),
                        fontWeight: FontWeight.w400),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {
                    if (page.value == 0) {
                      page.value = 1;
                      setState(() {});
                    } else if (page.value == 1) {
                      Navigator.of(context).push(
                        MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const MyHomePage()),
                      );
                    }
                  },
                  child: Container(
                      width: double.infinity,
                      height: 60,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [Color(0xFF770ea7), Color(0xFF8600f2)]),
                          borderRadius: BorderRadius.circular(8)),
                      child: const Text(
                        'Continue',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.w800),
                      )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Text(
                  'Terms of use  |  Privacy Policy',
                  style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: 10,
                      color: Color(0xFF8C9297),
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
            ]),
          ),
        )
      ]),
    );
  }

  Widget getStars() {
    List<Widget> list = [];
    for (var i = 0; i < 5; i++) {
      list.add(const Icon(
        Icons.star,
        color: Colors.yellow,
        size: 16,
      ));
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: list,
    );
  }
}
