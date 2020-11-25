import 'package:flutter/material.dart';
import 'package:flutter_social_ui/data/data.dart';
import 'package:flutter_social_ui/widgets/FollwoingUser.dart';
import 'package:flutter_social_ui/widgets/Posts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController tabController;
  PageController pageController;
  @override
  void initState() {
    super.initState();

    pageController = PageController(
      viewportFraction: 0.6,
      keepPage: true,
      initialPage: 1,
    );
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () {},
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          bottom: TabBar(controller: tabController, tabs: [
            Tab(
              child: Text(
                'Trending',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 15,
                ),
              ),
            ),
            Tab(
              child: Text(
                'Latest',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 15,
                ),
              ),
            ),
          ]),
          title: Text(
            "FRENZY",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 30,
              letterSpacing: 10,
            ),
          ),
        ),
        body: ListView(
          children: [
            FollowingUsers(),
            Posts(pageController: pageController, title: "Posts", posts: posts),
            RaisedButton(
              onPressed: () {
                var value = -100.34;
                print(value.abs());
              },
              child: Text("Press Mes"),
            ),
          ],
        ));
  }
}
