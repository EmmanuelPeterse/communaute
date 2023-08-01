import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:timer_count_down/timer_controller.dart';

class HomeController extends GetxController{

TextEditingController textEditingController = TextEditingController();
CountdownController countdownController =CountdownController();

var messageOtp = ''.obs;

@override
  void onInit() async{
    // TODO: implement onInit
    super.onInit();
    print(SmsAutoFill().getAppSignature);

  }


  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    countdownController.start();
    
  }


  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    textEditingController.dispose;
    SmsAutoFill().unregisterListener();
  }

}