import 'package:flutter/material.dart';

final List<String> sections = [
  "World",
  "Bussiness",
  "Politics",
  "Tech",
  "Science"
];

class Post {
  final String title;
  final int time;
  final String imageUrl;
  final String story;

  Post({ this.imageUrl,  this.title,  this.time,  this.story});
}

class Articles {
  final String name;
  final String title;
  final int time;
  final String imageUrl;
  final Color color;
  Articles({ this.name,  this.title, this.time,  this.imageUrl,  this.color});
}

class EditorChoice {
  final String imageurl;
  final String editorname;
  final String editorImage;
  final String title;
  final String story;

  EditorChoice(
      { this.imageurl,
       this.editorname,
       this.editorImage,
       this.title,
       this.story});
}

List<Post> topStories = [
  Post(
      imageUrl: "assets/images/tigray.jpg",
      time: 2,
      title:
          "We will not stop - Ethiopian military commander",
      story:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
  Post(
    imageUrl: "assets/images/stu.jpg",
    story:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    time: 1,
    title: "Ethiopia closes schools to boost civil war effort",
  ),
  Post(
      imageUrl: "assets/images/stu.jpg",
      story:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      time: 3,
      title: "Ethiopian forces retake key towns - government"),
];

List<Post> moreTopStories = [
  Post(
      imageUrl: "assets/images/tigray.jpg",
      time: 2,
      title:
          "British woman calls ex-husband's new wife horse on FB. Gets 2 years in jail, Rs 45 lakh fine",
      story:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
  Post(
    imageUrl: "assets/images/mts2.png",
    story:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    time: 1,
    title: "Billions of years ago Mars had big, wide, intense rivers",
  ),
  Post(
      imageUrl: "assets/images/tigray.jpg",
      story:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      time: 3,
      title: "Traders burn Chinese goods ahead of Holi"),
];

List<Articles> topArticles = [
  Articles(
    name: 'hiwot birhan church',
    imageUrl: "assets/images/e1.png",
    time: 2,
    color: Color(0xff1b262c),
    title: "Jesus  can\nsave your life",
  ),
  Articles(
      imageUrl: "assets/images/e2.png",
      name: "tsadeku abedu",
      time: 2,
      title: "Lets pray for \n Ethipia",
      color: Color(0xff158467)),
  Articles(
    imageUrl: "assets/images/e3.jpg",
    name: "Daniel yadessa",
    time: 5,
    title: "God can give us \n peace Learn more",
    color: Color(0xff1b262c),
  ),
  Articles(
      imageUrl: "assets/images/e4.jpg",
      name: "Nahusnai tsedalu",
      time: 3,
      title: "please ready my book\n melorina part 2 is released.",
      color: Color(0xffb52b65)),
];

List<EditorChoice> editorArticles = [
  EditorChoice(
    editorImage: "assets/images/e4.png",
    editorname: "hayeleyesus terubush",
    imageurl: "assets/images/ms.png",
    story:
        "Lorem ipsum dolor sit amet, nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    title: "Pray for Ethiopia",
  ),
  EditorChoice(
    editorImage: "assets/images/e3.png",
    editorname: "Daniel Yadessa",
    imageurl: "assets/images/ms.png",
    story:
        "Lorem ipsum dolor sit amet, nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    title: "Pray for Ethiopia",
  ),
  EditorChoice(
    editorImage: "assets/images/e2.png",
    editorname: "Henock",
    imageurl: "assets/images/ms.png",
    story:
        "Lorem ipsum dolor sit amet, nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    title: "pray for Tigray",
  ),
];
