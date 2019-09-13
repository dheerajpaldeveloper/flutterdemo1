import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Center(

      child: Container(
        padding: EdgeInsets.only(left:10.0,top: 40.0),
        alignment: Alignment.center,
        color: Colors.deepPurple,
        //width: 200.0,
        //height: 100.0,
        margin: EdgeInsets.only(top:100.0,left: 20.0,right: 20.0,bottom: 80.0),
       // padding: EdgeInsets.only(left: 20.0),
        child:

            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(child: Text(

                      "Home",textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 70.0,
                        fontFamily: 'railway',

                      ),
                    )
                    ),


                    Expanded(child: Text(

                      " hello dheeraj pal",textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35.0,
                        fontFamily: 'railway',

                      ),

                    ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(child: Text(

                      "Air",textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 70.0,
                        fontFamily: 'railway',

                      ),
                    )
                    ),


                    Expanded(child: Text(

                      " Welcome to Airline",textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35.0,
                        fontFamily: 'railway',

                      ),

                    ),
                    )
                  ],
                ),

                FlightImage(),
                FlightButton(),
              ],
            )




      ) ,
    );


  }

}


class FlightImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage =AssetImage('images/image.png');
    Image image = Image(image: assetImage,);
    return Container(
      width: 250.0,
      height: 200.0,
      child: image,);
  }

}

class FlightButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(top:10.0),
      //padding: EdgeInsets.all(10.0),
      width: 250.0,
        height: 50.0,
      child: RaisedButton(
          color: Colors.deepOrange,
          child: Text("Submit",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontFamily: 'railway',
            fontWeight: FontWeight.w900
          ),
          ),
          elevation: 6.0,
          onPressed: ()
          {
            bookFlight(context);
          }
      ),
    );
  }

  void bookFlight(BuildContext context){
    var alertDialog =AlertDialog(
      title: Text("submit successful"),
      content: Text("done!"),
    );

    showDialog(context: context,
    builder: (BuildContext){
      return alertDialog;
    }
    );
  }


}