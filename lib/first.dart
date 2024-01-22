
import 'package:entryscreen/second.dart';
import 'package:flutter/material.dart';

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  final _key=GlobalKey<FormState>();
  int index=0;
  String dropdown="Admin";

  List <String>datalist=[];



  var size,height,width;
  TextEditingController name=TextEditingController();
  TextEditingController username=TextEditingController();
  TextEditingController password=TextEditingController();

  void additemList(String dropdownvalue){
    String text=name.text;
    String user=username.text;
    String pass=password.text;
    if(text.isNotEmpty && user.isNotEmpty && pass.isNotEmpty){
      setState(() {
        datalist.add("$text\n$user\n$pass\n$dropdownvalue");
        name.clear();
        username.clear();
        password.clear();
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
          title: Text("RETRO STATION",style: TextStyle(
            fontSize: 30,
            fontWeight:FontWeight.w100,
            fontFamily: "Outfit,",
          ),),centerTitle: true,
          backgroundColor:  Colors.white
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _key,
          child: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height*2,
            width: MediaQuery.of(context).size.width*1,
            child: Column(
              children: [SizedBox(height:MediaQuery.of(context).size.height*0,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Usertype:",style: TextStyle(color: Colors.black,
                          fontFamily: "Outfit",fontWeight: FontWeight.w100,
                          fontSize: 18),),
                      SizedBox(width: 15,),
                      DropdownButton<String>(
                        value: dropdown,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: <String>["User", "Admin"].map<DropdownMenuItem<String>>((String item) {
                          return DropdownMenuItem(
                            value: item,
                            child: Text(item,style: TextStyle(color: Colors.black),),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdown = newValue!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "Enter Name",
                        hintStyle: TextStyle(color: Colors.black,
                            fontFamily: "Outfit",fontWeight: FontWeight.w100,
                            fontSize: 18
                        )
                    ),
                    validator: (value){
                      if(value==null||value.isEmpty||value.length<4)
                      {
                        return 'plesae enter valid name';
                      }
                    },
                  ),
                ),
                SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: username,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.contact_mail_sharp),
                        hintText: "Ener UserName",
                        hintStyle: TextStyle(color: Colors.black,
                            fontFamily: "Outfit",fontWeight: FontWeight.w100,
                            fontSize: 18)
                    ),
                    validator: (value){
                      if(value==null||value.isEmpty||value.length<4)
                      {
                        return 'plesae enter valid Username';
                      }
                    },
                  ),
                ),
                SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: password,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password_outlined),
                        hintText: "Enter Password",
                        hintStyle: TextStyle(color: Colors.black,
                            fontFamily: "Outfit",fontWeight: FontWeight.w100,
                            fontSize: 18)
                    ),
                    // validator: (value)
                    // {
                    //   if(value==null||value.isEmpty||!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{5,}$').hasMatch(value))
                    //   {
                    //     return 'please enter one character & one letters & one number';
                    //   }
                    //
                    // },
                  ),
                ),
                SizedBox(height: 25,),
                ElevatedButton(style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: Size(MediaQuery.of(context).size.width*0.6,
                        45)
                ),onPressed: (){
                  if (_key.currentState!.validate()){

                  additemList(dropdown);
                   Navigator.push(context,
                       MaterialPageRoute(builder: (context)=>turf()));
                }
                }, child: Text("Save",style: TextStyle(
                    fontFamily: "Outfit",fontWeight: FontWeight.w100,
                    fontSize: 18))),
                // SizedBox(
                //   height: 20,
                // ),
                // ElevatedButton(style: ElevatedButton.styleFrom(
                //     backgroundColor: Colors.black,
                //     foregroundColor: Colors.white,
                //     minimumSize: Size(MediaQuery.of(context).size.width*0.6,
                //         45)
                // ),onPressed: (){
                //   Delete();
                // }, child: Text("See Details",style: TextStyle(
                //     fontFamily: "Outfit",fontWeight: FontWeight.w100,
                //     fontSize: 18),))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
