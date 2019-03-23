import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gemselections/Pages/crudMethods.dart';
import 'package:gemselections/Pages/diamonds.dart';
import 'package:gemselections/Pages/mainscaffold.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:gemselections/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:cached_network_image/cached_network_image.dart';




class JwelleryPage extends StatefulWidget {
  @override
  _JwelleryPageState createState() => _JwelleryPageState();
}

class _JwelleryPageState extends State<JwelleryPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          Container(
            // padding: EdgeInsets.all(4.0),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CreateYourOwnJewelleryPage()));
              },
              child: Column(
                children: <Widget>[
                     Container(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: GestureDetector(
              child: FadeInImage(
                placeholder: AssetImage(placeholder),
                image: NetworkImage(
                    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/YoutubeImages%2FGem%20selections%20App.jpeg?alt=media&token=811ed36e-f562-4501-9321-c970e5c771b1"),
              ),
              onTap: () => launchYoutube(mobile_app_video),
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

          Container(
            padding: EdgeInsets.only(top: 10.0),
            child: Column(
              children: <Widget>[
              Text("Why to buy Jwellery from Gem Selections App?\n\n",
              style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 15.0,
              color: Colors.blue[00]),
              textAlign: TextAlign.center,),
              Text("1. You can design your own jewellery using our app.\n"),
              Text("2. Gem Selections is the only organisation in India to sell Govt. Lab Certified GemStones, Diamonds and Jewellery.\n"),
              Text("3. Buy Jewellery at real - time Gold and Silver rates using the Gem Selectiolns App.\n"),
            ],),
          ),
                  Card(
                    elevation: 10.0,
                    child: Image.asset("assets/category_create_your_own_cewellery.png")),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DiamondJewelleryPage()));
              },
              child: Column(
                children: <Widget>[
                  Card(
                    elevation: 10.0,
                    child: Image.asset("assets/category_diamond_jewellery.png")),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GemStuddedJewelleryPage()));
              },
              child: Column(
                children: <Widget>[
                  Card(
                    elevation: 10.0,
                    child: Image.asset("assets/category_gem_studded_jewellery.png")),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => JewelleryViewPage(
                              type: "Victorian",
                              orderId: jewel_victorian,
                            )));
              },
              child: Column(
                children: <Widget>[
                  Card(
                    elevation: 10.0,
                    child: Image.asset("assets/category_victorian_jewellery_.png")),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class JewelleryViewPage extends StatefulWidget {
  String type = "";
  var orderId;

  JewelleryViewPage({@required this.type, this.orderId});

  @override
  _JewelleryViewPageState createState() => _JewelleryViewPageState();
}

class _JewelleryViewPageState extends State<JewelleryViewPage> {


  void _showDialog(AsyncSnapshot snap,int index, int listLength){

        crudMedthods crudObj = new crudMedthods();
        bool _autoValidate = false;

          final _formKey = GlobalKey<FormState>();
        

      FocusNode _focus = new FocusNode();

      TextEditingController _name = new TextEditingController();
    TextEditingController _email = new TextEditingController();
     TextEditingController _phone = new TextEditingController();
      TextEditingController _remarks = new TextEditingController();
    ScrollController _scrollController = new ScrollController();
    PageController _pageController = new PageController(initialPage: index);
        // PageController _pageController = new PageController();


    void _onFocusChange(){
    // debugPrint("Focus: "+_focus.hasFocus.toString());
      Future.delayed(const Duration(milliseconds: 500), () {
                    // setState(() {
                     _scrollController.animateTo(_scrollController.position.maxScrollExtent,
                       curve: Curves.easeInOut,
                          duration: Duration(seconds: 1));
                    // });
                  });
    
  }

       _focus.addListener(_onFocusChange);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: Container(
            // height: MediaQuery.of(context).size.height/1.5,
            // width: MediaQuery.of(context).size.width/1.1,
            child: AlertDialog(
              
                content: PageView.builder(
                  // onPageChanged: _onPageChanged,
                  controller: _pageController,
                  itemBuilder: (context, position){
                    return  SingleChildScrollView(
                      controller: _scrollController,
                 child: Container(
                     child: Column(
             children: <Widget>[
              //  Image.network(
              //        snap.data.data[widget.type][position],
              //      ),
              CachedNetworkImage(
                  imageUrl: snap.data.data[widget.type][position],
                  placeholder: (context, url) => Align(alignment: Alignment.center,child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) =>Icon(Icons.error),
                ),
             Padding(padding: EdgeInsets.only(top: 10.0),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      _pageController.animateToPage(position-1,
                       curve: Curves.easeInOut,
                          duration: Duration(seconds: 1));
                  FocusScope.of(context).requestFocus(new FocusNode());
     
                    },
                                      child: Icon(Icons.arrow_left,
                    size: 50,
                    color: Colors.black54,),
                  ),
                  GestureDetector(
                    onTap: (){
                      _scrollController.animateTo(_scrollController.position.maxScrollExtent,
                       curve: Curves.easeInOut,
                          duration: Duration(seconds: 1));
                    },
                    child: Text(widget.orderId[position],
                            style: TextStyle(fontWeight: FontWeight.bold),),),
                  GestureDetector(
                      onTap: (){
                      _pageController.animateToPage(position+1,
                       curve: Curves.easeInOut,
                          duration: Duration(seconds: 1));

                FocusScope.of(context).requestFocus(new FocusNode());

                    },
                                      child: Icon(Icons.arrow_right,
                    size: 50,
                    color: Colors.black54,),
                  )
                ],
              ),
              Form(      
                key: _formKey, 
                autovalidate: _autoValidate,
                  child: Theme(
                  data: ThemeData(
                    inputDecorationTheme: InputDecorationTheme(
                      labelStyle: TextStyle(
                        color: Colors.orange,
                      )
                    )
                  ) ,
                        child: Padding(

              padding: EdgeInsets.symmetric(horizontal:5.0),
                     child: Column(

                    children: <Widget>[

                      TextFormField(
                        focusNode: _focus,
                        controller: _name,
                        autofocus: true,
                        validator: (value){
                          if(value.isEmpty)
                          return 'Required field';
                        },
                          decoration: InputDecoration(
             labelText: "Enter Name",
                          ),
                          keyboardType: TextInputType.text,
                         
                        ),

                       TextFormField(
                          validator: (value){
                          Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
                        },
                         controller: _email,
              decoration: InputDecoration(
             labelText: "Enter Email"
             
              ),
              keyboardType: TextInputType.emailAddress,
                      ),
                        TextFormField(
                           validator: (value){
                        
                           if (value.length != 10)
                            return 'Mobile Number must be of 10 digit';
                        
                        },
                          controller: _phone,
                        decoration: InputDecoration(
             labelText: "Enter Phone No"
                        ),
                        keyboardType: TextInputType.number,
                      ),
                        Container(
             height: 100,
             child: TextFormField(
               controller: _remarks,
             decoration: InputDecoration(
                  labelText: "Remark (if any)"
             ),
             keyboardType: TextInputType.text,
                      ),
                        ),
                      
                      

                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      MaterialButton(
                        child: Text("Request Price",
                        style: TextStyle(color: Colors.white),),
                        elevation: 4.0,
                        color: Colors.orange,
                        onPressed: (){

                          if(_formKey.currentState.validate()){
                            crudObj.addData({
                            'Product No': jewel_victorian[position],
                            'Image URL' : snap.data.data[widget.type][position],
                            'Name'      : _name.text,
                            'Email'     : _email.text,
                            'Phone No.' : _phone.text,
                            'Remarks'   : _remarks.text,
                          },context);
                          } else{
                            setState(() {
                             _autoValidate = true; 
                            });
                          }
                       
                           
                        },
                      )
                    ],
                  ),
                        ),
                  ),
             ),
             ],
                     ),
                   ),
                 );
                  },
                  itemCount: listLength,
                )
              ),
          ),
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    DocumentReference ref =
        Firestore.instance.collection("AppData").document("Jewellery");
        // final ref = FirebaseStorage.instance.ref().child('jewellery-images/victorian');
        
    double w = MediaQuery.of(context).size.width;

    return MainScaffold(
      body: SingleChildScrollView(
              child: Column(
          // addAutomaticKeepAlives: true,
          children: <Widget>[
            widget.type == 'Victorian'?
             Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: GestureDetector(
                child: FadeInImage(
                  placeholder: AssetImage(placeholder),
                  image: NetworkImage(
                      "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/YoutubeImages%2FVictorian%20Jewellery.jpeg?alt=media&token=578e6020-f56e-4c2f-a786-aa4e2d912ecd"),
                ),
                onTap: () => launchYoutube(victorian_jewellery),
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
            ):
            Padding(padding: EdgeInsets.only(top: 5),),
            FutureBuilder(
                builder: (context, snap) {
                  if (snap.connectionState == ConnectionState.done) {
                    print(snap.data.data);
                    return GridView.count(
                      
                      physics: ClampingScrollPhysics(),
                      padding: EdgeInsets.only(top: 10.0),
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      children: List.generate(snap.data.data[widget.type].length,
              (index) {
            return 
            GestureDetector(
              onTap: ()=> _showDialog(snap, index, snap.data.data[widget.type].length ),
                                    child: Card(
                                      child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child: 
                  CachedNetworkImage(
                    imageUrl: snap.data.data[widget.type][index],
                    placeholder: (context, url) =>Align(alignment: Alignment.center,child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) =>Icon(Icons.error),
                  )
                  // child: Image.network(snap.data.data[widget.type][index]),
                ),
              ),
            );
                      }),
                    );
          
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
                future: ref.get(),
              )
          ],
        ),
      ),
    );
  }
  
}

