import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBody(){
    return const Text('body');
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        _buildBottomNavigationBarItem(),
        _buildBottomNavigationBarItem(),
        _buildBottomNavigationBarItem(),
        _buildBottomNavigationBarItem(),
        _buildBottomNavigationBarItem()
      ],
      onTap: (value) {},
      );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem() {
    // final IconData icon;
    // final String title;
   return const BottomNavigationBarItem(
    icon: Icon(Icons.contacts),
    label:"Row / Column",
    );
  }


}