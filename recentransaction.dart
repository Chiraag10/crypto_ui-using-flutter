// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusablecards.dart';

class RecentCard extends StatelessWidget {
  const RecentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90.0,
      decoration: BoxDecoration(
        color: kContainerColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
        child: Row(
          
          
          children: [
             MyAvatar(image: 'lib/assets/eth.png'), //coin imageAddress
                  kwidthbox,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ETH', // coin symbol
                        style: kHeadingTextStyle,
                      ),
                      Text(
                        'Ethereum', // coin name
                        style: knormalTextStyle,
                      ),
                      
                    ],
                  ),
                  kwidthbox,
                  // this was supposed to look like a graph..but it looks real bad...!!1
                  Image.asset('lib/assets/vector graph.png', color: Colors.green, scale: 8.0, width: 100.0,),
                  kwidthbox,
                   Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.end,
                     children: [
                       Row(
                              children: [
                                Image.asset(
                                  'lib/assets/dollar sign.png',
                                  scale: 35.0,
                                  color: kHeadingColor,
                                ),
                                Text(
                                  '788.89',
                                  style: knormalightTextStyle,
                                ),
                                
                                
                              ],
                            ),
                            Row(
                          children: [
                            Icon(
                                  FontAwesomeIcons.angleUp,
                                  color: Colors.green,
                                  size: 20.0,
                                ),
                            Text(
                                  '6.77 %',
                                  style: kProfitpercentstyle,
                                ),
                                
                          ],
                        ),
                  
                     ],
                   ),
                        
          ],
        ),
      ),
      
      );
  }
}
