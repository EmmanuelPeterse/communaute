
// NEWTWORK SATUT 

import 'package:flutter/material.dart';

class StatutModel {
 late  String wifiStatus;

  StatutModel({
   required this. wifiStatus
  });

  static List<StatutModel> createStat(){
    return [
    StatutModel(wifiStatus: 'Orange wifi Guest'),
    StatutModel(wifiStatus: 'SSID 1 4G'),
    StatutModel(wifiStatus: 'SSID 1 4G'),
  
    ];
  }
}




// OLD DEVICE CONNECRTED
class DeviceConnect {
  late String connectionStatut;
  late String phoneName;
  late String number;
  late String timeOfConnection;
  late String network;
  late String natureOfNetwork;

  DeviceConnect({
    required this.connectionStatut,
    required this.phoneName,
    required this.number,
    required this.timeOfConnection,
    required this.network,
    required this.natureOfNetwork
  });

  static List<DeviceConnect> getConnectedDevice(){
    return [
    
        DeviceConnect(connectionStatut: 'Connecté', phoneName: 'Mobile phone 234', number: '', timeOfConnection: 'Connecté depuis 04 min',
       network: 'Wifi 2.4G', natureOfNetwork: 'Excellent'),

        DeviceConnect(connectionStatut: 'Connecté', phoneName: 'Mobile phone 234', number: '', timeOfConnection: 'Connecté depuis 03h',
       network: 'Wifi 2.4G', natureOfNetwork: 'Excellent'),
        DeviceConnect(connectionStatut: 'Connecté', phoneName: 'Mobile phone 234', number: '', timeOfConnection: 'Connecté depuis 03 min',
       network: 'Wifi 2.4G', natureOfNetwork: 'Excellent'),

    ];

  }

}





// NEW DEVICE CONNECTED

class NewDeviceConnected {
  late String connectionStatut;
  late String phoneName;
  late String number;
  late String timeOfConnection;
  late String network;
  late String natureOfNetwork;

  NewDeviceConnected({
    required this.connectionStatut,
    required this.phoneName,
    required this.number,
    required this.timeOfConnection,
    required this.network,
    required this.natureOfNetwork
  });

  static List<NewDeviceConnected> getNewDeviceConnected(){
    return [
      NewDeviceConnected(connectionStatut: 'Nouvelle Connection', phoneName: 'Mobile phone 234', number: '1.172.456.321', timeOfConnection: 'Connecté depuis 03 min',
       network: 'Wifi 5G', natureOfNetwork: 'Excellent'),


    ];

  }


}


 // OBJECT CONNECTED

  class objetConnected{

    late String deviceName;
    late Color color;
    late Color textColor;

    objetConnected({
      required this.deviceName,
      required this.color,
      required this.textColor,
    });

    static List<objetConnected> getObjectConnected() {
      return [
       objetConnected(deviceName:"Internet", color: const Color(0xFF53BE89), textColor: const Color(0xFF000000)),
       objetConnected(deviceName:"TV", color: const Color(0xFFFE0505), textColor: const Color(0xFF000000) ),
       objetConnected(deviceName:"VOIP", color: const Color(0xFF53BE89),textColor: const Color(0xFF000000) ),
       objetConnected(deviceName:"Smart home", color: const Color(0xFFAAAAAA),textColor: const Color(0xFF999999),), 
      ];

    }

  }



