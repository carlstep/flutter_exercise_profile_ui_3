import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.grey[850],
      body: Stack(
        children: [
          Positioned(
            top: 70,
            left: 20,
            child: Icon(
              Icons.arrow_back_outlined,
              size: 30,
              color: Colors.grey[100],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'John Rambo',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey[100],
                  ),
                ),
                Text(
                  'john@gmail.com',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w200,
                    color: Colors.grey[100],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  elevation: 10,
                  color: Colors.yellow[400],
                  child: SizedBox(
                    height: 50,
                    width: 280,
                    child: Center(
                      child: Text(
                        'Upgrade to Premium',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Colors.grey[850],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ProfileMenuItem(
                  text: 'Your Order History',
                  icon: Icons.shopping_bag_outlined,
                  arrowShown: true,
                ),
                SizedBox(
                  height: 10,
                ),
                ProfileMenuItem(
                  text: 'Help and Support',
                  icon: Icons.help_outline_outlined,
                  arrowShown: true,
                ),
                SizedBox(
                  height: 10,
                ),
                ProfileMenuItem(
                  text: 'Gift Voucher',
                  icon: Icons.card_giftcard_outlined,
                  arrowShown: true,
                ),
                SizedBox(
                  height: 10,
                ),
                ProfileMenuItem(
                  text: 'Logout',
                  icon: Icons.logout_outlined,
                  arrowShown: false,
                ),
              ],
            ),
          ),
          Positioned(
            top: 70,
            right: 20,
            child: Icon(
              Icons.settings,
              size: 30,
              color: Colors.grey[100],
            ),
          ),
        ],
      ),
    ),
  ));
}

class ProfileMenuItem extends StatelessWidget {
  ProfileMenuItem(
      {required this.text, required this.icon, required this.arrowShown});
  final String text;
  final IconData icon;
  final bool arrowShown;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      elevation: 10,
      shadowColor: Colors.black,
      color: Colors.grey[800],
      child: SizedBox(
        height: 50,
        width: 280,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      icon,
                      color: Colors.grey[100],
                      size: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '$text',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.grey[100],
                      ),
                    ),
                  ],
                ),
                arrowShown
                    ? Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.grey[100],
                        size: 30,
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