class CreateYourOwnJewelleryPage extends StatefulWidget {
  @override
  _CreateYourOwnJewelleryPageState createState() =>
      _CreateYourOwnJewelleryPageState();
}

class _CreateYourOwnJewelleryPageState
    extends State<CreateYourOwnJewelleryPage> {
        File imageToSend = null;
        final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
      PageController _pageController = new PageController(initialPage: 0, keepPage: false);

       void _uploadFromGallery() async {
    var img = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      imageToSend = img;
    });
  }

  void _uploadFromCamera() async {
    var img = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      imageToSend = img;
    });
  }

 void _showDialog() {
    // flutter defined function

    final _formKey = GlobalKey<FormState>();
  var nameController = new TextEditingController();
    var emailController = new TextEditingController();
  var phoneController = new TextEditingController();

    Future uploadImage(String name, String email, String phone) async {
    print("Uploading");
    StorageReference storageReference = FirebaseStorage.instance.ref().child(
        "UserData/Orders/$email-${DateTime.now().millisecondsSinceEpoch}.jpg");
    StorageUploadTask task = storageReference.putFile(imageToSend);
    task.onComplete.then((ref) {
      print("Uploaded");
      ref.ref.getDownloadURL().then((str) {
        print(str);

        var ref = Firestore.instance.collection("CreateOwnJewel");
        Map<String, List<Map<String, String>>> data = {
          "${name} : ${DateTime.now().toString()}": [
            {"Name": name},
            {"Email": email},
            {"Phone": phone},
            {"Image": str}
          ]
        };
        print("Adding ${data}");

        Firestore.instance.runTransaction((trx) async {
          print("Running Transaction");
          ref.add(data).then((ref) {
            print("Got ref ${ref}");
            // _scaffoldKey.currentState.showSnackBar(
            //     SnackBar(content: Text("Your Order has been recorded.")));
          }).catchError((e) {
            print(e);
          });
        });

        print("Added");
      }).catchError((e) {
        print(e);
      });
    }).catchError((e) {
      print(e);
    });
    Navigator.pop(context);
    // Scaffold.of(context).showSnackBar(SnackBar(content: Text("Uploaded"),));
    _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("Uploaded"),));
  }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          content: SingleChildScrollView(
          child: Center(child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return "Please Enter Name";
                  }
                },
                controller: nameController,
                autofocus: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: "Name",
                ),
                keyboardType: TextInputType.text,
              ),
              TextFormField(
                validator: (value) {
                  Pattern pattern =
                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                  RegExp regex = new RegExp(pattern);
                  if (!regex.hasMatch(value))
                    return 'Please Enter Valid Email';
                },
                controller: emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  labelText: "Email",
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              TextFormField(
                validator: (value) {
                  if (value.length != 10) {
                    return "Please Enter Valid 10 Digit Mobile Number";
                  }
                },
                controller: phoneController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  labelText: "Phone",
                ),
                keyboardType: TextInputType.number,
              ),
              
              Container(
                padding: EdgeInsets.only(top: 10.0),
                child: (imageToSend != null)
                    ? RaisedButton(
                        child: Text("Submit",style: TextStyle(color: Colors.yellow[700]),),
                        color: Colors.blue[900],
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                        onPressed: () {
                          print("Pressed Submit");
                          print(nameController.text);
                          print("1");
                          if (_formKey.currentState.validate()) {
                            print("Uploading");
                            uploadImage(nameController.text,
                                emailController.text, phoneController.text);
                          }
                        },
                      )
                    : RaisedButton(
                        child: Text("Submit"),
                        onPressed: null,
                      ),
              )
            ],
          ),
        )
      
          ),
      ),
    )
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Your Own Jewellery"),
        backgroundColor: Colors.blue[900],
      ),
      key: _scaffoldKey,
      body: Container(
        child: Center(
          child: PageView(
            scrollDirection: Axis.vertical,
            controller: _pageController,
             children: <Widget>[
               _intro(),
               _click(),
             ],
          ),
        ),
      ),
    );
  }

  Widget _intro(){

    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("You can create your own masterpiece\nin just few simple steps\n\n",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 15.0, color: Colors.blue[900]),),
            Text("Click beautiful Picture of the design\nyou want to be made\n",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 15.0, color: Colors.blue[900])),
            Text("We will get back to you with the pricing\nfor that\n\n",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 15.0, color: Colors.blue[900])),
            RaisedButton(
              child: Text("Proceed",style: TextStyle(color: Colors.yellow[700]),),
              color: Colors.blue[900],
             shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
              onPressed: (){
                setState(() {
                 _pageController.animateToPage(1, duration: Duration(milliseconds: 800), curve: Curves.easeIn);
                });
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _click(){
        double w = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        child: SingleChildScrollView(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               (imageToSend == null)
                ? Container(
                    height: w ,
                    width: w / 1.5,
                    child: Center(child: Text("Upload or Click a picture",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 15.0, color: Colors.blue[900]),)),
                  )
                : Container(
                  child:Image.file(
                    imageToSend,
                    height: w ,
                    width: w / 1.5,
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
                  Padding(padding: EdgeInsets.only(top: 20.0),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                   RaisedButton(
                child: Text("Gallery",style: TextStyle(color: Colors.yellow[700]),),
                color: Colors.blue[900],
               shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                onPressed: _uploadFromGallery,
              ),
               RaisedButton(
                child: Text("Camera",style: TextStyle(color: Colors.yellow[700]),),
                color: Colors.blue[900],
               shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                onPressed: _uploadFromCamera,
              )
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 10.0),),
               RaisedButton(
                child: Text("Proceed",style: TextStyle(color: Colors.yellow[700]),),
                color: Colors.blue[900],
               shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                onPressed: (imageToSend != null)?_showDialog:null,),
            ],
          ),
        ),
      ),
    );
  }

      
    }

