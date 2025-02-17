import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:chatapp/repository/screens/chats/chatscreen.dart';
import 'package:chatapp/repository/screens/contacts/contactscreen.dart';
import 'package:chatapp/repository/screens/more/morescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [ContactsScreen(), ChatsScreen(), MoreScreen()];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.person_2_alt),label: "Contacts"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_fill),label: "Chats"),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz),label: "More"),

      ],
        currentIndex:currentIndex,
        onTap: (value){
        setState(() {
          currentIndex=value;
        });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Theme.of(context).brightness==Brightness.dark? AppColors.bottomdark : AppColors.bottomlight,
        selectedIconTheme: IconThemeData(color: Theme.of(context).brightness==Brightness.dark? AppColors.icondarkmode : AppColors.iconlightmode),
      ),
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
    );
  }
}
