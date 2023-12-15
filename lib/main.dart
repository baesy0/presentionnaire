import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              color: Colors.white,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.8,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '관념적인 개념을 몸으로 체화하여 익히는 프로그램입니다.\n소마틱스, 정신과 몸의 연결성에 철학적 바탕을 두고,\n분석심리학에 이론적인 배경을 두고 있습니다.',
                      style: GoogleFonts.notoSans(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w100,
                      color: Colors.black,  
                      ),
                      textAlign: TextAlign.center,
                    ),
                    // 추가적인 텍스트 또는 위젯을 여기에 추가할 수 있습니다.
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.blueGrey,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.8,
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '구성요소',
                          style: GoogleFonts.notoSans(
                            fontWeight: FontWeight.w200,
                            fontSize: 40.0,
                            letterSpacing: 20,
                            color: Colors.black,
                            height: 2.0,
                          ),
                        ),
                        Text(
                          '아래 요소를 상황과 주제에 맞게 배치합니다.',
                          style: GoogleFonts.notoSans(
                            fontWeight: FontWeight.w100,
                            fontSize: 20.0,
                            letterSpacing: 1.0,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 30), // 원하는 간격 조절
                        Text(
                          '명상 / 호흡(Pranayama) / 요가\n움직임 (Authentic Movement, Contact Beyond Contact, Contact Improvisation)\n대화 / 글',
                          style: GoogleFonts.notoSans(
                          fontWeight: FontWeight.w100,
                          fontSize: 15.0,
                          letterSpacing: 1.0,
                          color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.8,
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '주제',
                          style: GoogleFonts.notoSans(
                            fontWeight: FontWeight.w200,
                            fontSize: 40.0,
                            letterSpacing: 20,
                            color: Colors.black,
                            height: 2.0,
                          ),
                        ),
                        Text(
                          '움직임 워크샵을 통해 다루는 주제입니다.',
                          style: GoogleFonts.notoSans(
                            fontWeight: FontWeight.w100,
                            fontSize: 20.0,
                            letterSpacing: 1.0,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 30), // 원하는 간격 조절
                        Text(
                          '그라운딩 / 센터링 / 관계 & 연결 / 플로잉\n자기신뢰 / 자기 신뢰에 기반한 타인에 대한 신뢰 / 감정 (분노, 슬픔 ...)',
                          style: GoogleFonts.notoSans(
                          fontWeight: FontWeight.w100,
                          fontSize: 15.0,
                          letterSpacing: 1.0,
                          color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
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
