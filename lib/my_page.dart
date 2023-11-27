import 'package:flutter/material.dart';

import 'components/my_contacts/my_contacts.dart';
import 'components/my_emails/my_emails.dart';
import 'components/my_profile/my_profile.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
int  selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('AppBar')),
        backgroundColor: Colors.green[500],
      ),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }


// Widget Body
  Widget _buildBody(){
     if(selectedIndex == 0) {
      return const MyContacts();
    } else if(selectedIndex==1) {
      return const MyEmails();
    } else {
      return const MyProfile();
    }
  }


  // Widget Bottom
Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      items: [
        _buildBottomNavigationBarItem(),
        _buildBottomNavigationBarItem(),
        _buildBottomNavigationBarItem(),
      ],
       onTap: (int index) {
          onTapHandler(index);
        },
      );
  }


//  Items Bottom

BottomNavigationBarItem _buildBottomNavigationBarItem(){
return const BottomNavigationBarItem(
    icon: Icon(Icons.contacts),
    label:"Row / Column",
    );
}


// Color _buildColorTab(){
//   return Color();
// }

// Icon _buidIconsTab(){
//   return Icon()
// }

void onTapHandler(int index) {
  setState(() {
    selectedIndex = index;
  });
}
}