import 'package:flutter/material.dart';

class TelegramDrawer extends StatelessWidget {
  const TelegramDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(color: Colors.white);
    return Drawer(
      backgroundColor: const Color(0xff242C1F),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.red,
            ),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 72,
                  width: 72,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),),
                const Text(
              'Artem Saliienko',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
              const Text(
                '+777 (77) 777 77 77',
                style: TextStyle(
                  color: Colors.white30,
                  fontSize: 12,
                ),
              ),
            ],)
          ),
          ListTile(
            leading: const Icon(Icons.group_outlined,
            color: const Color(0xff8D958A),),
            title: const Text(
              'New Group',
              style: textStyle,
            ),
            onTap: () {
              // Navigate to groups screen
            },
          ),
          ListTile(
            leading: const Icon(Icons.person_outline,
              color: const Color(0xff8D958A),),
            title: const Text(
              'Contacts',
              style: textStyle,
            ),
            onTap: () {
              // Navigate to chats screen
            },
          ),
          ListTile(
            leading: const Icon(Icons.call_outlined,
              color: const Color(0xff8D958A),),
            title: const Text(
              'Calls',
              style: textStyle,
            ),
            onTap: () {
              // Navigate to contacts screen
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle_outlined,
              color: const Color(0xff8D958A),),
            title: const Text(
              'People Nearby',
              style: textStyle,
            ),
            onTap: () {
              // Navigate to settings screen
            },
          ),
          ListTile(
            leading: const Icon(Icons.bookmark_border,
              color: const Color(0xff8D958A),),
            title: const Text(
              'Saved Messages',
              style: textStyle,
            ),
            onTap: () {
              // Navigate to settings screen
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings,
              color: const Color(0xff8D958A),),
            title: const Text(
              'Settings',
              style: textStyle,
            ),
            onTap: () {
              // Navigate to settings screen
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.person_add_outlined,
              color: const Color(0xff8D958A),),
            title: const Text(
              'Invite Friends',
              style: textStyle,
            ),
            onTap: () {
              // Navigate to settings screen
            },
          ),
          ListTile(
            leading: const Icon(Icons.help_outline,
              color: const Color(0xff8D958A),),
            title: const Text(
              'Telegram Features',
              style: textStyle,
            ),
            onTap: () {
              // Navigate to help & feedback screen
            },
          ),
        ],
      ),
    );
  }
}