class GemStuddedJewelleryPage extends StatefulWidget {
  @override
  _GemStuddedJewelleryPageState createState() =>
      _GemStuddedJewelleryPageState();
}

class _GemStuddedJewelleryPageState extends State<GemStuddedJewelleryPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: GestureDetector(
              child: FadeInImage(
                placeholder: AssetImage(placeholder),
                image: NetworkImage(
                    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/YoutubeImages%2FVictorian%20Jewellery.jpeg?alt=media&token=578e6020-f56e-4c2f-a786-aa4e2d912ecd"),
              ),
              onTap: () => launchYoutube(victorian_jewellery),
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
        
       GridView.count(
              physics: ClampingScrollPhysics(),
                      padding: EdgeInsets.only(top: 10.0),
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      children: List.generate(5, (index){

                        var imageName          = ['Sets','Pendants','Tops','Rings','Braclets'];
                        var pageName           = ['GemStuddedSets','GemStuddedPendants','GemStuddedTops','GemStuddedRings','GemStuddedBracelets'];
                        var pageData           = [jewel_gemStudded_sets, jewel_gemStudded_pendants, jewel_gemStudded_tops, jewel_gemStudded_rings, jewel_gemStudded_bracelets];

                        var gemStuddedImageUrl = ['https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/jewellery-images%2Fgem-studded%2Fset%2FGSJS%201649001.png?alt=media&token=7f85787f-9561-4247-bf08-3faf290310ac',
                                                  'https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/jewellery-images%2Fgem-studded%2Fpendants%2FGSP3192003.png?alt=media&token=22e2169a-4124-4da3-9185-d7f6ab544426',
                                                  'https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/jewellery-images%2Fgem-studded%2Fearrings%2FGSE%205982103.png?alt=media&token=be428310-44b6-46ae-a88b-8902b3e1c06c',
                                                  'https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/jewellery-images%2Fgem-studded%2Frings%2FGSR%202318001.png?alt=media&token=7ea4104d-829c-4a49-aef1-a7e426687473',
                                                  'https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/jewellery-images%2Fgem-studded%2Fbracelets%2FGSB%204983001.png?alt=media&token=c75603dc-f6ac-452d-a00c-e7316838f03c']; 

                        return GestureDetector(
                        child: Card(
                         child: Column(
                           mainAxisSize: MainAxisSize.min,
                           children: <Widget>[
                             // Padding(padding: EdgeInsets.only(top: 5.0),),
                             Container(
                              //  child: Image.network(gemStuddedImageUrl[index]),
                             child: CachedNetworkImage(
                  imageUrl: gemStuddedImageUrl[index],
                  placeholder: (context, url) =>Align(alignment: Alignment.center,child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) =>Icon(Icons.error),
                ),
                             height: MediaQuery.of(context).size.width/2.5,
                             ),
                             Text(imageName[index])
                           ],
                         ),
                            ),
                            onTap: (){
                          Navigator.push(
                   context,
                   MaterialPageRoute(
                       builder: (context) => JewelleryViewPage(
                          type: pageName[index],
                          orderId: pageData[index],
                        )));
                            },
                          );
                      })

              )
         
        ]
      )
    );
  }
}

