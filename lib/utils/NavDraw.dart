import 'package:bswmobile/pages/berita.dart';
import 'package:bswmobile/pages/buatPermohonan.dart';
import 'package:bswmobile/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context), 
          buildMenuItems(context), 
        ],
      ),
    ),
  );  
  Widget buildHeader(BuildContext context) => Container(
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).padding.top, 
    ),
  );

  Widget buildMenuItems(BuildContext context) => Container(
    padding: EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
    child: Wrap(
      runSpacing: 16,
      children: [
        ListTile(
          leading: SvgPicture.asset('assets/icons/home.svg', width: 20, color: Color.fromARGB(255, 75, 75, 75),),
          // leading: Icon(Icons.home_outlined),
          title: const Text('Beranda'),
          onTap: (){
            Navigator.pop(context);
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const HomePage()));
          },
        ),
        ListTile(
          leading: SvgPicture.asset('assets/icons/buat-permohonan.svg', width: 20, color: const Color.fromARGB(255, 75, 75, 75),),
          // leading: Icon(Icons.home_outlined),
          title: const Text('Buat Permohonan'),
          onTap: (){
            // Navigator.pop(context);
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const BuatPermohonan()));
          },
        ),
        ListTile(
          leading: SvgPicture.asset('assets/icons/cek-permohonan.svg', width: 20, color: const Color.fromARGB(255, 75, 75, 75),),
          // leading: Icon(Icons.home_outlined),
          title: const Text('Cek Permohonan'),
          onTap: (){},
        ),
        ListTile(
          leading: SvgPicture.asset('assets/icons/berita.svg', width: 20, color: const Color.fromARGB(255, 75, 75, 75),),
          // leading: Icon(Icons.home_outlined),
          title: const Text('Berita'),
          onTap: () {
            // Navigator.pop(context);
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const Berita()));
          },
        ),
        const Divider(color: Colors.black45,),
        ListTile(
          leading: Icon(Icons.settings),
          // leading: Icon(Icons.home_outlined),
          title: const Text('Settings'),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.logout),
          // leading: Icon(Icons.home_outlined),
          title: const Text('Log out'),
          onTap: (){},
        ),
      ],
    ),
  );
}