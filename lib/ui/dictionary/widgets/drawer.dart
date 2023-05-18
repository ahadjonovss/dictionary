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
            title:const  Text('Tunggi rejim'),
            trailing: Switch(
              value: Theme.of(context).brightness==Brightness.dark,
              onChanged: (value) =>themeController.changeTheme(value),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Ilova haqida'),
            onTap: () {
             Get.to(()=>PdfScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text("Bo'lishish"),
            onTap: () async {
              const String url = 'https://play.google.com/store/apps/details?id=com.uzmobdev.dictionary&hl=en_US&gl=US';
              Share.share(url);
            },
          ),
        ],
      ),
    );
  }
}
