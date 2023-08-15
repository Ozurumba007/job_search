import 'package:flutter/material.dart';

class ListOfJobs extends StatelessWidget {
  final String roleNeeded;
  final String salaryPerMonth;
  final IconData companyIcon;

  const ListOfJobs({
    super.key,
    required this.roleNeeded,
    required this.salaryPerMonth,
    required this.companyIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          companyIcon,
          color: Colors.white,
        ),
      ),
      title: Text(
        roleNeeded,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text('Full Time'),
      trailing: Text(
        salaryPerMonth,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: Colors.grey,
        ),
      ),
    );
  }
}
