import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:confetti/confetti.dart';
import 'dart:html' as html;
import 'dart:math';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'presentionnaire',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'present with your heart'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(duration: const Duration(milliseconds: 50));
  }

   @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // 투명한 AppBar 배경색
        elevation: 0, // 그림자 효과 제거
        title: Text(''), // 타이틀을 비워서 공간 차지하지 않게
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color.fromARGB(255, 226, 184, 248),
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'PRESENTIONNAIRE',
                      style: GoogleFonts.notoSans(
                      fontSize: 50.0,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 20,
                      color: Colors.black,  
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 32.0), // 추가된 여백
                    Text(
                      '선물지',
                      style: GoogleFonts.notoSans(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w100,
                      letterSpacing: 20,
                      color: Colors.black,  
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 60.0),
                    Text(
                      'COPYRIGHT 2023 BAESEOYOUNG ALL RIGHTS RESERVED',
                      style: GoogleFonts.notoSans(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 5,
                      color: Color.fromARGB(255, 109, 109, 109),  
                      ),
                      textAlign: TextAlign.center,
                    ),
                    // 추가적인 텍스트 또는 위젯을 여기에 추가할 수 있습니다.
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '지금, 눈 앞의 너를 깊이 알려는 마음.',
                          style: GoogleFonts.notoSans(
                            fontWeight: FontWeight.w200,
                            fontSize: 30.0,
                            letterSpacing: 10,
                            color: Colors.black,
                            height: 2.0,
                          ),
                        ),
                        Text(
                          '받는 이의 삶에 스며들어 오래 머무는 선물.',
                          style: GoogleFonts.notoSans(
                            fontWeight: FontWeight.w200,
                            fontSize: 30.0,
                            letterSpacing: 10,
                            color: Colors.black,
                            height: 2.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color.fromARGB(255, 226, 184, 248),
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                ElevatedButton(
                  onPressed: () {
                    _confettiController.play(); // 콘페티 효과 시작

                    // 다운로드 코드 추가
                    final url = 'assets/presentionnaire.pdf';
                    final anchor = html.AnchorElement(href: url)
                      ..setAttribute('download', 'presentionnaire.pdf')
                      ..click();
                  },
                  child: Text(
                    '선물지\n다운받기',
                    textAlign: TextAlign.center, // 텍스트 가운데 정렬
                    style: TextStyle(color: Colors.white), // 텍스트 색상을 하얀색으로 설정
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple, // 버튼 색상
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20), // 버튼 패딩
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20), // Confetti 위젯과 버튼 사이에 간격 추가
                // ConfettiWidget 추가
                ConfettiWidget(
                  confettiController: _confettiController,
                  blastDirection: 0, // 콘페티가 아래로 향하게 설정
                  emissionFrequency: 0.8,
                  numberOfParticles: 10, // 콘페티 입자 수
                  blastDirectionality: BlastDirectionality.explosive,
                  maxBlastForce: 20,  // 콘페티 속도 조절
                  minBlastForce: 10,
                  gravity: 0.01,
                ),
              ],
              ),
            ),
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              height: MediaQuery.of(context).size.height*0.1,
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'COPYRIGHT 2023 BAESEOYOUNG ALL RIGHTS RESERVED',
                          style: GoogleFonts.notoSans(
                            fontWeight: FontWeight.w100,
                            fontSize: 10.0,
                            letterSpacing: 5,
                            color: Colors.black,
                            height: 2.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
