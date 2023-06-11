import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'media.dart';
class MyItem extends StatelessWidget {
  const MyItem({super.key, required this.from, required this.to, required this.msg, required this.dateTime, required this.travellerCount, required this.availability});
  final String from; 
  final String to; 
  final String msg; 
  final String dateTime; 
  final String travellerCount; 
  final String availability;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
            height: ResponsiveSize.height(118, context),
            width: ResponsiveSize.width(345, context),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.green, Colors.white],
                stops: [0.1, 0.7],
              ),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
            child: Stack(children: [
              Positioned(
                top: 5,
                left: 5,
                right: 5,
                bottom: 5,
                child: Container(
                  height: ResponsiveSize.height(118, context),
                  width: ResponsiveSize.width(345, context),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                  ),
                  child: Stack(children: [
                    Positioned(
                      top: ResponsiveSize.height(23, context),
                      bottom: ResponsiveSize.height(54, context),
                      right: ResponsiveSize.width(15, context),
                      child: Container(
                        height: ResponsiveSize.height(41, context),
                        width: ResponsiveSize.width(70, context),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(6)),
                        child: const Center(
                          child: Text(
                            "View",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: ResponsiveSize.height(20, context),
                      left: ResponsiveSize.width(15, context),
                      bottom: ResponsiveSize.height(68, context),
                      right: ResponsiveSize.width(165, context),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children:  [
                          Text(
                            from,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 10,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            to,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: ResponsiveSize.height(50, context),
                      left: ResponsiveSize.width(15, context),
                      bottom: ResponsiveSize.height(42, context),
                      child:  Text(
                        "${dateTime}  .  ${travellerCount} Travellers",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Positioned(
                      top: ResponsiveSize.height(84, context),
                      bottom: ResponsiveSize.height(8, context),
                      left: ResponsiveSize.width(23, context),
                      child: Container(
                        height: ResponsiveSize.height(22, context),
                        width: ResponsiveSize.width(76, context),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(6)),
                        child:  Center(
                          child: Text(
                            "${availability}",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ]),
          ),
          Container(
            height: ResponsiveSize.height(64, context),
            width: ResponsiveSize.width(345, context),
            decoration: BoxDecoration(color: Colors.red.shade50),
            child: Stack(children: [
              Positioned(
                  top: ResponsiveSize.height(20, context),
                  left: ResponsiveSize.width(16, context),
                  bottom: ResponsiveSize.height(19, context),
                  child: SvgPicture.asset("asset/evisa.svg",
                      semanticsLabel: 'Evisa')),
              Positioned(
                  top: ResponsiveSize.height(20, context),
                  bottom: ResponsiveSize.height(9, context),
                  left: ResponsiveSize.width(47, context),
                  right: ResponsiveSize.width(110, context),
                  child:  Text(
                    msg,
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                  )),
              Positioned(
                  top: ResponsiveSize.height(22, context),
                  right: ResponsiveSize.width(15, context),
                  bottom: ResponsiveSize.height(25, context),
                  child:  Text(
                    "Add Evisa",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w500),
                  ))
            ]),
          )
    ],); 
  }
}