import 'package:flutter/material.dart';

class KeyBoardItems extends StatefulWidget {
  final Function(dynamic value , bool isDelete)? onItemTap;
  const KeyBoardItems({super.key, this.onItemTap});

  @override
  State<KeyBoardItems> createState() => _KeyBoardItemsState();
}

class _KeyBoardItemsState extends State<KeyBoardItems> {


  List keyboardItems = [
    "1", "2","3","4", "5" ,"6","7","8","9", 
    Icons.backspace_outlined, 
    "0"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50),
      child: SizedBox(
      
        width: MediaQuery.of(context).size.width,
        // height:MediaQuery.of(context).size.height/3, 
      
        child:  GridView.count(
          shrinkWrap: true,
      
          crossAxisCount: 3,
          mainAxisSpacing: 20,
       childAspectRatio: 2.2,
          children: keyboardItems.map((e) => Center(
            child: KeyboardItem(
              title: e,
              onItemTap: widget.onItemTap,
            ),
          )).toList(),
      
        ),
      ),
    );
  }
}

class KeyboardItem extends StatelessWidget {
  final dynamic title;
    final Function(dynamic value , bool isDelete)? onItemTap;

  const KeyboardItem({super.key, this.title, this.onItemTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:MediaQuery.of(context).size.width/7 ,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.10),
        shape: BoxShape.circle , border: Border.all(color: Colors.white ,width: 1)
      ),
      child: GestureDetector(
        onTap: (){
          if(title is IconData){
            onItemTap!(title , true);
          }else {
                         onItemTap!(title , false);

        }
        },
        
        child: Builder(builder: (context){
        
          if(title is IconData){
            return Center(child: Icon(title , color: Colors.white,),);
          }else {
            return Center(child: Text(title , style: const TextStyle(
              color: Colors.white ,fontWeight: FontWeight.bold ,fontSize: 18
            ),),);
        
        
          }
        }),
      ),
    );
  }
}