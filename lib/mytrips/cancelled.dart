import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../helper/booking_detail.dart';
import '../helper/my_item.dart';

class CancelledScreen extends StatelessWidget {
  const CancelledScreen({super.key, required this.mlist});
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
