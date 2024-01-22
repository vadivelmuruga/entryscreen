import 'package:entryscreen/first1.dart';
import 'package:entryscreen/second.dart';
import 'package:flutter/material.dart';
import 'dash.dart';
import 'first.dart';


class Bottom extends StatefulWidget {
  final List<String> datalist;

  const Bottom({Key? key, required this.datalist}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _index = 0;

  late final List<Widget> pages;

  @override
  void initState() {
    super.initState();
    pages = [
      display(datalist: widget.datalist,),
      Text("ok"),
      Text("ok"),
    ];
  }

  void tap(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("RETRO STATION"),
    automaticallyImplyLeading: false,
    centerTitle: true,
    ),floatingActionButton: Row(mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=>details()));
        },
          child: Icon((Icons.add)),),
        // FloatingActionButton(onPressed: (){
        //   Navigator.push(context, MaterialPageRoute(builder: (context)=>display(datalist: widget.datalist)));
        // },
        //   child: Icon((Icons.add)),),
      ]
    ),

    body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.music_note), label: "Spotify"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Insta"),
        ],
        currentIndex: _index,
        onTap: tap,
      ),
    );
  }
}