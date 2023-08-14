import 'package:flutter/material.dart';

class HotJobs extends StatelessWidget {
  const HotJobs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.apple,
                      size: 50,
                    ),
                    Text(
                      'Apple',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          // fontSize: 20,
                          color: Colors.grey),
                    ),
                  ],
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 25,
                ),
              ],
            ),
            SizedBox(height: 18),
            Text(
              'Lead Product Manager',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            Spacer(),
            Row(
              children: [
                Text(
                  '\$2500/m ',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  ' Toronto, Canada',
                  style: TextStyle(
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
