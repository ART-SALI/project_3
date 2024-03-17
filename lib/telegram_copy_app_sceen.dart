import 'package:flutter/material.dart';
import 'package:project_3/correspondence.dart';
import 'package:project_3/telegram_folder.dart';
import 'package:project_3/list_of_contracts_and_groups.dart';
import 'package:project_3/telegram_drawer.dart';

class TelegramCopyAppScreen extends StatefulWidget {
  const TelegramCopyAppScreen({super.key});

  @override
  _TelegramCopyAppScreenScreenState createState() =>
      _TelegramCopyAppScreenScreenState();
}

class _TelegramCopyAppScreenScreenState extends State<TelegramCopyAppScreen> {
  List<TelegramFolder> foldersList = [
    TelegramFolder(folderName: 'All', pressed: true),
    TelegramFolder(folderName: 'Personal'),
    TelegramFolder(folderName: 'Courses'),
    TelegramFolder(folderName: 'University'),
    TelegramFolder(folderName: 'Friends')
  ];
  List<Correspondence> contactsAndGroupsList = [
    Correspondence('Friend0', 'lastMessage lastMessage lastMessage'),
    Correspondence('Friend1', 'lastMessage lastMessage lastMessage'),
    Correspondence('Friend2', 'lastMessage lastMessage lastMessage'),
    Correspondence('Friend3', 'lastMessage lastMessage lastMessage lastMessage lastMessage lastMessage'),
    Correspondence('Friend4', 'lastMessage lastMessage lastMessage'),
    Correspondence('Friend5', 'lastMessage lastMessage lastMessage'),
    Correspondence('Friend6', 'lastMessage lastMessage lastMessage'),
    Correspondence('Friend7', 'lastMessage lastMessage lastMessage lastMessage lastMessage lastMessage'),
    Correspondence('Friend8', 'lastMessage lastMessage lastMessage'),
    Correspondence('Friend9', 'lastMessage lastMessage lastMessage'),
    Correspondence('Friend10', 'lastMessage lastMessage lastMessage'),
    Correspondence('Friend11', 'lastMessage lastMessage lastMessage'),
    Correspondence('Friend12', 'lastMessage lastMessage lastMessage lastMessage lastMessage lastMessage'),
    Correspondence('Friend13', 'lastMessage lastMessage lastMessage'),
    Correspondence('Friend14', 'lastMessage lastMessage lastMessage'),
  ];
  int pressedButton = 0;

  @override
  void initState() {
    super.initState();
    foldersList[0].inFolder = contactsAndGroupsList;
    foldersList[1].inFolder = contactsAndGroupsList.sublist(2, 10);
    foldersList[2].inFolder = contactsAndGroupsList.sublist(0, 5);
    foldersList[3].inFolder = contactsAndGroupsList.sublist(2, 12);
    foldersList[4].inFolder = contactsAndGroupsList.sublist(4, 9);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: telegramAppBar(),
      drawer: const TelegramDrawer(),
      backgroundColor: const Color(0xff242C1F),
      body: Column(
        children: [
          flexibleFolders(),
          Flexible(
            child: Container(
              height: 1,
              color: const Color(0xff191E15),
            ),
          ),
          ListOfContactsAndGroups(foldersList: foldersList, pressedButton: pressedButton),
        ],
      ),
    );
  }

  Flexible flexibleFolders() {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.only(top: 0, left: 0),
        height: 50,
        child: ListView.builder(
          padding: const EdgeInsets.only(left: 0, top: 0),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: foldersList.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                const SizedBox(
                  width: 8,
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        foldersList[pressedButton].pressed = false;
                        pressedButton = index;
                        foldersList[index].pressed = true;
                        setState(() {
                          foldersList;
                        });
                      },
                      child: Text(
                        foldersList[index].folderName,
                        style: TextStyle(
                          fontSize: 15,
                          color: foldersList[index].pressedColor(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  AppBar telegramAppBar() {
    return AppBar(
      backgroundColor: const Color(0xff242C1F),
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
      title: const Row(
        children: [
          Text(
            'Telegram',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          Expanded(child: SizedBox()),
          Icon(
            Icons.search,
            size: 35,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