class DiamondJewelleryPage extends StatefulWidget {
  @override
  _DiamondJewelleryPageState createState() => _DiamondJewelleryPageState();
}

class _DiamondJewelleryPageState extends State<DiamondJewelleryPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: GestureDetector(
              child: FadeInImage(
                placeholder: AssetImage(placeholder),
                image: NetworkImage(
                    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/YoutubeImages%2FDiamondJewellery.jpeg?alt=media&token=303eb020-e97f-4e24-8164-93bf4b275643"),
              ),
              onTap: () => launchYoutube(victorian_jewellery),
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
        
       GridView.count(
              physics: ClampingScrollPhysics(),
                      padding: EdgeInsets.only(top: 10.0),
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      children: List.generate(8, (index){

                        var imageName          = ['Sets','Pendants','Tops','Rings','Braclets', 'Nose Pins', 'Studs', 'Studded'];
                        var pageName           = ['DiamondSets','DiamondPendants','DiamondTops','DiamondRings','DiamondBracelets', 'DiamondNosePins', 'DiamondStuds', 'DiamondStudded'];
                        var pageData           = [diamond_sets, diamond_pendants ,diamond_tops, diamond_rings, diamond_bracelets, diamond_nose_pins, diamond_studs, diamond_Studded];

                        var gemStuddedImageUrl = ['https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/jewellery-images%2Fdiamond%2Fset%2FDJS%207129001.png?alt=media&token=11186fb7-7aad-40b4-b02b-9be25bcdb191      ',
                                                  'https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/jewellery-images%2Fdiamond%2Fpendant%2FDP%203981001.png?alt=media&token=4e0a66fe-b48f-42b5-8787-05a1fceb5ba2   ',
                                                  'https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/jewellery-images%2Fdiamond%2Ftops%2FDJT%205310001.png?alt=media&token=3141cf97-21da-475f-a392-b7b78ad8ce30     ',
                                                  'https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/jewellery-images%2Fdiamond%2Frings%2FDR%20214001.png?alt=media&token=9b9ba547-41bf-4ea2-9c07-1e26bb558db3      ',
                                                  'https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/jewellery-images%2Fdiamond%2Fpendant%2FDP%203981001.png?alt=media&token=4e0a66fe-b48f-42b5-8787-05a1fceb5ba2   ',
                                                  'https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/jewellery-images%2Fdiamond%2Fnosepin%2FDNS%20871001.png?alt=media&token=26e05325-5828-4bad-b924-5d495d5e4b68   ',
                                                  'https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/jewellery-images%2Fdiamond%2Fstudds%2FDSS%201009001.png?alt=media&token=16ddbd9f-a387-4b8b-aa4c-6225f8667b39   ',
                                                  'https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/jewellery-images%2Fdiamond%20studded%2FDSAG%2047458901.png?alt=media&token=c08e347e-9922-472d-9e91-b2c8c17877fd'
                                                  ]; 

                        return GestureDetector(
                           child: Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                // Padding(padding: EdgeInsets.only(top: 5.0),),
                                Container(
                                  // child: Image.network(gemStuddedImageUrl[index]),
                                  child: CachedNetworkImage(
                  imageUrl: gemStuddedImageUrl[index],
                  placeholder: (context, url) =>Align(alignment: Alignment.center,child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) =>Icon(Icons.error),
                ),
                                height: MediaQuery.of(context).size.width/2.5,
                                ),
                                Text(imageName[index])
                              ],
                            ),
                          ),
                          onTap: (){
                             Navigator.push(
                   context,
                   MaterialPageRoute(
                       builder: (context) => JewelleryViewPage(
                             type: pageName[index],
                             orderId: pageData[index],
                           )));
                          },
                        );
                      })

              )
         
        ]
      )
    );
  }
}
