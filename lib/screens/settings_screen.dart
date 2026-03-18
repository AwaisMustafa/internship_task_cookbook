import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

bool isToggleOne = false;
bool isToggleTeo = false;

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[800],
        title: Text("Settings", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 380,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.grey,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Appearance",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[700],
                          child: Icon(
                            CupertinoIcons.moon_fill,
                            color: Colors.black,
                          ),
                        ),
                        title: Text("Dark Theme"),
                        subtitle: Text("Currently using dark mode"),
                        trailing: Switch(
                          value: isToggleOne,
                          onChanged: (value) {
                            setState(() {
                              isToggleOne = value;
                            });
                          },
                          activeColor: Colors.black,
                          activeThumbColor: Colors.grey[800],
                          inactiveThumbColor: Colors.grey[800],
                          activeTrackColor: Colors.grey[700],
                          inactiveTrackColor: Colors.grey[600],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(99),
                          border: Border.all(color: Colors.black54, width: 2),
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[700],
                          child: Icon(
                            Icons.grid_view_rounded,
                            color: Colors.black,
                          ),
                        ),
                        title: Text("Compact Cards"),
                        subtitle: Text(
                          "Use smaller cards to show more content",
                        ),
                        trailing: Switch(
                          value: isToggleTeo,
                          onChanged: (value) {
                            setState(() {
                              isToggleTeo = value;
                            });
                          },
                          activeColor: Colors.black,
                          activeThumbColor: Colors.grey[800],
                          inactiveThumbColor: Colors.grey[800],
                          activeTrackColor: Colors.grey[700],
                          inactiveTrackColor: Colors.grey[600],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(99),
                          border: Border.all(color: Colors.black54, width: 2),
                        ),
                      ),
                      Text(
                        'Preview:',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.grey[600],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          spacing: 12,
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0xFF202038),
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://h5p.org/sites/default/files/h5p/content/825/images/image-53e9e429bba63.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Column(
                              spacing: 5,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sample Recipe',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  '30 minutes · Rating: 4.5 stars',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 340,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.grey,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Preferences",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[700],
                          child: Icon(Icons.food_bank, color: Colors.black),
                        ),
                        title: Text("Default Category"),
                        subtitle: Text("New recipes will default to Lunch"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Lunch",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[900],
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 16,
                              color: Colors.grey[900],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(99),
                          border: Border.all(color: Colors.black54, width: 2),
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[700],
                          child: Icon(Icons.notifications, color: Colors.black),
                        ),
                        title: Text("Cooking Notifications"),
                        subtitle: Text("Get reminders for cooking times"),
                        trailing: Switch(
                          value: isToggleTeo,
                          onChanged: (value) {
                            setState(() {
                              isToggleTeo = value;
                            });
                          },
                          activeColor: Colors.black,
                          activeThumbColor: Colors.grey[800],
                          inactiveThumbColor: Colors.grey[800],
                          activeTrackColor: Colors.grey[700],
                          inactiveTrackColor: Colors.grey[600],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(99),
                          border: Border.all(color: Colors.black54, width: 2),
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[700],
                          child: Icon(Icons.sync, color: Colors.black),
                        ),
                        title: Text("Auto Sync"),
                        subtitle: Text(
                          "Automatically sync recipes across devices",
                        ),
                        trailing: Switch(
                          value: isToggleTeo,
                          onChanged: (value) {
                            setState(() {
                              isToggleTeo = value;
                            });
                          },
                          activeColor: Colors.black,
                          activeThumbColor: Colors.grey[800],
                          inactiveThumbColor: Colors.grey[800],
                          activeTrackColor: Colors.grey[700],
                          inactiveTrackColor: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 223,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.grey,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Data",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[700],
                          child: Icon(Icons.ios_share, color: Colors.black),
                        ),
                        title: Text("Export Recipes"),
                        subtitle: Text("Save your recipes as a backup file"),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          // size: 16,
                          color: Colors.grey[900],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(99),
                          border: Border.all(color: Colors.black54, width: 2),
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[700],
                          child: Icon(Icons.delete, color: Colors.black),
                        ),
                        title: Text("Clear Cache"),
                        subtitle: Text("Free up storage space"),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          // size: 16,
                          color: Colors.grey[900],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 395,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.grey,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ListTile(
                        leading: Container(
                          width: 80,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://h5p.org/sites/default/files/h5p/content/825/images/image-53e9e429bba63.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        title: Text("CookBook"),
                        subtitle: Text(
                          "Version 1.0.0\n"
                          "Your personal recipe collection and"
                          "cooking companion",
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(99),
                          border: Border.all(color: Colors.black54, width: 2),
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[700],
                          child: Icon(Icons.help, color: Colors.black),
                        ),
                        title: Text("Help & Support"),
                        subtitle: Text("Get help with using the app"),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          // size: 16,
                          color: Colors.grey[900],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(99),
                          border: Border.all(color: Colors.black54, width: 2),
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[700],
                          child: Icon(Icons.star, color: Colors.black),
                        ),
                        title: Text("Rate App"),
                        subtitle: Text("Rate us on the App Store"),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          // size: 16,
                          color: Colors.grey[900],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(99),
                          border: Border.all(color: Colors.black54, width: 2),
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[700],
                          child: Icon(Icons.file_open, color: Colors.black),
                        ),
                        title: Text("Privacy Policy"),
                        subtitle: Text("Review our privacy practices"),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          // size: 16,
                          color: Colors.grey[900],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
