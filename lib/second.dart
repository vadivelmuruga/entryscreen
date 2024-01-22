import 'package:entryscreen/third.dart';
import 'package:flutter/material.dart';

class turf extends StatefulWidget {
  const turf({super.key});

  @override
  State<turf> createState() => _turfState();
}

class _turfState extends State<turf> {

  TextEditingController box = TextEditingController();


  List data=[];
  void _addItemToList(){
    String text=box .text;

    setState(() {
      data.add('$text');
      box.clear();
    });
  }
  String text1="";

  void delete(index){
    setState(() {
      data.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:Text ("Payment Modes ",style: TextStyle(
            fontSize: 24,fontFamily:"Outfit",fontWeight:FontWeight.w100),),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                style: TextStyle(fontFamily: "Outfit",fontWeight: FontWeight.w100),
                controller: box,
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.payment),
                    ),
                    labelText: "Search",
                    labelStyle: TextStyle(fontFamily: "Outfit",fontWeight: FontWeight.w100)
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: (Size(130, 35)),
                    primary: Colors.black,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder()
                ),
                onPressed: (){
                  setState(() {
                    _addItemToList();
                  });
                }, child: Text("Save",
                style: TextStyle(fontFamily: "Outfit",
                    fontWeight: FontWeight.w100),),
              ),
            ),
            SizedBox(
              height: 300,
            ), Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(),
              ),
              child:  ListView.builder(
                  itemCount: data.length,
                  itemBuilder:(BuildContext context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>exppage()));
                        },
                        child: Card(
                          color: Colors.black,
                          child: ListTile(
                            title: Text(data[index],
                              style: TextStyle(color:Colors.white,
                                  fontFamily: "Outfit",fontWeight: FontWeight.w100),),
                            trailing: SizedBox(
                              height: 50,
                              width: 70,
                              child: Row(
                                children: [
                                  IconButton(onPressed: (){
                                    showDialog(context: context,
                                        builder: (context)=>SimpleDialog(
                                          backgroundColor: Colors.white,
                                          children: [
                                            TextFormField(
                                              onChanged: (value){
                                                setState(() {
                                                  text1 = value;
                                                });
                                              },
                                              style: TextStyle(color: Colors.white,
                                                  fontFamily: "Outfit",fontWeight: FontWeight.w100),
                                            ),
                                            ElevatedButton(style: ElevatedButton.styleFrom(
                                                minimumSize: (Size(50, 50)),
                                                primary: Color(0xffde6d11),
                                                onPrimary: Colors.white,
                                                shape: RoundedRectangleBorder()
                                            ),onPressed: (){
                                              setState(() {
                                                Navigator.pop(context);
                                                data [index] = text1;
                                              });
                                            }, child: Text("Update",
                                              style: TextStyle(fontWeight: FontWeight.w100,
                                                  fontFamily: "Outfit"),),)
                                          ],
                                        ));
                                  }, icon:Icon(Icons.edit,color: Colors.white,),),
                                  GestureDetector(
                                    onTap: (){
                                      delete(index);
                                    },
                                    child: Icon(Icons.delete,color: Colors.white,),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}