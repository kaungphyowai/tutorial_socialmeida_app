import 'package:flutter/material.dart';
import 'package:flutter_social_ui/data/data.dart';

class Posts extends StatelessWidget {
  const Posts({
    Key key,
    @required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
          child: Text(
            'Posts',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          height: 350,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: pageController,
            itemBuilder: (context, index) {
              return Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 6.0,
                        offset: Offset(0, 2),
                      ),
                    ],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        posts[index].imageUrl,
                      ),
                    )),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      )),
                  height: 100,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: Text(
                          posts[index].title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: Text(
                          posts[index].location,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.favorite,
                                color: Colors.pink,
                              ),
                              Text(posts[index].likes.toString()),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.comment,
                                color: Theme.of(context).primaryColor,
                              ),
                              Text(posts[index].comments.toString()),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
            itemCount: posts.length,
          ),
        ),
      ],
    );
  }
}
