import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ScreenPage(title: 'MOTIVATIONAL QUOTES'),
    );
  }
}

class ScreenPage extends StatefulWidget {
  const ScreenPage({super.key, required this.title});

  final String title;

  @override
  State<ScreenPage> createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {
  List<String> quotes = [
    '“Just one small positive thought in the morning can change your whole day.”',
    '“It is never too late to be what you might have been.”',
    '“Smart people learn from everything and everyone, average people from their experiences, stupid people already have all the answers.”',
    '“Stay away from those people who try to disparage your ambitions."',
    '“Develop success from failures. Discouragement and failure are two of the surest stepping stones to success.”',
    '“If you are working on something that you really care about, you don’t have to be pushed. The vision pulls you.”',
    '“Setting goals is the first step in turning the invisible into the visible.”',
    '“I am not a product of my circumstances. I am a product of my decisions.” ',
    '“The only one who can tell you “you can’t win” is you and you don’t have to listen.”',
    '“Life is like riding a bicycle. To keep your balance you must keep moving.”',
    '“Courage is the most important of all the virtues because without courage, you cannot practice any other virtue consistently.”',
    '“I do not try to dance better than anyone else. I only try to dance better than myself.”',
    '"The reason we struggle with insecurity is because we compare our behind-the-scenes with everyone else’s highlight reel." ',
    '“You cannot always control what goes on outside. But you can always control what goes on inside.”',
    '“Start where you are. Use what you have. Do what you can.”',
    '“When everything seems to be going against you, remember that the airplane takes off against the wind, not with it.”',
    '“If we take care of the moments, the years will take care of themselves.” ',
    '“The same boiling water that softens the potato hardens the egg. It’s what you’re made of. Not the circumstances.”',
    '“The hard days are what make you stronger.”',
    '“Keep your eyes on the stars, and your feet on the ground.” ',
    '“Whenever you find yourself doubting how far you can go, just remember how far you have come.”',
    '“If you cannot do great things, do small things in a great way.',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),

          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: GridView.builder(
            itemCount: quotes.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 12),
              itemBuilder: (BuildContext context, int index){
              return quotesFields(quotes[index]);
              }
          )
      ),
    );
  }

  Widget quotesFields(String quote) {
    return Ink(
      decoration:  BoxDecoration(
        color: Color(0xFFAADEF5),
        borderRadius: BorderRadius.circular(15),
        boxShadow:  [
          BoxShadow(
            color: Color(0xFF4A5C73).withOpacity(0.4),
            offset: Offset(3,3) ,
            blurRadius:5 ,
            spreadRadius: 0.5 ,
          )
        ]
      ),
      child: Center(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 5),
        child: Text(quote,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 17,
              color: Color(0xFF141F1F)
          ),
        ),),
      ),
    );
  }
}
