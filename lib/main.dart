import 'package:flutter/material.dart';
void main(){
  runApp(Myapp(
  ));
}
class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(home: Scaffold(

      backgroundColor: Color(0xffe5e9f0),
      appBar: AppBar(
        elevation: 0,
        title:

        Text("Personal Information",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),

        leading: Padding(
          padding: const EdgeInsets.only(left: 15.5,),
          child: CircleAvatar(

            backgroundColor: Colors.white, // تغيير لون خلفية الدائرة إلى الأبيض
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_new),
              color: Colors.black, // تغيير لون الأيقونة
              onPressed: () {
                Navigator.of(context).pop(); // للرجوع للشاشة السابقة
              },
            ),),
        ),

        backgroundColor: Color(0xffe5e9f0),
        // shadowColor: Colors.white,

      ),

body: SingleChildScrollView(
child: Column(
  children: <Widget>[

    SizedBox(height: size.height*15/932,),

    formField(hintText: "Enter your name", textInputType: TextInputType.name, name: "Name"),
    formField(hintText: "Enter your birth data", textInputType: TextInputType.datetime, name:" Birthdata"),
    formField(hintText: "Enter your gender", textInputType: TextInputType.text, name: "Gender"),
    formField(hintText: "Enter your blood groub", textInputType: TextInputType.text, name:"Blood groub"),
    formField(hintText: "Enter your Phone number", textInputType: TextInputType.phone, name:"Phone number"),
    formField(hintText: "Enter your email", textInputType: TextInputType.emailAddress, name:"E-mail"),

    SizedBox(height: size.height*53/932,),
    Container(
      width: size.width * 330 / 430,
      height:size.height*50/932,
      child: MaterialButton(
        onPressed: () {},
        child: Text('Save',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
        color: Color(0xff50b7c5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
      ),
    ),
  ],
),
),
    ),
    );
  }
}
class formField extends StatefulWidget {
final  String name;
  final String hintText;
  final TextInputType textInputType;
  formField({super.key, required this.hintText, required this.textInputType, required this.name,});
  @override
  State<formField> createState() => _formFieldState();
}
class _formFieldState extends State<formField> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return
      Column(
        children: [

          Padding(
            padding: EdgeInsets.only(left:  size.width * 48 / 430),
            child: Row(
              children: [
                Text(widget.name,style: TextStyle(color: Color(0xff757575),fontSize: 16),)
              ],
            ),
          ),




          Padding(
          padding:  EdgeInsets.only(left:  size.width * 52 / 430,right: size.width * 52 / 430,top: size.height*12/932,bottom: size.height*19/932),

          child: TextFormField(

            keyboardType: widget.textInputType,

            decoration: InputDecoration(

              hintText: widget.hintText,suffixStyle: TextStyle(color: Color(0xffB2AAAA)),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),

              ),

            ),
          ),
    ),
        ],
      );
  }
}





