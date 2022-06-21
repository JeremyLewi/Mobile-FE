import 'package:flutter/material.dart';

class Pertemuan09Screen extends StatefulWidget {
  const Pertemuan09Screen({Key? key}) : super(key: key);

  @override
  State<Pertemuan09Screen> createState() => _Pertemuan09ScreenState();
}

class _Pertemuan09ScreenState extends State<Pertemuan09Screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Pertemuan 09"),
            bottom: const TabBar(isScrollable: true, tabs: [
              Tab(
                child: Text('Music'),
              ),
              Tab(
                child: Text('Favorite'),
              ),
              Tab(
                child: Text('Saved'),
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
                            'Share',
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
                          leading: Icon(Icons.telegram),
                          title: Text('Telegram'),
                        ),
                        const ListTile(
                          leading: Icon(Icons.youtube_searched_for),
                          title: Text('Short Youtube'),
                        ),
                        const ListTile(
                          leading: Icon(Icons.tiktok),
                          title: Text('Tiktok'),
                        ),
                        const ListTile(
                          leading: Icon(Icons.snapchat),
                          title: Text('Snapchat'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Share Music')));
    }));
  }
}
