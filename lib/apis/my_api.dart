import 'dart:convert' ;
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rehlattask/helper/booking_detail.dart';
import 'package:rehlattask/helper/my_data.dart';
class MyApi{

static Stream<BookingDetails> apiCall(String emailId, String flightOrHotel, String tokenId) async* {
  final response = await http.post(
    Uri.parse('${MyData.Base_Url}account/getbookingsforapp'),
     headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'EmailId': emailId,
      'FlightOrHotel': flightOrHotel,
      'tokenId': tokenId
    }),
  );
  
  if (response.statusCode == 201 || response.statusCode== 200) {
    var myobj =  BookingDetails.fromJson(jsonDecode(response.body));
    yield myobj; 
  } else {
    throw Exception('Failed to fetch data.');
  }
}
}