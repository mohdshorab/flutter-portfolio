import 'package:flutter/material.dart';

class CreateTile4PortFolio extends StatelessWidget {
  final String heading;
  final String subHeading;
  final String timePeriod;
  final String address;
  final String details;
  const CreateTile4PortFolio({ Key? key, required this.heading, required this.subHeading, required this.timePeriod, required this.address, required this.details }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.blue,
      elevation: 20,
      child: Container(
        color: Colors.lightBlue.shade50,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(heading, style: const TextStyle(fontWeight: FontWeight.bold),),
              Text(subHeading, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(timePeriod),
              Text(address),
              Text(details)
            ],
          ),
        ),
      ),
            
    );
  }
}