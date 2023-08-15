import 'package:flutter/material.dart';

class ListOfJobs extends StatelessWidget {
  const ListOfJobs({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          Icons.facebook,
          color: Colors.white,
        ),
      ),
      title: Text(
        'UI/UX Designer',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text('Full Time'),
      trailing: Text(
        '\$4500/m',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: Colors.grey,
        ),
      ),
    );
  }
}
