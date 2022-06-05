import 'package:basic_portfolio_app/screens/portfolio_page.dart';
import 'package:basic_portfolio_app/widgets/mainPageTiles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 20.0,
        leading: const Icon(
          Icons.home,
          color: Colors.black,
        ),
        title: const Text(
          'About Me',
          style: TextStyle(
              color: Colors.black, fontSize: 22.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 0,
          ),
          Stack(
            children: [
              SizedBox(
                  height: 180,
                  child: Image.network(
                    'https://images.unsplash.com/photo-1602992708529-c9fdb12905c9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  )),
              Container(
                height: 230,
                alignment: Alignment.bottomCenter,
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
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
              'Mohd Shorab',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 1.0, bottom: 20.0),
            child: Text(
              '< Flutter Developer >',
              style: GoogleFonts.ptMono(
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            children: const [
              createDetailsRow(
                  iconData: Icons.mail, txt: 'mohdshorab474@gmail.com'),
              createDetailsRow(iconData: Icons.location_on, txt: 'South Delhi'),
              createDetailsRow(
                  iconData: Icons.location_city_outlined,
                  txt: 'Kellton Tech Solutions Ltd.'),
              createDetailsRow(
                  iconData: FontAwesomeIcons.clock, txt: 'Full Time'),
              createDetailsRow(iconData: Icons.bakery_dining_sharp, txt: 'IT'),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PortFolioPage()),
              );
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                shadowColor: Colors.purple // Background color
                ),
            child: SizedBox(
              width: 180,
              child: Row(
                children: const [
                  Icon(
                    FontAwesomeIcons.arrowRight,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'For More Details',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
