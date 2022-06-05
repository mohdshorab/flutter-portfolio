import 'package:basic_portfolio_app/widgets/createListTile.dart';
import 'package:basic_portfolio_app/widgets/createTile4Portfolio.dart';
import 'package:flutter/material.dart';

class PortFolioPage extends StatelessWidget {
  const PortFolioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.description_sharp),
        title: const Text('Shorab\'s Protfolio'),
        actions: [MaterialButton(onPressed: () {
           Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        ],
      ),
      body: Container(
        color: Colors.cyan.shade100,
        child: ListView(
          children: [
            Stack(
              children: [
                SizedBox(
                    height: 150,
                    child: Image.network(
                      'https://images.unsplash.com/photo-1602992708529-c9fdb12905c9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )),
                Container(
                  height: 200,
                  alignment: Alignment.bottomLeft,
                  child: const CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.blue,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('lib/assets/profile.jpg'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 100,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.0, top: 8),
                    child: Text(
                      'Mohd Shorab',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 20),
                        child: Text(
                          'Software Engineer Trainee\n @Kellton Tech Solutions Ltd',
                          style: TextStyle(
                              fontSize: 12, color: Colors.grey.shade700),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 4.0),
                        child: Text(
                          'South Delhi, Delhi, India',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Creating tiles
            Card(
              color: Colors.lightBlue.shade50,
              shadowColor: Colors.blue,
              elevation: 20.0,
              child: Column(
                children: [
                  const Text(
                    'About',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    '''
I am a software developer and currently work for a leading information technology and outsourcing organization. I am skilled in Dart, FLutter, Java, DBMS, Web Technologies and AWS.

I have worked with both web-based, multi-threaded applications as well as front-end development using the latest web technologies.
''',
                    style: TextStyle(color: Colors.grey.shade700),
                  )
                ],
              ),
            ),
            Card(
              color: Colors.lightBlue.shade50,
              shadowColor: Colors.blue,
              elevation: 20.0,
              child: Column(
                children: const [
                  Text(
                    'Experience',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CreateTile4PortFolio(
                      heading: 'Software Engineer Trainee',
                      subHeading: 'KelltonTech Solutions',
                      timePeriod: 'Feb 2022 - Present - 4 mos',
                      address: 'Phase III, Udyog Vihar',
                      details: '''
Produce specifications and determine operational feasibility. 
Integrate software components into a fully functional software system.'''),
                  CreateTile4PortFolio(
                      heading: 'Website Management',
                      subHeading: 'Samar Al Kuwait Co WLL',
                      timePeriod: 'Nov 2021 - Jan 2022 - 3 mos',
                      address: 'Kuwait City, Kuwait',
                      details: '''
Website Management - Customized a WordPress theme with HTML, CSS modifications.
Use Photoshop to edit pictures for display on company website.
Produced and managed web content for new products and ongoing projects.'''),
                ],
              ),
            ),

            Card(
              color: Colors.lightBlue.shade50,
              shadowColor: Colors.blue,
              elevation: 20.0,
              child: 
              Column(
                children: const [
                  Text('Education', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  CreateListTile(title: 'SGT University', degree: 'BTECH - CSE', duration: '2018 - 2022'),
                  CreateListTile(title: 'Guru Harkishan Int\' Public School', degree: 'Higher Secondary', duration: '2017 - 2018'),
                  CreateListTile(title: 'Guru Harkishan Int\' Public School', degree: 'Matriculation', duration: '2015 - 2016'),
                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}
