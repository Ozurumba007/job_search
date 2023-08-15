import 'package:flutter/material.dart';

import '../component/hot_jobs.dart';
import '../component/list_of_jobs.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // back text
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Back',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 320,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 10.0),
                        child: Text(
                          'Search here....',
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                    const SizedBox(width: 7),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Icon(
                          Icons.filter_list_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hot Job This Week',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Show All',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 15),
                Container(
                  height: 160,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      HotJobs(
                        capitalCountry: ' Vienna, Austria',
                        nameOfCompany: 'Facebook',
                        nameOfJob: ' Senior Flutter Developer',
                        companyIcon: Icons.facebook,
                        companyIconColor: Colors.blue,
                      ),
                      SizedBox(width: 15),
                      HotJobs(
                        capitalCountry: ' Toronto, Canada',
                        nameOfCompany: 'Apple',
                        nameOfJob: ' Lead Product Manager',
                        companyIcon: Icons.apple,
                        companyIconColor: Colors.black,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 15),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent Post',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Show All',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 15),
                ListOfJobs(
                  companyIcon: Icons.currency_bitcoin,
                  roleNeeded: 'Agba Trader',
                  salaryPerMonth: '\$5000',
                ),
                const SizedBox(height: 15),
                // ListOfJobs(),
                // const SizedBox(height: 15),
                // ListOfJobs(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
