import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide CarouselController;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:pinput/pinput.dart';

class MyCarousel extends StatefulWidget {
  @override
  _MyCarouselState createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {
  double selectedValue = 20;
  String? selectedIndex;
  List<String> screenList = ["Pakistan", "India", "Canada"];
  bool isSwitchOn = false;
  int currentIndex = 0;

  final List<String> imageList = [
    "assets/images/onBoarding1.png",
    "assets/images/onBoarding2.png",
    "assets/images/onBoarding3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Carousel Slider")),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 200,
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 0.8,

              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            items: imageList.map((item) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(item),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }).toList(),
          ),

          SizedBox(height: 15),

          /// 🔢 Number Indicator (1/3)
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "${currentIndex + 1}/${imageList.length}",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Card(
            color: isSwitchOn ? Colors.orangeAccent: Colors.green,
            child: ListTile(
              leading: Icon(isSwitchOn ? Icons.notifications_active : Icons.notifications_none),
              title: Text("Notifications"),
              subtitle: Text(isSwitchOn ? "ON" :"OFF"),
              trailing: CupertinoSwitch(
                activeTrackColor: Colors.blue,
                  inactiveTrackColor: Colors.black,
                  inactiveThumbColor: Colors.red,
                  thumbColor: Colors.yellow,
                  value: isSwitchOn,
                  onChanged: (value){
                    setState(() {
                      isSwitchOn = value;
                    });
                  }),
            ),
          ),
          isSwitchOn ? Column(
            children: [
              Text("On"),
              Text("On"),
              Text("On"),
              Text("On"),
              Text("On"),
              Text("On"),
              Text("On"),
              Text("On"),
              Text("On"),
              Text("On"),
            ],
          ) : Text("No Data Found"),

          Pinput(
            length: 6,
            showCursor: true,
            onCompleted: (value){
              print(value);
            },
            defaultPinTheme: PinTheme(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black)
              ),
              textStyle: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25,
                color: Colors.red
              )
            ),
          ),
          DropdownButton(
            hint: Text("Select Country"),
            value: selectedIndex,
              items: screenList.map((country){
                return DropdownMenuItem(
                  value: country,
                    child: Text(country));
              }).toList(),
              onChanged: (value){
              setState(() {
                selectedIndex = value;
              });
              }),
          Slider(
              value: selectedValue,
              min: 0,
              max: 100,
              divisions: 100,
              label: selectedValue.round().toString(),
              onChanged: (val){
                setState(() {
                  selectedValue = val;
                });
              })
        ],
      ),
    );
  }
}