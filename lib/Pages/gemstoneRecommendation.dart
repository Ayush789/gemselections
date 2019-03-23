import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gemselections/Pages/crudMethods.dart';
import 'package:gemselections/Pages/mainscaffold.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:connectivity/connectivity.dart';




class GemStoneRecommendation extends StatefulWidget {
  @override
  _GemStoneRecommendationState createState() => _GemStoneRecommendationState();
}

class _GemStoneRecommendationState extends State<GemStoneRecommendation> {

static GlobalKey<ScaffoldState> mScaffoldState = new GlobalKey<ScaffoldState>();
    final _formKey = GlobalKey<FormState>();
   crudMedthods crudObj = new crudMedthods();


   TextEditingController _name = new TextEditingController();
    TextEditingController _placeOfbirth = new TextEditingController();
     TextEditingController _timeOfbirth = new TextEditingController();
      TextEditingController _phone = new TextEditingController();
    TextEditingController _dateOfbirth = new TextEditingController();
        TextEditingController _questions = new TextEditingController();

        Future<void> showSnack() async{
            var connectivityResult = await (Connectivity().checkConnectivity());
                          if (connectivityResult == ConnectivityResult.mobile) {
                          mScaffoldState.currentState.showSnackBar(new SnackBar(content: Text("Sent"),));
                  //  Navigator.pop(context);
                          } else if (connectivityResult == ConnectivityResult.wifi) {
                          mScaffoldState.currentState.showSnackBar(new SnackBar(content: Text("Sent"),));
                  //  Navigator.pop(context);
                          }else {
                   mScaffoldState.currentState.showSnackBar(new SnackBar(content: Text("No Internet"),));

                          }
        }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: mScaffoldState,
      appBar: AppBar(
        title: Text("Gemstones Recommendation"),
        backgroundColor: Colors.blue[900],
      ),
      body: ListView(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 10.0),),
          GestureDetector(
          child:Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: FadeInImage(
                  placeholder: AssetImage(placeholder),
                  image: NetworkImage(
                      "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/YoutubeImages%2FGemstone%20Recom.jpeg?alt=media&token=29d73313-33ec-44f4-9ac5-0ce357a4c75d"),
                ),
                decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 20.0,
                  offset: new Offset(2.0, 7.0),
                ),
              ],
            ),
          ),
              onTap: () => launchYoutube("DRZfRX9YKmU"),
            ),
          // Image.network(
          //     "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/YoutubeImages%2FGemstone%20Recom.jpeg?alt=media&token=29d73313-33ec-44f4-9ac5-0ce357a4c75d"),
          Form(
            key: _formKey,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top:10.0),),
                  // Center(child: Text("Gemstones Recommendation", style: TextStyle(fontSize: 25.0, fontStyle: FontStyle.italic),)),
                  Padding(padding: EdgeInsets.only(top:15.0),),
                    TextFormField(
                      controller: _name,
                      validator: (value){
                          if(value.isEmpty)
                          return 'Required field';
                        },
                    decoration: InputDecoration(
                      labelText: "Name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top:7.0),),
                  TextFormField(
                    controller: _placeOfbirth,
                     validator: (value){
                          if(value.isEmpty)
                          return 'Required field';
                        },
                    decoration: InputDecoration(
                      labelText: "Place of Birth",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top:7.0),),
                  TextFormField(
                    controller: _timeOfbirth,
                     validator: (value){
                          if(value.isEmpty)
                          return 'Required field';
                        },
                    decoration: InputDecoration(
                      labelText: "Time of Birth",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top:7.0),),
                  TextFormField(
                    controller: _phone,
                     validator: (value){
                          if(value.isEmpty)
                          return 'Required field';
                        },
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  Padding(padding: EdgeInsets.only(top:7.0),),
                  TextFormField(
                    controller: _dateOfbirth,
                     validator: (value){
                          if(value.isEmpty)
                          return 'Required field';
                        },
                    decoration: InputDecoration(
                      labelText: "Date of birth",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top:7.0),),
                  TextFormField(
                    controller: _questions,
                    decoration: InputDecoration(
                      labelText: "Quations",
                      border: OutlineInputBorder(),
                    ),
                  ),
                Padding(padding: EdgeInsets.only(top:7.0),),
                  RaisedButton(
                    child: Text("Submit",style: TextStyle(color: Colors.yellow[700]),),
                     shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                     color: Colors.blue[900],
                    onPressed: () {

                      if(_formKey.currentState.validate()){
                       crudObj.addData({
                            
                            'Name'        : _name.text,
                            'PlaceOfBirth': _placeOfbirth.text,
                            'TimeOfBirth' : _timeOfbirth.text,
                            'Phone'       : _phone.text,
                            'DateOfBirth' : _dateOfbirth.text,
                            'Questions'   : _questions.text

                          },context);
                         
                       showSnack();
                          
                      }
                          _name.clear();
                          _placeOfbirth.clear();
                          _timeOfbirth.clear();
                          _phone.clear();
                          _dateOfbirth.clear();
                          _questions.clear();

                      
                    },
                  )
                  
              
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
