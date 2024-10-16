import 'package:flutter/material.dart';

class NotePage extends StatefulWidget{
  @override
  State<NotePage> createState()=> _NotePageState();
}
class _NotePageState extends State<NotePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(title: Text("Note App Example"),),

      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context,index){
        return Container(
          height: 100,
          width: double.infinity,
         color: const Color.fromARGB(255, 252, 166, 195),
         child: Column(
          children: [
            Text(""),
            Text(""),
            Text(""),
            Text(""),
          ],
         ),


        );
      }),
     
     floatingActionButton: FloatingActionButton(onPressed: (){
      showModalBottomSheet(context: context, builder: (BuildContext context){
        return Container(
          height: 500,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              
              children: [
                 SizedBox(height: 30,),
                TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'title'),),
                SizedBox(height: 20,),
               TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'description'),),
                 SizedBox(height: 20,),
                
               TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'category'),),
                 SizedBox(height: 20,),
                TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'date'),),
                SizedBox(height: 100,),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){}, child: Text("Add")),
                    SizedBox(width:30),
                    ElevatedButton(onPressed: (){}, child: Text("Cancel")),
                  ],
                ),
              ],
            ),
          ),
        );
      });
     },
     child: Icon(Icons.add),),
    );
  }
}