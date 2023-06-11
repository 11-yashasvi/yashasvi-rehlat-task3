import 'package:flutter/material.dart';
import 'package:rehlattask/apis/my_api.dart';
import 'package:rehlattask/helper/booking_detail.dart';
import 'package:rehlattask/helper/my_data.dart';
import 'package:rehlattask/mytrips/cancelled.dart';
import 'package:rehlattask/mytrips/completed.dart';
import 'package:rehlattask/mytrips/upcoming.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BookingDetails? mydata; 
  @override
 void initState()  {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
     
    return SafeArea(
      child: Scaffold(
        body: StreamBuilder<BookingDetails>(
          stream:  MyApi.apiCall(MyData.emailid, MyData.flightOrBooking, MyData.tokenId),
          builder: (context,snapshot){
            switch(snapshot.connectionState){
              case ConnectionState.waiting: 
              case ConnectionState.none: 
              return Center(child: CircularProgressIndicator()); 
              case ConnectionState.active: 
              case ConnectionState.done: 
            var mdata = snapshot.data;

            if(mdata!=null){
              
              // our data is available here. 
          
          List<FlightMyBookings> upcoming=[] ,completed=[],cancelled=[]; 



          for(FlightMyBookings f in mdata.flightMyBookings!){
              if(f.status == "CANC" || f.status == "REFD"){
                cancelled.add(f); 
              }
              else if( f.status == "PTKT" || f.status =="TXNS" || f.status == "TXNF" || f.status == "PRCL" || f.status == "PDGR" || f.status=="TXNH"){
                upcoming.add(f); 
              }
              else if(f.status != "CANC"){
                completed.add(f); 
              }
          }

          return DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: Center(
                child: Stack(children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade200,
                    ),
                  ),
                  const Positioned(
                    top: 0,
                    bottom: 0,
                    left: 5,
                    right: 0,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 15,
                    ),
                  )
                ]),
              ),
              bottom: const TabBar(
                tabs: [
                  Tab(
                    text: "Upcoming",
                  ),
                  Tab(
                    text: "Completed",
                  ),
                  Tab(
                    text: "Cancelled",
                  ),
                ],
                labelColor: Colors.red,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                unselectedLabelColor: Colors.black,
                indicatorColor: Colors.red,
              ),
              title: const Text(
                "My Trips",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            body:  TabBarView(
              children: [
                UpcomingScreen(mlist: upcoming),
                CompletedScreen(mlist: completed),
                CancelledScreen(mlist: cancelled),
              ],
            ),
          ),
        );
           }
            else{
               return Center(child: Text("No data available"),); 
            }
             
            }
          },),
      ) );
  }
}
