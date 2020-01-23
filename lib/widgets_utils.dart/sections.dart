//CHANGE APPEARANCE AND TEXT IN COLUMN VIEW

import 'package:flutter/material.dart';

const Color _mariner = const Color(0xFF3B5F8F);
const Color _mediumPurple = const Color(0xFF8266D4);
const Color _tomato = const Color(0xFFF95B57);
const Color _mySin = const Color(0xFF8BC34A);

class SectionDetail {
  const SectionDetail({this.title,
  //  this.subtitle,
   this.imageAsset,
  });
  final String title;
  // final String subtitle;
  final String imageAsset;
}

class Section {
  const Section({
    this.title,
    this.backgroundAsset,
    this.leftColor,
    this.rightColor,
    this.details,
  });
  final String title;
  final String backgroundAsset;
  final Color leftColor;
  final Color rightColor;
  final List<SectionDetail> details;

  @override
  bool operator ==(Object other) {
    if (other is! Section) return false;
    final Section otherSection = other;
    return title == otherSection.title;
  }

  @override
  int get hashCode => title.hashCode;
}

// TODO(hansmuller): replace the SectionDetail images and text. Get rid of
// the const vars like _eyeglassesDetail and insert a variety of titles and
// image SectionDetails in the allSections list.

SectionDetail _BreakfastDetail(String text, String sub) {
  return SectionDetail(
    imageAsset: 'assets/img/Breakfast.jpg',
    title: text,
    // subtitle: sub,
  );
}

SectionDetail _lunchDetail(String text, String sub) {
  return SectionDetail(
      imageAsset: 'assets/img/lunch.jpg',
      title: text,
      // subtitle: sub,
    );
}

const SectionDetail _highteaDetail = const SectionDetail(
    imageAsset: 'assets/img/hightea.jpg',
    title: 'Personal data on hightea',
    // subtitle: 'click  here  ',
    );

const SectionDetail _dinnerDetail = const SectionDetail(
    imageAsset: 'assets/img/dinner.jpg',
    title: 'See the data dinner keeps',
    // subtitle: 'click  here',
    );

final List<Section> allSections = <Section>[
  Section(
    title: 'BREAKFAST',
    leftColor: _mediumPurple,
    rightColor: _mariner,
    backgroundAsset: 'assets/img/breakfast.jpg',
    details: <SectionDetail>[
      ],
  ),
  Section(
    title: 'LUNCH',
    leftColor: _tomato,
    rightColor: _mediumPurple,
    backgroundAsset: 'assets/img/lunch.jpg',
    details: <SectionDetail>[
      _lunchDetail('lunch knows what are you doing', 'Check  your activity'),
      _lunchDetail('Download  your private data ',
          'your  post, like, comment till now'),
      _lunchDetail('What have you done so far in lunch?',
          'check it out'),
    ],
  ),
  const Section(
    title: 'HIGH-TEA',
    leftColor: _mySin,
    rightColor: _tomato,
    backgroundAsset: 'assets/img/hightea.jpg',
    details: const <SectionDetail>[
      _highteaDetail,
    ],
  ),
  const Section(
    title: 'DINNER',
    leftColor: _mariner,
    rightColor: _tomato,
    backgroundAsset: 'assets/img/dinner.jpg',
    details: const <SectionDetail>[
      _dinnerDetail,
    ],
  ),
];
