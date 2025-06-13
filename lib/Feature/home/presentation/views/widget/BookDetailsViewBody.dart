import 'package:e_book/Feature/home/presentation/views/widget/twoLabel.dart';
import 'package:flutter/material.dart';

import 'ImageDecoration.dart';
import 'TextStare.dart';
import 'customListView.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width*.25;
    return Scaffold(
      body: SafeArea(
          child: ListView(
            children:[ Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){
                  Navigator.pop(context);
      
                    }, icon: Icon(Icons.close, size: 30)),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_cart_outlined),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width ),
                  child: imageDecoration(),
                ),
                SizedBox(height: 40),
                Text(
                  'The Jungle Book',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                ),
                SizedBox(height: 6,),
                Opacity(opacity: .7,
                child:Text(
                  ' Rudyard Kipling',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,fontStyle: FontStyle.italic),
                ),
                  ),
                SizedBox(height: 13),
                TextStare(),
                SizedBox(height: 30),
                TwoLabel(),
      
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Align(
                    alignment: Alignment.centerLeft,
      
                    child: Text(
                      "You can also like",
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .3,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return CustomListView();
                      },
                    ),
                  ),
                ),
              ],
            ),
      ]
          ),
      
      ),
    );
  }


}