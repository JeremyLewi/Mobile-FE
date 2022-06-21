import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class LatihanPertemuan09 extends StatefulWidget {
  const LatihanPertemuan09({Key? key}) : super(key: key);

  @override
  State<LatihanPertemuan09> createState() => _LatihanPertemuan09State();
}

class _LatihanPertemuan09State extends State<LatihanPertemuan09> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("NFT's Market"),
            bottom: const TabBar(isScrollable: true, tabs: [
              Tab(
                child: Text('Store'),
              ),
              Tab(
                child: Text('Favorite'),
              ),
              Tab(
                child: Text('Collection'),
              ),
            ]),
          ),
          drawer: Drawer(
              child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                padding: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(color: Colors.red),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjh6AjDfgwegKfa_mI1kzyTJ_MgV2hm0o1aA&usqp=CAU'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Jeremy',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'jeremy@gmail.com',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ]),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.inbox),
                title: const Text('Inbox'),
                trailing: const Icon(Icons.keyboard_arrow_right_outlined),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.save),
                title: const Text('Archived'),
                trailing: const Icon(Icons.keyboard_arrow_right_outlined),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.download),
                title: const Text('Saved'),
                trailing: const Icon(Icons.keyboard_arrow_right_outlined),
              )
            ],
          )),
          body: TabBarView(
            children: [
              buttonSheets(context),
              TextButton(
                  onPressed: () {
                    print('Favorite');
                  },
                  child: const Text('Favorite')),
              TextButton(
                  onPressed: () {
                    print('Saved');
                  },
                  child: const Text('Saved')),
            ],
          ),
        ));
  }

  buttonSheets(BuildContext context) {
    return Builder(builder: ((context) {
      return Center(
          child: TextButton(
              onPressed: () {
                showBottomSheet(
                  enableDrag: true,
                  context: context,
                  builder: (context) {
                    final theme = Theme.of(context);
                    return Wrap(
                      children: [
                        ListTile(
                          title: const Text(
                            'Add NFT`s',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.white),
                          ),
                          tileColor: theme.colorScheme.primary,
                          trailing: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.close,
                                color: Colors.white,
                              )),
                        ),
                        const ListTile(
                          title: Text('Telegram'),
                        ),
                        const ListTile(
                          title: Text('Short Youtube'),
                        ),
                        const ListTile(
                          title: Text('Insta Story'),
                        ),
                        const ListTile(
                          title: Text('Snapchat'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Upload NFT')));
    }));
  }
}
