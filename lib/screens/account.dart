import 'package:flutter/material.dart';
import 'package:udemy_clone/widgets/text_comp.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  List<String> linkList = [
    "About Udemy",
    "About Udemy Business",
    "Frequently asked questions",
    "Share the udemy app",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: TextComp(
          text: "Account",
          size: 20,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              title: Text("Learning remiders"),
              trailing: Icon(Icons.chevron_right),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextComp(
                text: "Help & supports",
                size: 12,
                color: Colors.grey,
                fontweight: FontWeight.normal,
              ),
            ),
            ListView.builder(
              itemCount: linkList.length,
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    linkList[index],
                  ),
                  trailing: Icon(Icons.chevron_right),
                );
              },
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextComp(
                text: "Diagonotics",
                size: 12,
                color: Colors.grey,
                fontweight: FontWeight.normal,
              ),
            ),
            const ListTile(
              title: Text("Status"),
              trailing: Icon(Icons.chevron_right),
            ),
            Center(
              child: TextButton(
                  onPressed: () {},
                  child: TextComp(
                    text: "Sign In",
                    color: Colors.blue,
                  )),
            ),
            const SizedBox(height: 10),
            Center(
              child: TextComp(
                text: "Udemy v9.3.2",
                size: 14,
                fontweight: FontWeight.normal,
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
