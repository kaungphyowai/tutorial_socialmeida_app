// import 'package:flutter/material.dart';
// import 'package:flutter_social_ui/data/data.dart';

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
//   TabController tabController;
//   @override
//   void initState() {
//     super.initState();

//     tabController = TabController(length: 2, vsync: this);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(
//             Icons.menu,
//             color: Theme.of(context).primaryColor,
//           ),
//           onPressed: () {},
//         ),
//         backgroundColor: Colors.white,
//         centerTitle: true,
//         bottom: TabBar(controller: tabController, tabs: [
//           Tab(
//             child: Text(
//               'Trending',
//               style: TextStyle(
//                 color: Theme.of(context).primaryColor,
//                 fontSize: 15,
//               ),
//             ),
//           ),
//           Tab(
//             child: Text(
//               'Latest',
//               style: TextStyle(
//                 color: Theme.of(context).primaryColor,
//                 fontSize: 15,
//               ),
//             ),
//           ),
//         ]),
//         title: Text(
//           "FRENZY",
//           style: TextStyle(
//             color: Theme.of(context).primaryColor,
//             fontSize: 30,
//             letterSpacing: 10,
//           ),
//         ),
//       ),
//       body: Column(
//         mainAxisSize: MainAxisSize.max,
//         children: [
//           Container(
//             margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//             height: 100,
//             child: Column(
//               children: [
//                 Text(
//                   'Following',
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 ListView.builder(
//                   itemCount: users.length,
//                   scrollDirection: Axis.horizontal,
//                   itemBuilder: (BuildContext context, int index) {
//                     return Container(
//                         height: 10,
//                         width: double.infinity,
//                         child: Image.asset(users[index].profileImageUrl));
//                   },
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
