import 'package:flutter/material.dart';

class CreateListTile extends StatelessWidget {
  final String title;
  final String degree;
  final String duration;

  const CreateListTile({ Key? key, required this.title, required this.degree, required this.duration }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.school_outlined),
      title: Text(title,  style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(degree),
      trailing: Text(duration, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}  