import 'package:flutter/material.dart';


class display extends StatefulWidget {
  final List<String> datalist;
  display({super.key, required this.datalist});

  @override
  State<display> createState() => _displayState();
}

class _displayState extends State<display> {

  String name="";
  String username="";
  String password="";


  void delete(int index){
    setState(() {
      widget.datalist.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text("Details",
              style: TextStyle(fontFamily: "Outfit",
                  fontWeight:FontWeight.w100,fontSize: 18,color: Colors.black),),
            centerTitle: true,
            backgroundColor: Colors.white
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: ListView.builder(
            itemCount:widget.datalist.length,
            itemBuilder: (BuildContext context, int index) {
              List<String> values = widget.datalist[index].split('\n');
              String name = values[0];
              String username = values[1];
              String password = values[2];
              String dropdown = values[3];

              return Card(
                color: Colors.black,
                child: ListTile(
                  title: Text("Name:$name",style: TextStyle(fontSize: 14,color: Colors.white),),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Username: $username",style: TextStyle(color: Colors.white)),
                      Text("Password: $password",style: TextStyle(color: Colors.white),),
                      Text("Dropdown: $dropdown",style: TextStyle(color: Colors.white),),
                    ],
                  ),
                  trailing: SizedBox(height: 50,width:100,
                    child: Row(
                      children: [
                        IconButton(onPressed: (){
                          name= widget.datalist[index].split("\n")[0];
                          username=widget.datalist[index].split("\n")[1];
                          password=widget.datalist[index].split("\n")[2];
                          dropdown=widget.datalist[index].split("\n")[3];

                          showDialog(context: context, builder: (context)=>Container(
                            height: MediaQuery.of(context).size.height*0.2,
                            width: MediaQuery.of(context).size.width*0.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: SimpleDialog(
                              backgroundColor:  Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    controller: TextEditingController(text: name),
                                    onChanged: (value){
                                      setState(() {
                                        name=value;
                                      });
                                    },
                                    decoration: InputDecoration(
                                        hintText: "Name",
                                        hintStyle: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Outfit",fontWeight: FontWeight.w100,
                                            fontSize: 18
                                        )
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    controller: TextEditingController(text: username),
                                    onChanged: (value){
                                      setState(() {
                                        username=value;
                                      });
                                    },
                                    decoration: InputDecoration(
                                        hintText: "username",
                                        hintStyle: TextStyle(color: Colors.black,
                                            fontFamily: "Outfit",fontWeight: FontWeight.w100,
                                            fontSize: 18
                                        )
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    controller: TextEditingController(text: password),
                                    onChanged: (value){
                                      setState(() {
                                        password=value;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      hintText: "password",
                                      hintStyle: TextStyle(color: Colors.black,
                                          fontFamily: "Outfit",fontWeight: FontWeight.w100,
                                          fontSize: 18
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    controller: TextEditingController(text: dropdown),
                                    onChanged: (value){
                                      setState(() {
                                        dropdown=value;
                                      });
                                    },
                                    decoration: InputDecoration(
                                        hintText: "username",
                                        hintStyle: TextStyle(color: Colors.black,
                                            fontFamily: "Outfit",fontWeight: FontWeight.w100,
                                            fontSize: 18
                                        )
                                    ),
                                  ),
                                ),
                                ElevatedButton(style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    foregroundColor: Colors.white,
                                    minimumSize: Size(MediaQuery.of(context).size.width*0.3,
                                        55)
                                ),onPressed: (){
                                  setState(() {
                                    widget.datalist[index]= "$name\n$username\n$password\n$dropdown";
                                  });
                                  Navigator.pop(context);
                                }, child: Text("Update"),)
                              ],
                            ),
                          ));
                        }, icon: Icon(Icons.edit,color: Colors.white,)),
                        SizedBox(width: 20,),
                        IconButton(onPressed: (){
                          delete(index);
                        }, icon: Icon(Icons.delete,color: Colors.white,))
                      ],
                    ),),
                ),
              );
            },
          ),
        ),
        backgroundColor: Colors.white
    );
  }
}