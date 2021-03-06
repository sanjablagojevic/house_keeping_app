import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:house_keeping_app/data.dart';

import '../constant.dart';
import 'detail.dart';

class MyHomePage extends StatelessWidget{

  static const routeName='home-page';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child:Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [gradientStartColor,gradientEndColor],
                begin:Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.3,0.7],
              ),
            ),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(32),
                    child: Column(
                      children: [
                        Text(
                          'HouseKeeping Service',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w900,
                            color: const Color(0xffffffff),
                          ),
                          textAlign: TextAlign.left,
                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: 500,
                    padding: const EdgeInsets.only(left: 32),
                    child: Swiper(
                      itemCount: info.length,
                      itemWidth: MediaQuery.of(context).size.width-2*64,
                      layout: SwiperLayout.STACK,
                      pagination: SwiperPagination(
                        builder: DotSwiperPaginationBuilder(
                          activeSize: 20,
                          space: 8,
                          color: Color(0xFF6CA8F1),
                          activeColor: gradientStartColor,
                        ),
                      ),
                      itemBuilder: (context,index){
                        return InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (context,a,b)=>DetailPage(
                                  info: info[index], key: null,
                                ),
                              ),
                            );
                          },
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  SizedBox(height:130),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(32),
                                    ),
                                    elevation: 8,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(32),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 120),
                                          Text(
                                            info[index].name,
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w900,
                                              color: const Color(0xff47455f),
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            'Services',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                              color: primaryTextColor,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          SizedBox(height: 32),
                                          Row(
                                            children: [
                                              Text(
                                                'Know more',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: secondaryTextColor,
                                                ),
                                              ),
                                              Icon(
                                                Icons.arrow_forward, color:secondaryTextColor,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0,20,0,0),
                                child:SizedBox(
                                height:200,
                                child:Hero(
                                tag:info[index].position,
                                child: Image.asset(
                                  info[index].iconImage,
                                ),
                              ),
                               ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}