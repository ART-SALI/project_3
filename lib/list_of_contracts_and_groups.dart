
import 'package:flutter/material.dart';
import 'package:project_3/telegram_folder.dart';

class ListOfContactsAndGroups extends StatelessWidget {
  const ListOfContactsAndGroups({
    super.key,
    required this.foldersList,
    required this.pressedButton,
  });

  final List<TelegramFolder> foldersList;
  final int pressedButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      padding: const EdgeInsets.only(top: 0, left: 15, bottom: 0),
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 0, bottom: 0),
        shrinkWrap: true,
        itemCount: foldersList[pressedButton].inFolder.length,
        itemBuilder: (context, index) {
          return Container(
            height: 75,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 55,
                  width: 55,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        foldersList[pressedButton].inFolder[index].name,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        foldersList[pressedButton].inFolder[index].lastMessage,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
