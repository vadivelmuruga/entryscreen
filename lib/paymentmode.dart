import 'package:flutter/material.dart';
class paymode extends StatefulWidget {
  const paymode({super.key});

  @override
  State<paymode> createState() => _paymodeState();
}

class _paymodeState extends State<paymode> {
  String dropdownValue = "Credit Card";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff092b68),
        leading: Icon(Icons.arrow_back,color: Colors.white,),
        title: Text("Slot Booking",
          style: TextStyle(fontSize: 18,color: Colors.white,
              fontWeight: FontWeight.w900,fontFamily: "Outfit"),),
        actions: [
          Icon(Icons.calendar_month,color: Colors.white,),
        ],
      ),backgroundColor: Color(0xff092b68),
      // body: Column(mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Text("Payment Mode  ",
      //           style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
      //         DropdownButton(
      //             alignment: Alignment.centerRight,
      //             borderRadius: BorderRadius.circular(8),
      //             dropdownColor: Color(0xffc4c5c5),
      //             value: dropdownValue,
      //             icon: Icon(Icons.keyboard_arrow_down),
      //             items:[
      //               "Credit Card",
      //               "Debit Card",
      //               "Net banking"
      //             ].map((String items)
      //             {
      //               return DropdownMenuItem(
      //                   alignment: Alignment.centerLeft,
      //                   value: items,
      //                   child:Text(items) );
      //             }
      //             ).toList(), onChanged: (String? newValue){
      //           setState(() {
      //             dropdownValue=newValue!;
      //           }
      //           );
      //         }
      //         ),
      //       ],
      //     ),
      //     SizedBox(height: 50,),
      //     ElevatedButton(onPressed: (){},
      //         child: Text("Save",style: TextStyle(fontSize: 15),),
      //     style: ElevatedButton.styleFrom(
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(8),
      //       )
      //     ),)
      //   ],
      // ),bb
      body: Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Date  ",
                style: TextStyle(fontFamily: "Outfit",
                    fontWeight: FontWeight.w900,
                    fontSize: 18,color: Colors.white),),

              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  color: Color(0xffde6d11),
                  shape: BoxShape.rectangle,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Ph.No *  ",
                style: TextStyle(fontSize: 18,fontFamily: "Outfit",
                    color: Colors.white,fontWeight: FontWeight.w900),),
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  color: Color(0xffde6d11),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text("Name *  ",
                style: TextStyle(fontWeight: FontWeight.w900,
                    fontSize: 18,fontFamily: "Outfit",color: Colors.white),),
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  color: Color(0xffde6d11),
                  shape: BoxShape.rectangle,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text("Doc   ",
                style: TextStyle(fontWeight: FontWeight.w900,
                    fontSize: 18,fontFamily: "Outfit",color: Colors.white),),
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  color: Color(0xffde6d11),
                  shape: BoxShape.rectangle,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text("From *   ",
                style: TextStyle(fontWeight: FontWeight.w900,
                    fontSize: 18,fontFamily: "Outfit",color: Colors.white),),
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  color: Color(0xffde6d11),
                  shape: BoxShape.rectangle,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 30,
                width: 60,
                decoration: BoxDecoration(
                    color: Color(0xffde6d11),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all()
                ),
                child: Center(child: Text("AM/PM",
                  style: TextStyle(fontSize: 12,fontFamily: "Outfit",
                      fontWeight: FontWeight.w900,color: Colors.white),)),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text("To *   ",
                style: TextStyle(fontWeight: FontWeight.w900,
                    fontSize: 18,fontFamily: "Outfit",color: Colors.white),),
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  color: Color(0xffde6d11),
                  shape: BoxShape.rectangle,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 30,
                width: 60,
                decoration: BoxDecoration(
                    color: Color(0xffde6d11),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all()
                ),
                child: Center(child: Text("AM/PM",
                  style: TextStyle(fontSize: 12,fontFamily: "Outfit",
                      fontWeight: FontWeight.w900,color: Colors.white),)),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text("Total Amount *  ",
                style: TextStyle(
                    fontFamily: 'Outfit',
                    fontWeight: FontWeight.w900,
                    fontSize: 18,color: Colors.white),),
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  color: Color(0xffde6d11),
                  shape: BoxShape.rectangle,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text("Advance Recived *  ",
                style: TextStyle(fontFamily: 'Outfit',
                    fontWeight: FontWeight.w900,
                    fontSize: 18,color: Colors.white),),
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  color: Color(0xffde6d11),
                  shape: BoxShape.rectangle,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text("Advance Recived *  ",
                style: TextStyle(fontFamily: "Outfit",
                    fontWeight: FontWeight.w900,
                    fontSize: 18,color: Colors.white),),
              Text("Yes ,",style: TextStyle(fontFamily: "Outfit",fontSize: 18,
                  fontWeight: FontWeight.w900,color:Colors.white),),
              Text(" No",style: TextStyle(fontFamily: "Outfit",fontSize: 18,
                  fontWeight: FontWeight.w900,color: Colors.white),)
            ],

          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text("Balance Amount : ",
                style: TextStyle(fontWeight: FontWeight.w900,fontSize: 18,
                    fontFamily: "Outfit",color: Colors.white),),
              Container(
                height: 30,
                width: 80,
                decoration: BoxDecoration(
                  color: Color(0xffde6d11),
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("Rs   ",
                    style: TextStyle(fontWeight: FontWeight.w900,fontSize: 18,
                      fontFamily: "Outfit",color: Colors.white),),
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){},
                  child: Text("Save",
                    style: TextStyle(fontWeight: FontWeight.w900,fontSize: 18,
                      fontFamily: "Outfit",color: Colors.white),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffde6d11),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                )
              ),)
            ],
          )
        ],
      ),
    );
  }
}
