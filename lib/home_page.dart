import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class HomePage extends StatefulWidget {
   static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static List<Widget>_widgetItems =<Widget>[
    Text('Home',
    style: optionStyle,
    ),
    Text('Like',
    style: optionStyle,
    ),
    Text('Search',
    style: optionStyle,
    ),
      Text('Setting',
      style: optionStyle,
      ),

  ];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(title: Text('Modern Bottom Navigation Bar'),
      centerTitle: true,
      backgroundColor: Colors.black,
      ),
      body: Center(child: HomePage._widgetItems.elementAt(_selectIndex)),
     bottomNavigationBar: 
     Container(
    //    decoration: BoxDecoration(
        color: Colors.black,
    //       boxShadow: [
    //         BoxShadow(
    //           blurRadius: 40,
    //           color: Colors.black.withOpacity(.1),
    //         )
    //       ]
    //    ),
       
       child:Padding(
         padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
         child: GNav(
         backgroundColor: Colors.black,
         color: Colors.white,
         activeColor: Colors.white,
         tabBackgroundColor: Colors.grey.shade800,
         padding: EdgeInsets.all(16.0),
  
           gap: 8,
           tabs:  [
           GButton(icon: Icons.home,
           text: 'Home',
          //  backgroundColor: Colors.green,
          //   textColor: Colors.white,
           ),
           GButton(icon: Icons.favorite_border,
           text: 'Like',
          //  backgroundColor: Colors.indigo,
          //   textColor: Colors.white,
           
           ),
           GButton(icon: Icons.search,
           text: 'Search',
          //  backgroundColor: Colors.blue,
          //   textColor: Colors.white,
           ),
           GButton(icon: Icons.settings,
           text: 'Setting', 
      //  textColor: Colors.white,
      //  backgroundColor: Colors.red,
           ),

         ],
         selectedIndex: _selectIndex,
         onTabChange: (index){
           setState(() {
             
             _selectIndex=index;
           });
         }
         
         ),
       ),
     ),
      
    );
  }
}