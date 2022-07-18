import 'dart:convert';

import 'package:http/http.dart' as http;


class ApiHandling {
  static booking()async{
    var url = Uri.parse('https://feedthenationplus.org/laravel_application/public/api/bookings');

    Map body = {
      "e_provider":14,
      "e_service":48,
      "options":{
        "e_service_id":7,
        "option_group_id":2
      },
      "user_id":9,
      "booking_status_id":40,
      "coupon_id":1,
      "taxes":18,
      "start_at":"2022-07-09 06:56:44",
      "ends_at":"2022-07-10 06:56:44",
      "hint":"gdfgdfgdfg",
      "address":{
        "user_id":9,
        "address":"6464 Ebba Camp New Bethmouth MD 39480-1138",
        "latitude":50.42387075000000000,
        "longitude":11.48023555000000000
      },
      "latitude":50.42387075000000000,
      "longitude":11.48023555000000000
    };

    var response = await http.post(
      url,
      headers: {"Content-Type": "application/json", 'Authorization': 'Bearer f699mNmnZPRqsQE8JzKLjexfEXyLnSHQhc6kOmPEPXTgIMHZy1ncYrhfY1Xs',},
      body: json.encode(body),
    );

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

  }
}