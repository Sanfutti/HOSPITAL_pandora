import 'package:flutter/material.dart';

import 'package:hospital_app/pages/dashboard2.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController(initialPage: 0);
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Container(
          child: PageView(
        controller: _controller,
        onPageChanged: _onPageChanged,
        children: <Widget>[
          DashBoard2(),
        ],
      )),
      bottomNavigationBar: _bottomNavigation(),
    );
  }

  _onPageChanged(int page) {
    page.toString() == '0'
        ? setState(() {
            _currentPage = 0;
          })
        : page.toString() == '1'
            ? setState(() {
                _currentPage = 1;
              })
            : page.toString() == '2'
                ? setState(() {
                    _currentPage = 2;
                  })
                : page.toString() == '3'
                    ? setState(() {
                        _currentPage = 3;
                      })
                    : setState(() {
                        _currentPage = 0;
                      });
  }

  Widget _appBar() {
    return AppBar(
      title: Text(
        _currentPage == 0
            ? 'Dashboard'
            : _currentPage == 1
                ? 'Transaction'
                : _currentPage == 2
                    ? 'Profile'
                    : 'Settings',
      ),
      titleSpacing: 10,
      leading: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'silverProfile');
        },
        child: CircleAvatar(
          radius: 5,
          backgroundImage: AssetImage('assets/images/logon1.jpg'),
        ),
      ),
      actions: [
        IconButton(
            icon: Icon(
              Icons.notifications,
              color: Theme.of(context).accentColor,
            ),
            onPressed: null),
        IconButton(
            icon:
                Icon(Icons.mail_outline, color: Theme.of(context).accentColor),
            onPressed: null)
      ],
    );
  }

  Widget _sliverAppBar() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Theme.of(context).primaryColor,
          expandedHeight: 300,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
              title: Text('Profile'),
              background: Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/owner1.jpg'),
                ),
              )),
        ),
        SliverFillRemaining(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Text: 1'), Text('Text: 2')],
            ),
          ),
        )
      ],
    );
  }

  Widget _bottomNavigation() {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                icon: Icon(Icons.home,
                    size: _currentPage == 0 ? 28 : 20,
                    color: _currentPage == 0
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).accentColor),
                onPressed: () {
                  setState(() {
                    _currentPage = 0;
                    _controller.jumpToPage(0);
                  });
                }),
            IconButton(
                icon: Icon(
                  Icons.money_off,
                  size: _currentPage == 1 ? 28 : 20,
                  color: _currentPage == 1
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).accentColor,
                ),
                onPressed: () {
                  setState(() {
                    _currentPage = 1;
                    _controller.jumpToPage(1);
                  });
                }),
            IconButton(
                icon: Icon(
                  Icons.person,
                  size: _currentPage == 2 ? 28 : 20,
                  color: _currentPage == 2
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).accentColor,
                ),
                onPressed: () {
                  setState(() {
                    _currentPage = 2;
                    _controller.jumpToPage(2);
                  });
                }),
            IconButton(
                icon: Icon(
                  Icons.settings,
                  size: _currentPage == 3 ? 28 : 20,
                  color: _currentPage == 3
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).accentColor,
                ),
                onPressed: () {
                  setState(() {
                    _currentPage = 3;
                    _controller.jumpToPage(3);
                  });
                })
          ],
        ),
      ),
    );
  }
}
