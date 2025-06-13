import 'package:e_book/Feature/home/presentation/views/BookDetailsView.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'ImageDecoration.dart';
import 'TextStare.dart';

class ListBookBestSeller extends StatelessWidget {
  const ListBookBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.44,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
              height: 150, // Fixed height for each item
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      GoRouter.of(context).push('/BookDetails');
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>BookDetailsView()));
                    },
                    child:imageDecoration()
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Harry Potter\nand the Goblet of Fire',
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontSize: 18, // Slightly smaller for better fit
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'J.K. Rowling',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$19.99',
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextStare(),

                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}