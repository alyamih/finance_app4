import 'package:finance_app4/pages/home_page.dart';
import 'package:finance_app4/pages/news_page.dart';
import 'package:finance_app4/pages/quiz_page.dart';
import 'package:finance_app4/pages/settings_page.dart';
import 'package:flutter/material.dart';

EPageOnSelect page = EPageOnSelect.homePage;

enum EPageOnSelect {
  homePage,

  newsPage,
  gamePage,
  quizPage,
  settingsPage
}

class BottomBar extends StatefulWidget {
  const BottomBar({
    super.key,
  });

  @override
  State<BottomBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.black.withOpacity(0.08))),
      ),
      padding: const EdgeInsets.fromLTRB(40, 10, 40, 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              if (page != EPageOnSelect.homePage) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const HomePage()),
                    (route) => false);
                page = EPageOnSelect.homePage;
                setState(() {});
              }
            },
            child: SizedBox(
                width: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    page == EPageOnSelect.homePage
                        ? Image.asset(
                            'assets/home2.png',
                          )
                        : Image.asset(
                            'assets/home.png',
                          ),
                    Text('Home',
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            color: page == EPageOnSelect.homePage
                                ? const Color(0xFF581CD8)
                                : Colors.black,
                            fontSize: 14))
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              if (page != EPageOnSelect.newsPage) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const NewsPage()),
                    (route) => false);
                page = EPageOnSelect.newsPage;
                setState(() {});
              }
            },
            child: SizedBox(
                width: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    page == EPageOnSelect.newsPage
                        ? Image.asset(
                            'assets/news2.png',
                          )
                        : Image.asset(
                            'assets/news.png',
                          ),
                    Text('News',
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            color: page == EPageOnSelect.newsPage
                                ? const Color(0xFF581CD8)
                                : Colors.black,
                            fontSize: 14))
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              if (page != EPageOnSelect.quizPage) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const QuizPage()),
                    (route) => false);
                page = EPageOnSelect.quizPage;
                setState(() {});
              }
            },
            child: SizedBox(
                width: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    page == EPageOnSelect.quizPage
                        ? Image.asset(
                            'assets/quiz2.png',
                          )
                        : Image.asset(
                            'assets/quiz.png',
                          ),
                    Text('Quiz',
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            color: page == EPageOnSelect.quizPage
                                ? const Color(0xFF581CD8)
                                : Colors.black,
                            fontSize: 14))
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              if (page != EPageOnSelect.settingsPage) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const SettingsPage()),
                    (route) => false);
                page = EPageOnSelect.settingsPage;
                setState(() {});
              }
            },
            child: SizedBox(
                width: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    page == EPageOnSelect.settingsPage
                        ? Image.asset(
                            'assets/settings2.png',
                          )
                        : Image.asset(
                            'assets/settings.png',
                          ),
                    Text('Settings',
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            color: page == EPageOnSelect.settingsPage
                                ? const Color(0xFF581CD8)
                                : Colors.black,
                            fontSize: 14))
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
