import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DictionaryDrawer extends StatelessWidget {
  const DictionaryDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Username'),
            accountEmail: Text('user@example.com'),
          ),
          ListTile(
            leading: Icon(Icons.color_lens),
            title: Text('Change Theme'),
            onTap: () {
              // TODO: Implement theme change functionality
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('About This App'),
                    content: Text('This is a dictionary app.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('OK'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () async {
              final String url = 'https://example.com';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
          ),
        ],
      ),
    );
  }
}
