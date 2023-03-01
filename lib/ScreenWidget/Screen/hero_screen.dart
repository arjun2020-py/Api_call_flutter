// import 'package:flutter/material.dart';
// import 'package:task/ScreenWidget/Screen/second_hero_screen.dart';

// import 'thrid_hero_screen.dart';

// class HeroScreen extends StatelessWidget {
//   const HeroScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           Hero(
//             transitionOnUserGestures: true,
//             tag: 't1',
//             child: IconButton(
//                 onPressed: () {
//                   Navigator.of(context).push(MaterialPageRoute(
//                     builder: (context) => const ThridHeroScreen(),
//                   ));
//                 },
//                 icon: const Icon(Icons.add)),
//           )
//         ],
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             ListTile(
//               trailing: const Hero(
//                   transitionOnUserGestures: true,
//                   tag: 't2',
//                   child: Icon(Icons.person)),
//               onTap: () {
//                 Navigator.of(context).push(MaterialPageRoute(
//                   builder: (context) => const ThridHeroScreen(),
//                 ));
//               },
//             ),
//             InkWell(
//                 onTap: () => Navigator.of(context).push(MaterialPageRoute(
//                       builder: (context) => const SecondHeroScreen(),
//                     )),
//                 child: Hero(
//                   transitionOnUserGestures: true,
//                   tag: '1',
//                   child: Card(
//                     child: Image.network(
//                       'https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Ym9va3xlbnwwfHwwfHw%3D&w=1000&q=80',
//                       height: 100,
//                     ),
//                   ),
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }
