import 'package:entryscreen/fourth.dart';
import 'package:flutter/material.dart';

class exppage extends StatefulWidget {
  const exppage({super.key});

  @override
  State<exppage> createState() => _exppageState();
}

class _exppageState extends State<exppage> {
  // final _formKey = GlobalKey<FormState>();
  // final expreg = RegExp(r'^[a-zA-Z]+$');
  TextEditingController cnt= TextEditingController();

  List input=[];
  void _addItemToList()
  {
    String text= cnt.text;
    setState(() {
      input.add("$text");
      cnt.clear();
    });

  }
  String text1="";

  void delete(index){
    setState(() {
      input.removeAt(index);
    });
  }


  void next(){
    Navigator.push(context, MaterialPageRoute(
        builder: (context)=>nextscreen(input: input)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:Colors.black,
        title: Text("Expense Category",style: TextStyle(
            color: Colors.white
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("      Category",style: TextStyle(
                    fontFamily: "Outfit",fontWeight: FontWeight.w100,
                    fontSize: 24,
                    color: Colors.black
                ),),

                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    height: 80,
                    width: 180,
                    child: TextFormField(
                      controller: cnt,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                      ),
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: "Enter your Expense",
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: 160,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black

                  ),
                  onPressed: (){
                    setState(() {
                      _addItemToList();
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>Screen()));

                    });
                  },
                  child: Text("Save",style: TextStyle(fontWeight: FontWeight.w100,
                      color: Colors.white,fontFamily: "Outfit"
                  ),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: 160,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black

                  ),
                  onPressed: (){
                    setState(() {
                      next();


                    });
                  },
                  child: Text("Show Details",
                    style: TextStyle(fontWeight: FontWeight.w100,
                      color: Colors.white,fontFamily: "Outfit"
                  ),),
                ),
              ),
            ),

            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //       backgroundColor: Colors.black
            //
            //   ),
            //   onPressed: (){
            //     setState(() {
            //       next();
            //     });
            //   },
            //   child: Text("Show De",style: TextStyle(fontWeight: FontWeight.w100,
            //       color: Colors.white,fontFamily: "Outfit"
            //   ),),
            // ),
          ],
        ),
      ),

    );
  }
}

nextscreen({required List input}) {
}





// Padding(
//   padding: const EdgeInsets.all(30),
//   child: ElevatedButton(onPressed: (){
//     if(_formKey.currentState!.validate()){
//       Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => exppage1()),(route) => false);
//     }
//
//   }, child: Text("Save")),
// )

// Padding(
//   padding: const EdgeInsets.all(40),
//   child: Container(
//     height: 40,
//     width: 100,
//     decoration: BoxDecoration(
//       color: Colors.blueGrey,
//       borderRadius: BorderRadius.circular(12)
//     ),
//     child: Center(child: Text("Save",style: TextStyle(
//       fontSize: 18,
//     ),)),
//   ),
// )
// validator: (value){
//   if (value == null || value.isEmpty) {
//     return 'Please save your expense';
//   }
//   if (!expreg.hasMatch(value)) {
//     return 'Please enter your expense';
//   }
//   return null;
// },
