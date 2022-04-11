import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: (Icons.move_to_inbox),
              text: 'Inbox',
              onTap: () {
                Navigator.pushNamed(context, '/inbox');
              }),
          _drawerItem(
              icon: (Icons.send),
              text: 'Outbox',
              onTap: () {
                Navigator.pushNamed(context, '/Outbox');
              }),
          _drawerItem(
              icon: (Icons.error),
              text: 'Spam',
              onTap: () {
                Navigator.pushNamed(context, '/Spam');
              }),
          _drawerItem(
              icon: Icons.forum,
              text: "Forums",
              onTap: () {
                Navigator.pushNamed(context, '/Forums');
              }),
          _drawerItem(
              icon: Icons.mark_email_unread,
              text: "Promos",
              onTap: () {
                Navigator.pushNamed(context, '/Promos');
              }),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0000000),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            title: Container(child: Text('Today', style: TextStyle(color: Colors.grey))),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                10,
                (int i) {
                  return _listItem(i);
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _listItem(int i) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(i.toString()),
        backgroundColor: Colors.green,
      ),
      title: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Egi Sabta Hiro",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
              Text(
                "12.00",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("using whatsapp"),
          Icon(Icons.star_border)
        ],
      ),
    );
  }
}

class Inbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Inbox'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                10,
                (int i) {
                  return _listItem(i);
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _listItem(int i) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(i.toString()),
        backgroundColor: Colors.green,
      ),
      title: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Egi Sabta Hiro",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
              Text(
                "12.00",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("using whatsapp"),
          Icon(Icons.star_border)
        ],
      ),
    );
  }
}

class Outbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Outbox'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                10,
                (int i) {
                  return _listItem(i);
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _listItem(int i) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(i.toString()),
        backgroundColor: Colors.green,
      ),
      title: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Egi Sabta Hiro",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
              Text(
                "12.00",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("using whatsapp"),
          Icon(Icons.star_border)
        ],
      ),
    );
  }
}

class Spam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Spam'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                10,
                (int i) {
                  return _listItem(i);
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _listItem(int i) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(i.toString()),
        backgroundColor: Colors.green,
      ),
      title: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Egi Sabta Hiro",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
              Text(
                "12.00",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("using whatsapp"),
          Icon(Icons.star_border)
        ],
      ),
    );
  }
}

class Forums extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Keterangan'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                10,
                (int i) {
                  return _listItem(i);
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _listItem(int i) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(i.toString()),
        backgroundColor: Colors.green,
      ),
      title: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Egi Sabta Hiro",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
              Text(
                "12.00",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("using whatsapp"),
          Icon(Icons.star_border)
        ],
      ),
    );
  }
}

class Promos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('pengaturan'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                10,
                (int i) {
                  return _listItem(i);
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _listItem(int i) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(i.toString()),
        backgroundColor: Colors.green,
      ),
      title: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Egi Sabta Hiro",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
              Text(
                "12.00",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("using whatsapp"),
          Icon(Icons.star_border)
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    decoration: BoxDecoration(
      color: Colors.green,
    ),
    currentAccountPicture: ClipOval(
      child: Image.network('https://www.emmegi.co.uk/wp-content/uploads/2019/01/User-Icon.jpg'),
    ),
    accountName: Text('Egi Sabta Hiro'),
    accountEmail: Text('egisabta76@gmail.com'),
  );
}

Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
