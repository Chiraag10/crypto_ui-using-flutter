// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'reusablecards.dart';

class Mywallet extends StatelessWidget {
  const Mywallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Walletcard(
            coinImageAddress: 'lib/assets/btc.png',
            coinSymbol: 'BTC',
            coinName: 'Bitcoin',
            balance: 385.97,
            profitIcon: FontAwesomeIcons.angleUp,
            profitText: '6.77 %',
          ),
          kwidthbox,
          Walletcard(
              coinImageAddress: 'lib/assets/eth.png',
              coinSymbol: 'ETH',
              coinName: 'Ethereum',
              balance: 465.97,
              profitIcon: FontAwesomeIcons.angleDown,
              profitText: '6.77 %'),
          kwidthbox,
          Walletcard(
              coinImageAddress: 'lib/assets/shiba.png',
              coinSymbol: 'SHIB',
              coinName: 'Shiba',
              balance: 360.97,
              profitIcon: FontAwesomeIcons.angleDown,
              profitText: '3.77 %'),
        ],
      ),
    );
  }
}

// walletcard container widget
class Walletcard extends StatelessWidget {
  const Walletcard(
      {required this.coinImageAddress,
      required this.coinSymbol,
      required this.coinName,
      required this.balance,
      required this.profitIcon,
      required this.profitText});

  final String coinImageAddress;
  final String coinSymbol;
  final String coinName;
  final double balance;
  final IconData profitIcon;
  final String profitText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.0,
      height: 150.0,
      decoration: BoxDecoration(
        color: kContainerColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            top: 20.0, left: 10.0, right: 10.0, bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyAvatar(image: coinImageAddress), //coin imageAddress
                kwidthbox,
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coinSymbol.toUpperCase(), // coin symbol
                      style: kHeadingTextStyle,
                    ),
                    Text(
                      coinName, // coin name
                      style: knormalTextStyle,
                    ),
                  ],
                ),
              ],
            ),
            kheightbox,
            Text(
              'Balance',
              style: knormalTextStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$balance', //balance
                  style: knormalightTextStyle,
                ),
                Row(
                  children: [
                    Icon(
                      profitIcon, // profit icon
                      color: profitIcon == FontAwesomeIcons.angleUp
                          ? Colors.green
                          : Colors.red,
                      size: kangleiconsize,
                    ),
                    Text(
                      profitText, // profit text
                      style: TextStyle(
                        color: profitIcon == FontAwesomeIcons.angleUp
                            ? Colors.green
                            : Colors.red,
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
