import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customAppBar.dart';
import 'customListView.dart';
import 'listBookBestSeller.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
        child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        CustomAppBar(),

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
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            'Best Seller',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),


      ],
    )
        ),
        SliverFillRemaining(
          child: ListBookBestSeller(),
        )
      ],

    );

  }
}

