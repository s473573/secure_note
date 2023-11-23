// home_screen.dart

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:secure_note/controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
  final HomeController controller = Get.find<HomeController>();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('My very much secure notes'),
      ),
      child: Stack(
        children: [
          Obx(() {
            return ListView.builder(
              itemCount: controller.notes.length,
              itemBuilder: (context, index) {
                final note = controller.notes[index];
                return CupertinoListTile(
                  title: Text('Note ${index + 1}'),
                  subtitle: Text('Censored Content'),
                  onTap: () {
                    Get.toNamed('/view_note', arguments: note.id);
                  },
                );
              },
            );
          }),
          Positioned(
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height / 10,
            child: Container(
              color: CupertinoColors.systemIndigo,
              height: MediaQuery.of(context).size.height / 10,
              child: Center(
                child: CupertinoButton(
                child: const Icon(CupertinoIcons.add, color: CupertinoColors.white,),
                onPressed: () {
                  Get.toNamed('/create_note');
                }),
              )
            )
          )
        ],
      ),
    );
  }
}
