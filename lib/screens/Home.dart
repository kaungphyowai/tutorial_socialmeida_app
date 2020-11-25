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
        drawer: Drawer(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: Image(
                      image: AssetImage(currentUser.backgroundImageUrl),
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 10.0,
                    bottom: 10.0,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 2),
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child: ClipOval(
                            child: Image(
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                              image: AssetImage(currentUser.profileImageUrl),
                            ),
                          ),
                        ),
                        Text(
                          currentUser.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Custom_ListTitle(
                title: "Home",
                icon: Icons.home,
              ),
              Custom_ListTitle(
                title: "Chats",
                icon: Icons.comment,
              ),
              Custom_ListTitle(
                title: "Map",
                icon: Icons.pin_drop,
              ),
              Custom_ListTitle(
                title: "Profile",
                icon: Icons.account_circle,
              ),
              Custom_ListTitle(
                title: "Settings",
                icon: Icons.settings,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Custom_ListTitle(
                    title: "Log Out",
                    icon: Icons.directions_walk,
                  ),
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
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

class Custom_ListTitle extends StatelessWidget {
  final title;
  final IconData icon;
  Custom_ListTitle({this.title, this.icon});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
