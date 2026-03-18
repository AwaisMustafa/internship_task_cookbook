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

      body: Padding(
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
                    Divider(color: Colors.white),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[700],
                        child: Icon(
                          Icons.grid_view_rounded,
                          color: Colors.black,
                        ),
                      ),
                      title: Text("Compact Cards"),
                      subtitle: Text("Use smaller cards to show more content"),
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
                    Divider(color: Colors.white),

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
          ],
        ),
      ),
    );
  }
}
