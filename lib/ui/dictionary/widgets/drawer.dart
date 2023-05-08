import 'package:dictionary/utils/tools/file_importer.dart';

class DictionaryDrawer extends StatelessWidget {
   DictionaryDrawer({Key? key}) : super(key: key);

  final themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('UMD GROUP'),
            accountEmail: Text('t.me/ahadjonov_s'),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/umd.jpeg"),
                fit: BoxFit.cover
              )
            ),
          ),
          ListTile(
            leading: const Icon(Icons.color_lens),
            title:const  Text('Dark Mode'),
            trailing: Switch(
              value: themeController.isDarkMode.value,
              onChanged: (value) =>themeController.changeTheme(value),
            ),
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
