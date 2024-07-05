import 'package:flutter/material.dart';

class Whatsapp extends StatefulWidget {
  const Whatsapp({super.key});

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp>
    with SingleTickerProviderStateMixin {
  //yehan late nh laga ta wo lagya jo k null ki trha hi use hta//

  _WhatsappState({required this.mybar});

//......//
  @override
  void initState() {
    // TODO: implement setState
    super.initState();
    //yehan mybar jo k initilze ty usko call krwaya//
    mybar = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Whatsapp'),
        bottom: TabBar(
          controller: mybar, //yehan controller jo bnaya uski value di//
          tabs: const [
            Tab(child: Icon(Icons.camera_alt)),
            Tab(child: Text('Status')),
            Tab(child: Text('Chats')),
            Tab(child: Text('Calls')),
          ],
        ),
        actions: [
          const Icon(Icons.search),
          PopupMenuButton(
              icon: const Icon(Icons.more_vert_outlined),
              itemBuilder: (context) => const [
                    PopupMenuItem(value: 1, child: Text("New Group")),
                    PopupMenuItem(value: 2, child: Text("Settings")),
                    PopupMenuItem(value: 3, child: Text("Contacts")),
                    PopupMenuItem(value: 4, child: Text("Linked Devices")),
                  ])
        ],
      ),
      body: TabBarView(
//tabbarview k sth const laga ta usko remove bh kiya q kay const mtlb value ab change nh hogy//
        controller: mybar, //yehan controller jo bnaya uski value di//
        children: [
          const Text('Camera'),
          ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(children: [
                  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.teal, width: 3),
                          shape: BoxShape.circle),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://e1.pxfuel.com/desktop-wallpaper/581/68/desktop-wallpaper-cute-instagram-girls-instagram-profile.jpg'),
                      ),
                    ),
                    title: const Text(
                      'Shazia',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('30 min Ago'),
                  ),
                  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.teal, width: 3),
                          shape: BoxShape.circle),
                      child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://e1.pxfuel.com/desktop-wallpaper/384/61/desktop-wallpaper-instagram-profile-ideas-for-girls-%E7%9A%84%E5%9B%BE%E7%89%87%E6%90%9C%E7%B4%A2%E7%BB%93%E6%9E%9C-instagram-girls-dp-thumbnail.jpg')),
                    ),
                    title: const Text(
                      'Aiman',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('30 min Ago'),
                  ),
                  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.teal, width: 3),
                          shape: BoxShape.circle),
                      child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/3775087/pexels-photo-3775087.jpeg?auto=compress&cs=tinysrgb&w=600')),
                    ),
                    title: const Text(
                      'Dua',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('30 min Ago'),
                  ),
                  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.teal, width: 3),
                          shape: BoxShape.circle),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/3785424/pexels-photo-3785424.jpeg?auto=compress&cs=tinysrgb&w=600'),
                      ),
                    ),
                    title: const Text(
                      'Nameera',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('30 min Ago'),
                  )
                ]);
              }),
          Column(
            children: const [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/1081685/pexels-photo-1081685.jpeg?auto=compress&cs=tinysrgb&w=600'),
                ),
                title: Text(
                  'Only Parhayee',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Rida: Bacho!!'),
                trailing: Text(
                  '6:30 pm',
                  textAlign: TextAlign.start,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://e1.pxfuel.com/desktop-wallpaper/581/68/desktop-wallpaper-cute-instagram-girls-instagram-profile.jpg'),
                ),
                title: Text('Shazia',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('Lay'),
                trailing: Text('Yesterday'),
              ),
              ListTile(
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://e1.pxfuel.com/desktop-wallpaper/384/61/desktop-wallpaper-instagram-profile-ideas-for-girls-%E7%9A%84%E5%9B%BE%E7%89%87%E6%90%9C%E7%B4%A2%E7%BB%93%E6%9E%9C-instagram-girls-dp-thumbnail.jpg')),
                title: Text('Aiman',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('Sun'),
                trailing: Text('Sunday'),
              ),
              ListTile(
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/3775087/pexels-photo-3775087.jpeg?auto=compress&cs=tinysrgb&w=600')),
                title: Text(
                  'Dua',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Hi!'),
                trailing: Text('Saturday'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/3785424/pexels-photo-3785424.jpeg?auto=compress&cs=tinysrgb&w=600'),
                ),
                title: Text(
                  'Nameera',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('You: Hello'),
                trailing: Text('Saturday'),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 5),
                child: Text(
                  'Calls',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 40,
                  child: TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        hintText: 'Search',
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade300),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        prefixIcon: const Icon(Icons.search),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade300),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/1081685/pexels-photo-1081685.jpeg?auto=compress&cs=tinysrgb&w=600'),
                ),
                title: const Text(
                  'Only Parhayee',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: const [Icon(Icons.phone), Text('Missed')],
                ),
                trailing: const Text(
                  '6:30 pm',
                  textAlign: TextAlign.start,
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://e1.pxfuel.com/desktop-wallpaper/581/68/desktop-wallpaper-cute-instagram-girls-instagram-profile.jpg'),
                ),
                title: const Text('Shazia',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Row(
                  children: const [Icon(Icons.video_call), Text('Outgoing')],
                ),
                trailing: const Text('Yesterday'),
              ),
              ListTile(
                leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://e1.pxfuel.com/desktop-wallpaper/384/61/desktop-wallpaper-instagram-profile-ideas-for-girls-%E7%9A%84%E5%9B%BE%E7%89%87%E6%90%9C%E7%B4%A2%E7%BB%93%E6%9E%9C-instagram-girls-dp-thumbnail.jpg')),
                title: const Text('Aiman',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Row(
                  children: const [
                    Icon(Icons.phone_callback_rounded),
                    Text('Outgoing')
                  ],
                ),
                trailing: const Text('Sunday'),
              ),
              ListTile(
                leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/3775087/pexels-photo-3775087.jpeg?auto=compress&cs=tinysrgb&w=600')),
                title: const Text(
                  'Dua',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: const [
                    Icon(Icons.phone_callback_rounded),
                    Text('Incoming')
                  ],
                ),
                trailing: const Text('Saturday'),
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/3785424/pexels-photo-3785424.jpeg?auto=compress&cs=tinysrgb&w=600'),
                ),
                title: const Text(
                  'Nameera',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: const [
                    Icon(Icons.phone_callback_rounded),
                    Text('Incoming')
                  ],
                ),
                trailing: const Text('Saturday'),
              )
            ],
          )
        ],
      ),
    );
  }
}
