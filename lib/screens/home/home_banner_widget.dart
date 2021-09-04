import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/styles/colors.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomeBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: 150,
        child:
        Carousel(
          boxFit: BoxFit.cover,
          images: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 115,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/banner_background.png",
                      ),
                      fit: BoxFit.cover)),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Image.asset(
                      "assets/images/banner_image.png",
                    ),
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(
                        text: "Fresh Vegetables",
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      AppText(
                        text: "Get Up To 40%  OFF",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 115,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/banner_background.png",
                      ),
                      fit: BoxFit.cover)),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Image.asset(
                      "assets/images/banner_image.png",
                    ),
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(
                        text: "Fresh Vegetables",
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      AppText(
                        text: "Get Up To 40%  OFF",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 115,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/banner_background.png",
                      ),
                      fit: BoxFit.cover)),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Image.asset(
                      "assets/images/banner_image.png",
                    ),
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(
                        text: "Fresh Vegetables",
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      AppText(
                        text: "Get Up To 40%  OFF",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
            ),


          ],
          autoplay: true,
          indicatorBgPadding: 1.0,
          dotSpacing: 12.0,
          dotSize: 5.0,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000),
          dotBgColor: Colors.transparent,
          dotPosition: DotPosition.bottomCenter,
          dotVerticalPadding: 12.0,
          showIndicator: true,
        ),
      );

  }
}
