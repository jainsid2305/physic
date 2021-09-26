import 'package:flutter/material.dart';
import 'Update.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_auth/firebase_auth.dart';

class foodcard extends StatefulWidget {
  //const foodcard({ Key? key }) : super(key: key);
  final String _ID;
  foodcard(this._ID);

  @override
  _foodcardState createState() => _foodcardState();
}

class _foodcardState extends State<foodcard> {


  final CollectionReference _food =
      FirebaseFirestore.instance.collection('Food');
  //final DocumentReference _userDocument = FirebaseFirestore.instance
    //  .collection('users')
      //.doc(FirebaseAuth.instance.currentUser.uid);


  @override
  Widget build(BuildContext context) {
    return StreamBuilder<>(
      stream: null,
      builder: (context, snapshot) {
        return Container(
          height: 300.0,
          //width: 50,
          child: Card(
            color:  Color.fromARGB(255, 84, 148, 130),
            margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0,20.0),
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                //mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    //_food.doc(widget._ID).,
                    'Food Name',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  Text(
                    "Calories",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: (){
                      
                    },
                    child: Icon(Icons.add),
                  )
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}


