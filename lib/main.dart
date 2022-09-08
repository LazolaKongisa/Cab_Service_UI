import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override

  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            
            
            children: [
              Container(
                height:240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.purple,
                      
                      Colors.blue,
                    ]
                  )
                ),
                
                
                child: Padding(
                  padding: const EdgeInsets.only(bottom:180),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Center(
                        child: Row(
                          children: [
                            Padding(
                          padding: const EdgeInsets.only(left: 15.0,),
                          child: Icon(Icons.menu_outlined,
                          color: Colors.white,
                          size:40,
                          ),
                        ),
                        SizedBox(width: 90,),
                        Positioned(
                          right:0,
                          left:0,
                            child: Center(
                            child: Text("Profile",
                            style: GoogleFonts.lato(fontSize:40,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,),
                            ),
                          ),
                        ),


                          ],
                        ),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.only(right:15.0),
                        child: Icon(Icons.settings,
                        color: Colors.white,
                        size:40,
                        ),
                      ),

                      ],
                    ),
                  ),
                ),
                
                
                
                  

              ),

              Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40, top: 160,right:40,),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400, spreadRadius:1,
                            blurRadius: 10,
                            offset: Offset(0, 3)
                          )
                        ]
                      ),
                      width: 1500,
                      height: 180,
                      
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 60),
                            child: Center(
                              child: Text("John Rambo",style: GoogleFonts.lato(fontSize:25,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue[800],),
                              ),
                            ),
                          ),
                          SizedBox(height: 25),
                          Padding(
                            padding: const EdgeInsets.only(left:28, right: 22),
                            child: Row(
                              children: [
                                Text("Age: 25",
                                style: GoogleFonts.lato(color: Colors.black,fontSize: 15),
                                ),
                                SizedBox(width:   25),
                                Icon(
                                  Icons.monetization_on_sharp,
                                  size: 20,
                                  color: Colors.purple
                                ),
                                Text(
                                  "1500",
                                  style: GoogleFonts.lato(color: Colors.black,fontSize: 15),
                                ),
                                SizedBox(width: 25),
                                Icon(
                                  Icons.star_outlined,
                                  size: 20,
                                  color: Colors.purple,
                                ),
                                Icon(
                                 Icons.star_outlined,
                                 size: 20,
                                  color: Colors.purple,
                                ),
                                Icon(
                                 Icons.star_outlined,
                                 size: 20,
                                  color: Colors.purple,
                                ),
                                Icon(
                                  Icons.star_outlined,
                                  size: 20,
                                  color: Colors.purple,
                                ),
                                Icon(
                                  Icons.star_outline_sharp,
                                  size: 20,
                                  color: Colors.purple,
                                ),


                              ],
                            ),
                          )
                        ],

                      ),
                      
                      




                    ),
                  ),

                  

                ],
              ),
              

              
                 Positioned(
                   top:105,
                   right:0,
                   left:0,
                    child: Center(
                      child: Container(
                      width:100.0,
                      height:100.0,
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                           boxShadow: [
                            BoxShadow(
                              color: Colors.white, spreadRadius:2,
                            )
                          ],
                          image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/profile.jpg"),
                          
                          )
                      ),
                      


              ),
                    ),
                 ),

               Button(),

           

              
                          
            ],
            

          
          ),

         
          
          

          

          

          
        ),

        
        
      ),


    ),






    );



  }


}

class Button extends StatefulWidget{
  
  @override
  _ButtonState createState() => _ButtonState();

}

class _ButtonState extends State<Button>{
  var counter = 0;
  @override 
  Widget build(BuildContext context)
  {
    return Container(
      child: Column(
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 335),
            child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:15, left:26),
                          child: BottomContainer(numbers: 542+counter, text2: "Likes", number: 0)


                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, left: 10),
                          child: BottomContainer(numbers: 670,text2: "Rides",number: 1,),
                          
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, left: 10),
                          child: BottomContainer(numbers: 10,text2: "\$ per ride",number: 3,),
                          
                          
                        )


                        
                        
                      ],




                    ),
          ),





            Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Center(
              child: MaterialButton(onPressed: (){
                setState(() {
                  if(counter<1)
                  counter++;

                });
              },
              height: 50,
              minWidth: 200,
              color: Colors.white,
              child: Icon(Icons.thumb_up_sharp,
              color: Colors.purple),
              elevation: 10,
              ),
            ),
          )

        ],

      ),
    );
  }
}






class BottomContainer extends StatelessWidget {
  @override

  BottomContainer({required this.numbers,required this.text2,required this.number});
  final int number;

  final int numbers;
  final String text2;
  Color getColor()
  {
    if(number == 0 )
    {
      return Colors.purple;
    }
    else if(number == 1)
    {
      return Colors.blue;
    }
    else
    {
      return Colors.deepOrange;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      
      color: Colors.white,
      
      border: Border(
        
        bottom: BorderSide(width:4,
        color: getColor(),),
        
       ),
       boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400, spreadRadius:1,
                            blurRadius: 10,
                            offset: Offset(0, 3)
                          )
                        ]
       
     
     
    ),
    width: 112,
    height: 112,
    
    child: Column(
      children: [
        Padding(
        padding: const EdgeInsets.only(bottom: 20, top: 10),
        child: Center(
        child:
        Text("$numbers",
        style: GoogleFonts.lato(
          fontWeight: FontWeight.w600,
          fontSize: 30,
        )),),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text("$text2"),
        ),
              
      ]
                       )
    


    );
  }
    
}