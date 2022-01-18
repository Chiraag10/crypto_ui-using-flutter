// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:crypto_ui/reusablecards.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

SingleChildScrollView Herocardscroll() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        HeroCard(
            firstChild: Stack(
                //firstchild start here
                fit: StackFit.expand,
                children: <Widget>[
                  Positioned(
                    top: 0.0,
                    right: 10.0,
                    child: Icon(
                      FontAwesomeIcons.ellipsisH,
                      color: kContainerColor,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Total Balance',
                        style: kHeroTextStyle,
                      ),
                      kwidthbox,
                      MyCurrencyAvatar(
                          text: 'USD', icon: FontAwesomeIcons.angleDown),
                    ],
                  ),
                  Positioned(
                      bottom: 10.0,
                      child: Row(
                        children: [
                          Image.asset(
                            'lib/assets/dollar sign.png',
                            scale: 16,
                            color: Color(0xff2b2b38),
                          ),
                          Text(
                            '24,600.80',
                            style: kHeroNumbStyle,
                          ),
                        ],
                      )),
                ]), // first child                                 //firstchild ends here

            //second child
            secondChild: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Monthly Profit',
                        style: knormalTextStyle,
                      ),
                      kheightbox,
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
                          kwidthbox,
                          Text(
                            '6.77%',
                            style: kProfitpercentstyle,
                          ),
                          Icon(
                            FontAwesomeIcons.angleUp,
                            color: Colors.green,
                            size: 20.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Image.asset('lib/assets/purse.png', scale: 25.0,),
                 
                ],
              ),
            )), // secondchild ends here
        kwidthbox,
        kwidthbox,
                 
        Container(                                // a blank hero card
          width: 50.0,
          height: 280.0,
          decoration: BoxDecoration(
            color: kContainerColor,
            borderRadius: BorderRadius.circular(20.0)
        
          ),
          child: Center(child: Icon(FontAwesomeIcons.plus,color: kHeadingColor,),),
        
        ),
        
        // below commented lines for future added hero cards 
        // kwidthbox,
        // kwidthbox,

        // HeroCard(
        //   firstChild: Text('first child'),
        //   secondChild: Text('second child'),),

      ],
    ),
  );
}



// Hero section extracted widget or skeleton structure

class HeroCard extends StatelessWidget {
  const HeroCard({required this.firstChild, required this.secondChild});
  final Widget firstChild;
  final Widget secondChild;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(8.0),
          height: 180.0,
          width: 280.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0)),
              gradient: RadialGradient(
                radius: 0.8,
                colors: [
                  Color(0xfffcf6af),
                  Color(0xfffdd85e),
                ],
              )),
          child: firstChild,
        ),
        Container(
          padding: EdgeInsets.all(8.0),
          height: 100.0,
          width: 280.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0)),
            color: kContainerColor,
          ),
          child: secondChild,
        ),
      ],
    );
  }
}
