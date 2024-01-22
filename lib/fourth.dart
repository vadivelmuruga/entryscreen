import 'package:entryscreen/bottom.dart';
import 'package:flutter/material.dart';
class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  final _key = GlobalKey<FormState>();
  final List datalist=[];
  final abc = TextEditingController();
  final abcd = TextEditingController();

  void add(){
    String day=abc.text;
    String amout=abcd.text;
    if(day.isNotEmpty&&amout.isNotEmpty){
      datalist.add("$day\n$amout");
    }

  }
  String dropdown = 'toolkit';
  var data = [
    'toolkit',
    '2',
    '3',
    '4',
  ];
  int curindex=0;
  String dropdownvalue = 'data';
  var items = [
    'data',
    '2',
    '3',
    '4',
  ];
  int currentindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back),
        title: Text('Add Expense',style: TextStyle(
            fontWeight: FontWeight.w100,fontSize: 24,
            fontFamily: "Outfit"),),
      ),backgroundColor: Colors.white,
      body: Form(
        key: _key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFormField(
              keyboardType: TextInputType.none,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.date_range_rounded,),
                labelText: 'Date',
                labelStyle: TextStyle(fontWeight: FontWeight.w100,fontSize: 18,
                    fontFamily: "Outfit"),
              ),
            ),
            DropdownButtonFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.category_rounded,),
                ),
                hint: Text('Category',style:TextStyle(fontWeight: FontWeight.w100,fontSize: 18,
                    fontFamily: "Outfit") ,),
                dropdownColor: Colors.black,
                items: ['toolkit','rent','food',].map((String value){
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value,style: TextStyle(color: Colors.white),),
                  );
                }
                ).toList(),
                onChanged: (_){}
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.date_range_rounded),
                labelText: 'Amount',
                labelStyle: TextStyle(fontWeight: FontWeight.w100,fontSize: 18,
                    fontFamily: "Outfit"),
              ),
            ),
            DropdownButtonFormField(
                decoration: InputDecoration(
                ),
                hint: Text('Spent mode',
                  style:TextStyle(color:Colors.black,
                      fontWeight: FontWeight.w100,fontSize: 18,
                    fontFamily: "Outfit") ,),
                dropdownColor: Colors.black,
                items: ['_','_','_',].map((String value){
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value,style: TextStyle(color: Colors.white),),
                  );
                }
                ).toList(),
                onChanged: (_){}
            ),
            Row(
              children: [SizedBox(width: 100,),
                Text('Attachment',style: TextStyle(fontWeight: FontWeight.w100,fontSize: 18,
                    fontFamily: "Outfit"),),
                SizedBox(width: 20,),
                ElevatedButton(
                  onPressed: (){}, child: Text('Upload'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: (){Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Bottom(datalist: [])));
              }, child: Text('Save'),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(),
              ),)
          ],
        ),
      ),
    );
  }
}