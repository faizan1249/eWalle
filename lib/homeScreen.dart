import 'package:flutter/material.dart';
import "AppConstants/AppColors.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 
  @override
  Widget build(BuildContext context) {
     final isDarkTheme = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: InActiveColor,
        title: Text("eWalle"),
        actions: [
          IconButton(
            icon: Icon(Icons.drag_indicator_sharp),
            // ,
            onPressed: () {},
          ),// add more IconButton
        ],
        leading: Icon(Icons.sunny),
      ),
      body: SingleChildScrollView(
        child: Container(
          // padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              SizedBox(height: 40,),
              
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text("Account Overview",style: TextStyle(color:isDarkTheme?Colors.white.withOpacity(0.7):textColor,fontSize: 16,fontWeight: FontWeight.w400),),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),

                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: isDarkTheme? OutActiveColor:LightColor,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("20,600",style: TextStyle(fontSize: 24, color:isDarkTheme?LightColor:textColor,fontWeight: FontWeight.bold),),
                              SizedBox(height: 20,),

                              Text("Current Balance",style: TextStyle(fontSize: 16, color:isDarkTheme?Colors.white.withOpacity(0.7):textColor),),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: <Widget>[
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: RoundedButtonColor,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.add),
                                  
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
      
      
                  ],
                )
              ),



              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Send Money",style: TextStyle(color:isDarkTheme?Colors.white.withOpacity(0.7):textColor,fontSize: 16,fontWeight: FontWeight.w400),),
                          IconButton(
                            onPressed: (){},
                            icon: Icon(FontAwesomeIcons.qrcode),
                            color: Colors.black54,
                            iconSize: 34,
                          )

                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    SizedBox(
                      height: 140,
                      child: ListView(
                        shrinkWrap: true,
                        physics: AlwaysScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            width: 110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: isDarkTheme? OutActiveColor:LightColor,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                  Container(
                                    width: 60.0,
                                    height: 60.0,
                                    decoration: BoxDecoration(
                                     
                                      borderRadius: BorderRadius.all( Radius.circular(50.0)),
                                      
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: RoundedButtonColor,
                                            borderRadius: BorderRadius.circular(40),
                                          ),
                                          child: IconButton(
                                            onPressed: (){},
                                            icon: Icon(Icons.add),
                                            
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20,),
                          PersonList(Name: "Mike",ImageSrc: "assets/male1.PNG",),
                          SizedBox(width: 20,),
                          PersonList(Name: "Joseph",ImageSrc: "assets/male2.PNG",),
                          SizedBox(width: 20,),
                          PersonList(Name: "Angella",ImageSrc: "assets/female1.png",),
                          SizedBox(width: 20,),
                          PersonList(Name: "Mike",ImageSrc: "assets/male1.PNG",),
                        ],
                      ),
                    )
      
      
                  ],
                )
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Services",style: TextStyle(color:isDarkTheme?Colors.white.withOpacity(0.7):textColor,fontSize: 16,fontWeight: FontWeight.w400),),
                        IconButton(
                          onPressed: (){},
                          icon: Icon(FontAwesomeIcons.sliders),
                          color: Colors.black54,
                          iconSize: 34,
                        )

                      ],
                    ),
                    
                    SizedBox(
                      height: 300,
                      child: ListView(
                        // scrollDirection: Axis.horizontal,
                        // physics: AlwaysScrollableScrollPhysics(),
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Expanded(child: ServicesList(Name: "Send Money",ImageSrc: "assets/discounts.png",)),
                              SizedBox(width: 10,),
                              Expanded(child: ServicesList(Name: "Receive Money",ImageSrc: "assets/discounts.png",)),
                              SizedBox(width: 10,),
                              Expanded(child: ServicesList(Name: "Mobile Prepaid",ImageSrc: "assets/discounts.png",)),
                              SizedBox(width: 10,),
                              Expanded(child: ServicesList(Name: "Electricity Bill",ImageSrc: "assets/discounts.png",)),
                              SizedBox(width: 10,),
                              
                              
                            ],
                          ),
                              SizedBox(height: 30,),

                          Row(
                            children: <Widget>[
                              Expanded(child: ServicesList(Name: "Cashback Offer",ImageSrc: "assets/discounts.png",)),
                              SizedBox(width: 10,),
                              Expanded(child: ServicesList(Name: "Movie Tickets",ImageSrc: "assets/discounts.png",)),
                              SizedBox(width: 10,),
                              Expanded(child: ServicesList(Name: "Flight Tickets",ImageSrc: "assets/discounts.png",)),
                              SizedBox(width: 10,),
                              Expanded(child: ServicesList(Name: "More Options",ImageSrc: "assets/discounts.png",)),
                              SizedBox(width: 10,),

                              
                            ],
                          )
                        ],
                      ),
                    )
      
      
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}




class PersonList extends StatelessWidget {
  PersonList({
    required this.Name,
    required this.ImageSrc,
  });
  String Name;
  String ImageSrc;

  @override
  Widget build(BuildContext context) {
     final isDarkTheme = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Container(
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: isDarkTheme? OutActiveColor:LightColor,

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
            Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageSrc),
              
                ),
                borderRadius: BorderRadius.all( Radius.circular(50.0)),
              ),
            ),
            Text(Name,style: TextStyle(color:isDarkTheme?Colors.white.withOpacity(0.7):textColor,fontSize: 14,fontWeight: FontWeight.w400),)

        ],
      ),
    );
  }
}





class ServicesList extends StatelessWidget {
  ServicesList({
    required this.Name,
    required this.ImageSrc,
  });
  String Name;
  String ImageSrc;

  @override
  Widget build(BuildContext context) {
     final isDarkTheme = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Column(
      children: [
        Container(
          
          width: 110,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: OutActiveColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: isDarkTheme? OutActiveColor:LightColor,
                    image: DecorationImage(
                      image: AssetImage(ImageSrc,),
                  
                    ),
                    borderRadius: BorderRadius.all( Radius.circular(50.0)),
                  ),
                ),
                

            ],
          ),
        ),
        SizedBox(height: 5,),
        Text(
          Name,
          style: TextStyle(color:isDarkTheme?Colors.white.withOpacity(0.7):textColor,fontSize: 14,fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,)
      ],
    );
  }
}