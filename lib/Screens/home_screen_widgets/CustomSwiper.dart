import 'package:dalilko/constant/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CustomSwiper extends StatelessWidget {
  final String imagePath;

  final String title;
  final String location;

  CustomSwiper({this.imagePath, this.title, this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.purple,
        borderRadius: BorderRadius.circular(10),
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.3,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            imagePath,
                          ),
                          fit: BoxFit.fill
                        ),
                      ),
                    ),
                    Container(

                        color: Color.fromRGBO(0, 0, 0, 0.19)),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      title,
                      style: TextStyle(
                        color: AppColors.secondaryColor,
                        fontFamily: 'AllertaStencil',
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Icon(
                          Icons.location_on_outlined,
                          color: AppColors.secondaryColor,
                          size: 15,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          location,
                          style: TextStyle(
                            color: AppColors.secondaryColor,
                            fontFamily: 'OpenSans',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
        itemCount: 10,
        viewportFraction: 0.8,
        scale: 0.8,
      ),
    );
  }
}
