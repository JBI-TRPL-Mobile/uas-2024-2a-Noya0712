import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5AA9E6),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Profile',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),

            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.grey[300],
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.grey[600],
                ),
              ),
            ),
            SizedBox(height: 20),

            Text(
              'Video Preference',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),

            GestureDetector(
              onTap: () {
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Setting',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.white),
                ],
              ),
            ),
            SizedBox(height: 20),


            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Log Out',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.home, color: Colors.white),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.message, color: Colors.white),
                  onPressed: () {
                    //Tambahkan fungsi untuk pesan
                  },
                ),
                IconButton(
                  icon: Icon(Icons.book, color: Colors.white),
                  onPressed: () {
                    //Tambahkan fungsi untuk buku
                  },
                ),
                IconButton(
                  icon: Icon(Icons.person, color: Colors.white),
                  onPressed: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.search, color: Colors.white),
                  onPressed: () {
                    //Tambahkan fungsi untuk pencarian
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}