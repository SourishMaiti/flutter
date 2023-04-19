import 'package:flutter/cupertino.dart';

class Users with ChangeNotifier{
  final String firstanme;
  final String lastname;
  final String status;
  final String email;
  final int ph;

  final String loc;
  Users({required this.email,required this.firstanme,required this.lastname,required this.loc,required this.ph,required this.status,});
}