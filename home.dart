// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:crypto_ui/constants.dart';

import 'reusablecards.dart';
import 'herocardscroll.dart';
import 'mywallet.dart';
import 'recentransaction.dart';

class MyHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // body starting with column
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // heading row
              children: [
                MyAvatar(
                  image: 'lib/assets/pots.png',
                ),
                Text(
                  'Home',
                  style: kHeadingTextStyle,
                ),
                MyAvatar2(image: 'lib/assets/vault.png'),
              ],
            ),
            kheightbox,
            // hero card starts here
            Herocardscroll(),
            // hero card ends here
            kheightbox,
            // my wallet section starts here
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Text('My Wallet', style: kHeadingTextStyle,),
                Text('View All', style: kViewallstyle,),

              ],
            ), 
            kheightbox,
            // mywallet section 
            Mywallet(),

            // mywallet section ends here
            kheightbox,
          
            // Recent Transaction Section Starts here
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Text('Recent Transactions', style: kHeadingTextStyle,),
                Text('View All', style: kViewallstyle,),

              ],
            ),
            kheightbox,
             
             RecentCard(),
                
             

          ],
        ),
      ),
    );
  }

  
  }



