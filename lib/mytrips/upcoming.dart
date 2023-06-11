import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rehlattask/helper/booking_detail.dart';
import 'package:rehlattask/helper/media.dart';
import 'package:rehlattask/helper/my_item.dart';

class UpcomingScreen extends StatelessWidget {
  const UpcomingScreen({super.key, required this.mlist});
  final List<FlightMyBookings> mlist; 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ListView.builder(
        itemCount: mlist.length,
        itemBuilder: (context,index){
            return MyItem(from: mlist[index].fromCity.toString(), to: mlist[index].toCity.toString(), msg: mlist[index].onlineCheckInMsg.toString(), dateTime: mlist[index].returnDate.toString(), travellerCount: "${mlist[index].adult! + mlist[index].child! + mlist[index].infant!}", availability:mlist[index].departureAirportArb.toString()); 
        }),
    ));
  }
}
