import 'package:flutter/material.dart';
import 'package:saud_frontend/models/onBoardingModel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageviewDemo extends StatefulWidget {
  const PageviewDemo({super.key});

  @override
  State<PageviewDemo> createState() => _PageviewDemoState();
}

class _PageviewDemoState extends State<PageviewDemo> {
  PageController pageController = PageController();
  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(image: "assets/images/onBoarding1.png", title: "Request Ride"),
    OnBoardingModel(image: "assets/images/onBoarding2.png", title: "Confirm Ride"),
    OnBoardingModel(image: "assets/images/onBoarding3.png", title: "Track Ride"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemCount: onBoardingList.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Image.asset(onBoardingList[index].image.toString()),
                    Text(onBoardingList[index].title.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30
                    ),),
                  ],
                );
              },),
          ),
          SmoothPageIndicator(
              controller: pageController,  // PageController
              count:  onBoardingList.length,
              effect:  JumpingDotEffect(),  // your preferred effect
              onDotClicked: (index){
              }
          ),
          ElevatedButton(onPressed: (){}, child: Text("Get Started"))
        ],
      ),
    );
  }
}
