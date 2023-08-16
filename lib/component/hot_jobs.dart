import 'package:flutter/material.dart';

class HotJobs extends StatelessWidget {
  final String nameOfCompany;
  final String nameOfJob;
  final String capitalCountry;
  final IconData companyIcon;
  final Color companyIconColor;
  const HotJobs({
    super.key,
    required this.nameOfCompany,
    required this.nameOfJob,
    required this.capitalCountry,
    required this.companyIcon,
    required this.companyIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(
                      companyIcon,
                      size: 50,
                      color: companyIconColor,
                    ),
                    Text(
                      nameOfCompany,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        // fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 25,
                ),
              ],
            ),
            const SizedBox(height: 18),
            Text(
              nameOfJob,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            const Spacer(),
            Row(
              children: [
                const Text(
                  '\$2500/m ',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  capitalCountry,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
