import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: Home(),
    );
  }

}

class Home extends StatelessWidget{
  final String title = 'Gapura Pulau Dewata';
  final String location = 'Pulau Dewata,Bali';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kontes Gapura'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start ,
        children: <Widget>[
          Image.asset(
           'images/gapura.jpeg',
            height: 250.0,
            width: 412.0,
            fit: BoxFit.fitWidth,
           ),
          Container(
            height: 15.0,
          ),
          Row(
            children: <Widget>[
              Container(
                width: 15.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    this.title,
                    style : TextStyle(
                      fontSize :22.0,
                      color: Colors.black87,
                      fontWeight :FontWeight.bold
                    ),
                  ),
                  Text(
                    this.location,
                    style:TextStyle(
                      color : Colors.grey,
                      fontSize : 18.0,
                    )
                  )
                ],
              ),
              Container(
                width: 85.0,
              ),
    
              Icon(
                Icons.favorite_border,
                size : 32.0,
                color : Colors.red
              
              ),
              
            ],
          ),
          Container(
            height: 30.0,
          ),
          Container(
         
            child: 
  
       Expanded(child:       
        GridView.count(
            crossAxisCount: 3,
            primary: false,
            children: <Widget>[
               Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
                child: 
                Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[ 
                      Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                         Icon(
                        Icons.favorite , 
                        color: Colors.redAccent,
                      ),
                       Container(
                          width: 5.0,
                        ),
                       
                         Text("105",
                     
                         style : TextStyle(
                         fontSize: 30.0,
                         color: Colors.black54
                        )
                        ),
                        
                        ],
                      ),
                      Text('Liked',
                      style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold
                      ),
                      )
                    ],
                ),),
               
               Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
                child: 
               Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[ 
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                         Icon(
                        Icons.people ,
                        color: Colors.green,
                      ),
                        Container(
                          width: 5.0,
                        ),
                         Text("205",
                
                         style : TextStyle(
                         fontSize: 30.0,
                         color: Colors.black54
                        )
                        ),
                      
                        ],
                      ),
                      Text('Voted',
                      style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold
                      ),
                      )
                    ],
                ),),
                
              Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
                child: 
                Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[ 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                         Icon(
                        Icons.share,  
                          color: Colors.blueAccent,
                       
                      ),
                         
                        Container(
                          width: 5.0,
                         ),
                        
                         Text("50",
                  
                         style : TextStyle(
                         fontSize: 30.0,
                        color: Colors.black54
                        )
                        ),
                        ],
                      ),
                      Text('Shared',
                      style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold
                      ),)
                    ],
                ),),
            ],
          ),),),
           Expanded(
             child: Column(
               children: <Widget>[
                 Column(
                   children: <Widget>[
                     Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: <Widget>[
                     Container(
                       margin: EdgeInsets.only(left: 16,bottom: 6),
                       child: Text('Komentar',style:TextStyle(fontSize:16)),
                     )
                     ],
                       ),
                   Card(
                     margin: EdgeInsets.only(left: 16,right: 16),
                     child:Container(
                       height: 80.0,
                       margin: EdgeInsets.only(left: 16),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                           Row(
                             children: <Widget>[
                                Icon(
                                  Icons.person,
                                  color: Colors.black54
                                ),
                                Container(
                                  width: 10.0,
                                ),
                                Column(
                                  children: <Widget>[
                                    Text("Iman Nurohman",style: TextStyle(fontSize: 16),),
                                    Container(height: 5,),
                                    Text("Wow Keren Banget !",style: TextStyle(fontSize: 12,fontStyle: FontStyle.italic))
                                  ],
                                )

                               ],
                           ),
                        
                         ],
                       )
                     ) ,
                   )
                   
                   ],
                 )
               ],
             ),
           )
        ],
      ),
    );
  }
}

