import 'package:flutter/material.dart';

import 'package:weather_forecasting_app/widgets/custom_list_tile.dart';


class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool cellurData = true;

  bool celsius = true;
  bool resetIdentifier = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.white),
            child: const BackButton()),
        backgroundColor: Color(0xFF1D2837),
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Container(
        color: const Color(0xFF1D2837),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ListView(
            children: [
              const CustomListTileWidget(
                iconBackgroundColor: Color.fromARGB(255, 29, 67, 220),
                icon: Icons.location_on,
                title: 'Location',
                trailingTitle: 'Always',
              ),
              SwitchListTile(
                value: cellurData,
                onChanged: (val) {
                  setState(() {
                    cellurData = val;
                  });
                },
                tileColor: const Color(0xFF1D2837),
                title: const Text(
                  'cellular Data',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              const CustomListTileWidget(
                  icon: Icons.notifications,
                  iconBackgroundColor: Colors.red,
                  title: 'Notifications',
                  trailingTitle: ''),
              const CustomListTileWidget(
                  icon: Icons.language,
                  iconBackgroundColor: Color.fromARGB(255, 23, 97, 110),
                  title: 'Language',
                  trailingTitle: 'EN'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: Text(
                      'Temperature Unit',
                      style:
                          TextStyle(color: Color.fromARGB(255, 139, 139, 139)),
                    ),
                  ),
                  CheckboxListTile(
                      title: const Text(
                        'celsius',
                        style: TextStyle(color: Colors.white),
                      ),
                      value: celsius,
                      onChanged: (val) {
                        setState(() {
                          celsius = val!;
                        });
                      }),
                  CheckboxListTile(
                      title: const Text(
                        'fahrenheit',
                        style: TextStyle(color: Colors.white),
                      ),
                      value: !celsius,
                      onChanged: (val) {
                        setState(() {
                          celsius = !val!;
                        });
                      })
                ],
              ),
              SwitchListTile(
                value: resetIdentifier,
                onChanged: (bool value) {
                  setState(() {
                    resetIdentifier = value;
                  });
                },
                tileColor: Color(0xFF1D2837),
                title: const Text(
                  'Reset Identifier',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


