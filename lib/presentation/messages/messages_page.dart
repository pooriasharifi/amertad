import 'package:amertad/data/messages/message_controller.dart';
import 'package:amertad/data/module/constans.dart';
import 'package:amertad/domain/messages/messages_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessagesPage extends GetResponsiveView {
  MessagesPage({super.key});

  @override
  Widget phone() {
    return phoneLayote();
  }

  @override
  Widget tablet() {
    return const Scaffold(
      backgroundColor: Colors.black,
    );
  }

  @override
  Widget desktop() {
    return const Scaffold(
      backgroundColor: Colors.black,
    );
  }

  Widget phoneLayote() {
    final MessageController controller = Get.put(MessageController());

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Messages',
          style: Get.textTheme.caption,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Icon(CupertinoIcons.search),
          )
        ],
      ),
      body: Column(
        children: [
          TabBar(
            controller: controller.controller,
            tabs: controller.myTabs,
            padding: const EdgeInsets.symmetric(vertical: 20),
            unselectedLabelColor: ColorSelecet.unSelectColortab,
            labelColor: ColorSelecet.primery,
          ),
          Expanded(
            child: TabBarView(controller: controller.controller, children: [
              chat(),
              const Center(child: Text('order')),
              const Center(child: Text('car'))
            ]),
          ),
        ],
      ),
    );
  }

  Widget chat() {
    List<MessagesModel> items = MessagesModel.chats;
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          backgroundColor: ColorSelecet.primery,
          child: const Icon(CupertinoIcons.pen),
        ),
        body: ListView.builder(
            itemCount: items.length ?? 0,
            itemBuilder: (BuildContext context, int index) {
              var data = items[index];
              return ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                title: Text(
                  '${data.name} ${data.lastName}',
                  style: Get.textTheme.caption,
                ),
                leading: leadingChat(data),
                subtitle: Text(
                  data.description.toString(),
                  style: Get.textTheme.subtitle1,
                ),
                trailing: Column(
                  children: [
                    Icon(
                      CupertinoIcons.circle_fill,
                      color: data.status == true
                          ? ColorSelecet.primery
                          : Colors.transparent,
                      size: 10,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      data.time.toString(),
                      style: Get.textTheme.subtitle1,
                    )
                  ],
                ),
              );
            }));
  }

  Stack leadingChat(MessagesModel data) {
    return Stack(
      children: [
        SizedBox(
          height: 48,
          width: 48,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: data.imgUrl == null
                ? Container(
                    color: ColorSelecet.primery.withOpacity(.2),
                    child: Center(
                      child: Text('${data.name![0]}${data.lastName![0]}',
                          style: Get.textTheme.headline3),
                    ),
                  )
                : Image.asset(data.imgUrl.toString()),
          ),
        ),
        Positioned(
            right: -35,
            left: 0,
            bottom: 2,
            child: Icon(
              CupertinoIcons.circle_fill,
              color:
                  data.status == true ? ColorSelecet.green : ColorSelecet.grey,
              size: 10,
            )),
        Positioned(
            right: -35,
            left: 0,
            bottom: 2,
            child: Icon(
              CupertinoIcons.circle,
              color: ColorSelecet.white,
              size: 10,
            ))
      ],
    );
  }
}
