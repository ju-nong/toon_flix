import 'package:flutter/material.dart';
import 'package:toon_flix/widgets/button.dart';
import 'package:toon_flix/widgets/currency_card.dart';

class Player {
  String name;

  Player({required this.name});
}

void main() {
  var nico = Player(name: "nico");
  nico.name = "potato";

  runApp(App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;

  void onClick() {
    setState(() {
      counter = counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Click Counter",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                "$counter",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              IconButton(
                onPressed: onClick,
                icon: Icon(
                  Icons.add_box_rounded,
                ),
                iconSize: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class App extends StatelessWidget {
//   const App({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(height: 80),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         Text(
//                           "Hey, Selena",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 28,
//                             fontWeight: FontWeight.w800,
//                           ),
//                         ),
//                         Text(
//                           "Welcome back",
//                           style: TextStyle(
//                             color: Colors.white.withValues(alpha: 0.8),
//                             fontSize: 18,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 70,
//                 ),
//                 Text(
//                   "Total Balance",
//                   style: TextStyle(
//                     fontSize: 22,
//                     color: Colors.white.withValues(alpha: 0.8),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   "\$5 194 482",
//                   style: TextStyle(
//                     fontSize: 48,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.white,
//                   ),
//                 ),
//                 SizedBox(height: 30),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Button(
//                       text: "Transfer",
//                       backgroundColor: Color(0xFFF1B33B),
//                       textColor: Colors.black,
//                     ),
//                     Button(
//                       text: "Request",
//                       backgroundColor: Color(0xFF1b1d1f),
//                       textColor: Colors.white,
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 50,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     Text(
//                       "Wallets",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 36,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     Text(
//                       "View All",
//                       style: TextStyle(
//                         color: Colors.white.withValues(alpha: 0.8),
//                         fontSize: 18,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 CurrencyCard(
//                   name: "Euro",
//                   amount: "6 428",
//                   code: "EUR",
//                   icon: Icons.euro_rounded,
//                   isInverted: false,
//                   order: 1,
//                 ),
//                 CurrencyCard(
//                   name: "Bitcoin",
//                   amount: "9785",
//                   code: "BTC",
//                   icon: Icons.currency_bitcoin,
//                   isInverted: true,
//                   order: 2,
//                 ),
//                 CurrencyCard(
//                   name: "Dollar",
//                   amount: "428",
//                   code: "USD",
//                   icon: Icons.attach_money_outlined,
//                   isInverted: false,
//                   order: 3,
//                 ),
//               ],
//             ),
//           ),
//         ),
//         backgroundColor: Color(0xFF181818),
//       ),
//     );
//   }
// }
