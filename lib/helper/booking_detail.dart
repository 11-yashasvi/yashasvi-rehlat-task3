class BookingDetails {
  List<FlightMyBookings>? flightMyBookings;
  Null? hotelMyBookings;
  Null? kuwaitBusMyBookings;
  Null? cabMyBookings;
  Null? saptcoMyBookings;
  Null? saudiRailMyBookings;
  Null? chaletMyBookings;
  int? id;
  Null? createdBy;
  Null? updatedBy;
  String? createdOn;
  String? updatedOn;
  Null? tokenId;
  Null? apiStatus;
  Null? apiMessage;

  BookingDetails(
      {this.flightMyBookings,
      this.hotelMyBookings,
      this.kuwaitBusMyBookings,
      this.cabMyBookings,
      this.saptcoMyBookings,
      this.saudiRailMyBookings,
      this.chaletMyBookings,
      this.id,
      this.createdBy,
      this.updatedBy,
      this.createdOn,
      this.updatedOn,
      this.tokenId,
      this.apiStatus,
      this.apiMessage});

  BookingDetails.fromJson(Map<String, dynamic> json) {
    if (json['flight_MyBookings'] != null) {
      flightMyBookings = <FlightMyBookings>[];
      json['flight_MyBookings'].forEach((v) {
        flightMyBookings!.add(new FlightMyBookings.fromJson(v));
      });
    }
    hotelMyBookings = json['hotel_MyBookings'];
    kuwaitBusMyBookings = json['kuwaitBus_MyBookings'];
    cabMyBookings = json['cab_MyBookings'];
    saptcoMyBookings = json['saptco_MyBookings'];
    saudiRailMyBookings = json['saudiRail_MyBookings'];
    chaletMyBookings = json['chalet_MyBookings'];
    id = json['id'];
    createdBy = json['createdBy'];
    updatedBy = json['updatedBy'];
    createdOn = json['createdOn'];
    updatedOn = json['updatedOn'];
    tokenId = json['tokenId'];
    apiStatus = json['apiStatus'];
    apiMessage = json['apiMessage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.flightMyBookings != null) {
      data['flight_MyBookings'] =
          this.flightMyBookings!.map((v) => v.toJson()).toList();
    }
    data['hotel_MyBookings'] = this.hotelMyBookings;
    data['kuwaitBus_MyBookings'] = this.kuwaitBusMyBookings;
    data['cab_MyBookings'] = this.cabMyBookings;
    data['saptco_MyBookings'] = this.saptcoMyBookings;
    data['saudiRail_MyBookings'] = this.saudiRailMyBookings;
    data['chalet_MyBookings'] = this.chaletMyBookings;
    data['id'] = this.id;
    data['createdBy'] = this.createdBy;
    data['updatedBy'] = this.updatedBy;
    data['createdOn'] = this.createdOn;
    data['updatedOn'] = this.updatedOn;
    data['tokenId'] = this.tokenId;
    data['apiStatus'] = this.apiStatus;
    data['apiMessage'] = this.apiMessage;
    return data;
  }
}

class FlightMyBookings {
  int? id;
  String? pnr;
  String? fromCity;
  String? toCity;
  String? departDate;
  String? returnDate;
  String? tripType;
  String? status;
  String? airlineName;
  String? departureAirport;
  String? arrivalAirport;
  String? departureCity;
  String? arrivalCity;
  String? airlineNumber;
  String? departuretime;
  String? arrivaltime;
  String? journeyTime;
  String? dayChange;
  String? tripArrivalDate;
  String? returnDepartureTime;
  String? returnArrivalTime;
  String? returnTripArrivalDate;
  Null? boardingPassFilePath;
  Null? onlineCheckInMsg;
  String? serviceCategory;
  String? fromCityArb;
  String? tocityArb;
  String? departureAirportArb;
  String? arrivalAirportArb;
  String? departureCityArb;
  String? arrivalCityArb;
  String? airlineNameArb;
  String? supplierId;
  bool? showPnrExpiry;
  String? pnrExpiryminutes;
  String? platingCarrier;
  String? createdOn;
  int? adult;
  int? child;
  int? infant;
  String? cabinClass;
  String? cabinClassFullName;
  String? cabinClassFullNameArb;
  String? cabinClassFullNameFrn;

  FlightMyBookings(
      {this.id,
      this.pnr,
      this.fromCity,
      this.toCity,
      this.departDate,
      this.returnDate,
      this.tripType,
      this.status,
      this.airlineName,
      this.departureAirport,
      this.arrivalAirport,
      this.departureCity,
      this.arrivalCity,
      this.airlineNumber,
      this.departuretime,
      this.arrivaltime,
      this.journeyTime,
      this.dayChange,
      this.tripArrivalDate,
      this.returnDepartureTime,
      this.returnArrivalTime,
      this.returnTripArrivalDate,
      this.boardingPassFilePath,
      this.onlineCheckInMsg,
      this.serviceCategory,
      this.fromCityArb,
      this.tocityArb,
      this.departureAirportArb,
      this.arrivalAirportArb,
      this.departureCityArb,
      this.arrivalCityArb,
      this.airlineNameArb,
      this.supplierId,
      this.showPnrExpiry,
      this.pnrExpiryminutes,
      this.platingCarrier,
      this.createdOn,
      this.adult,
      this.child,
      this.infant,
      this.cabinClass,
      this.cabinClassFullName,
      this.cabinClassFullNameArb,
      this.cabinClassFullNameFrn});

  FlightMyBookings.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    pnr = json['pnr'];
    fromCity = json['fromCity'];
    toCity = json['toCity'];
    departDate = json['departDate'];
    returnDate = json['returnDate'];
    tripType = json['tripType'];
    status = json['status'];
    airlineName = json['airlineName'];
    departureAirport = json['departureAirport'];
    arrivalAirport = json['arrivalAirport'];
    departureCity = json['departureCity'];
    arrivalCity = json['arrivalCity'];
    airlineNumber = json['airlineNumber'];
    departuretime = json['departuretime'];
    arrivaltime = json['arrivaltime'];
    journeyTime = json['journeyTime'];
    dayChange = json['dayChange'];
    tripArrivalDate = json['tripArrivalDate'];
    returnDepartureTime = json['returnDepartureTime'];
    returnArrivalTime = json['returnArrivalTime'];
    returnTripArrivalDate = json['returnTripArrivalDate'];
    boardingPassFilePath = json['boardingPassFilePath'];
    onlineCheckInMsg = json['onlineCheckInMsg'];
    serviceCategory = json['serviceCategory'];
    fromCityArb = json['fromCity_Arb'];
    tocityArb = json['tocity_Arb'];
    departureAirportArb = json['departureAirport_Arb'];
    arrivalAirportArb = json['arrivalAirport_Arb'];
    departureCityArb = json['departureCity_Arb'];
    arrivalCityArb = json['arrivalCity_Arb'];
    airlineNameArb = json['airlineName_Arb'];
    supplierId = json['supplierId'];
    showPnrExpiry = json['showPnrExpiry'];
    pnrExpiryminutes = json['pnrExpiryminutes'];
    platingCarrier = json['platingCarrier'];
    createdOn = json['createdOn'];
    adult = json['adult'];
    child = json['child'];
    infant = json['infant'];
    cabinClass = json['cabinClass'];
    cabinClassFullName = json['cabinClassFullName'];
    cabinClassFullNameArb = json['cabinClassFullNameArb'];
    cabinClassFullNameFrn = json['cabinClassFullNameFrn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['pnr'] = this.pnr;
    data['fromCity'] = this.fromCity;
    data['toCity'] = this.toCity;
    data['departDate'] = this.departDate;
    data['returnDate'] = this.returnDate;
    data['tripType'] = this.tripType;
    data['status'] = this.status;
    data['airlineName'] = this.airlineName;
    data['departureAirport'] = this.departureAirport;
    data['arrivalAirport'] = this.arrivalAirport;
    data['departureCity'] = this.departureCity;
    data['arrivalCity'] = this.arrivalCity;
    data['airlineNumber'] = this.airlineNumber;
    data['departuretime'] = this.departuretime;
    data['arrivaltime'] = this.arrivaltime;
    data['journeyTime'] = this.journeyTime;
    data['dayChange'] = this.dayChange;
    data['tripArrivalDate'] = this.tripArrivalDate;
    data['returnDepartureTime'] = this.returnDepartureTime;
    data['returnArrivalTime'] = this.returnArrivalTime;
    data['returnTripArrivalDate'] = this.returnTripArrivalDate;
    data['boardingPassFilePath'] = this.boardingPassFilePath;
    data['onlineCheckInMsg'] = this.onlineCheckInMsg;
    data['serviceCategory'] = this.serviceCategory;
    data['fromCity_Arb'] = this.fromCityArb;
    data['tocity_Arb'] = this.tocityArb;
    data['departureAirport_Arb'] = this.departureAirportArb;
    data['arrivalAirport_Arb'] = this.arrivalAirportArb;
    data['departureCity_Arb'] = this.departureCityArb;
    data['arrivalCity_Arb'] = this.arrivalCityArb;
    data['airlineName_Arb'] = this.airlineNameArb;
    data['supplierId'] = this.supplierId;
    data['showPnrExpiry'] = this.showPnrExpiry;
    data['pnrExpiryminutes'] = this.pnrExpiryminutes;
    data['platingCarrier'] = this.platingCarrier;
    data['createdOn'] = this.createdOn;
    data['adult'] = this.adult;
    data['child'] = this.child;
    data['infant'] = this.infant;
    data['cabinClass'] = this.cabinClass;
    data['cabinClassFullName'] = this.cabinClassFullName;
    data['cabinClassFullNameArb'] = this.cabinClassFullNameArb;
    data['cabinClassFullNameFrn'] = this.cabinClassFullNameFrn;
    return data;
  }
}
