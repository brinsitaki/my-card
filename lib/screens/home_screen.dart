import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const String phoneNumber = "+21626738221";
    const String email = "brinsitakiallah@gmail.com";
    return Scaffold(
      backgroundColor: Colors.cyan[500],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 70.0,
              backgroundImage: AssetImage("images/me.jpg"),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              "Brinsi Mohamed Taki Allah",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text(
              "Mobile Developper",
              style: TextStyle(
                color: Colors.grey.shade200,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            SizedBox(
              height: 5.0,
              width: MediaQuery.of(context).size.width / 2,
              child: Divider(
                color: Colors.cyan[100],
              ),
            ),
            InkWell(
              child: const Card(
                margin: EdgeInsets.all(20.0),
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text(phoneNumber),
                ),
              ),
              onTap: () {
                Clipboard.setData(const ClipboardData(text: phoneNumber));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Phone Number copied to clipboard!'),
                  ),
                );
              },
            ),
            InkWell(
              child: const Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: ListTile(
                  leading: Icon(Icons.mail),
                  title: Text(email),
                ),
              ),
              onTap: () {
                Clipboard.setData(const ClipboardData(text: email));

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Email copied to clipboard!')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
