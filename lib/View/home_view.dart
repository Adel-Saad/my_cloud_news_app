import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomeView extends StatelessWidget {
  static String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    double _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      padding: EdgeInsets.all(08),
      child: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: _screenHeight * 0.03),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'News',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Redressed-Regular',
                      ),
                    ),
                    TextSpan(
                      text: 'Cloud',
                      style: TextStyle(
                          color: Colors.yellow,
                          backgroundColor: Colors.grey,
                          fontFamily: 'Redressed-Regular',
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: _screenHeight * 0.03),
              SizedBox(
                height: _screenHeight * 0.30,
                width: _screenWidth * 0.90,
                child: Carousel(
                  boxFit: BoxFit.cover,
                  images: [
                    ExactAssetImage('assets/images/img1.jpg'),
                    ExactAssetImage('assets/images/img2.jpeg'),
                    ExactAssetImage('assets/images/img3.jpg'),
                    ExactAssetImage('assets/images/img4.png'),
                  ],
                ),
              ),
              SizedBox(height: _screenHeight * 0.01),
              Container(
                height: _screenHeight * 0.45,
                child: Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: _screenHeight * 0.25,
                          width: _screenWidth * 0.90,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/img1.jpg'),
                            ),
                          ),
                        ),
                        SizedBox(height: _screenHeight * 0.01),
                        Text(
                          'Syria: The scars left by a school bombing ... ',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: _screenHeight * 0.02),
                        Text(
                          'Syria: The scars left by a school bombing, The scars left by a school bombing',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: _screenHeight * 0.01),
              Container(
                height: _screenHeight * 0.45,
                child: Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: _screenHeight * 0.25,
                          width: _screenWidth * 0.90,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/img1.jpg'),
                            ),
                          ),
                        ),
                        SizedBox(height: _screenHeight * 0.01),
                        Text(
                          'Syria: The scars left by a school bombing ... ',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: _screenHeight * 0.02),
                        Text(
                          'Syria: The scars left by a school bombing, The scars left by a school bombing',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
