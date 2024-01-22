import 'package:flutter/material.dart';

class dash extends StatefulWidget {
  final List<String>datalist;
  const dash({super.key, required this.datalist});

  @override
  State<dash> createState() => _dashState();
}

class _dashState extends State<dash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: widget.datalist.length,
        itemBuilder: (BuildContext context, int index) {
          List<String> values = widget.datalist[index].split('\n');
          String name = values[0];
          String username = values[1];
          String password = values[2];
          String dropdown = values[3];

          return Card(
            color: Colors.white,
            child: ListTile(
              title: Text("Name: $name"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Username: $username"),
                  Text("Password: $password"),
                  Text("Dropdown: $dropdown"),
                ],
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>dash(datalist: widget.datalist)));
              },
            ),
          );
        },
      ),
    );
  }
}
