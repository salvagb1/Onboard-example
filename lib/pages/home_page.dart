import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showConfetti = false;

  void _startAnimation() {
    setState(() {
      _showConfetti = true;
    });

    // Ocultar la animación después de que termine (por ejemplo, después de 3 segundos)
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        _showConfetti = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
          child: Text(
            'Inicio',
            style: TextStyle(
              color: Colors.white,
              fontSize: 23,
              fontFamily: 'Roboto',
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/notification.svg',
              width: 31,
              height: 31,
            ),
            onPressed: () {},
          ),
          // SizedBox(width: 10),
          Container(
            width: 35,
            height: 37,
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Color(0xff002656),
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                'assets/icons/sidemenu.svg',
                width: 24,
                height: 24,
              ),
              onPressed: () {
                // Acción al presionar el botón
                // toggleMenu();
              },
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Center(
            child: LottieBuilder.asset(
              'assets/animations/animation_pc.json',
              repeat: true,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 60,
                width: double.infinity,
                margin: EdgeInsets.all(40),
                child: MaterialButton(
                  onPressed: () async {
                    _startAnimation();
                    final Uri _url = Uri.parse('https://flutter.dev');
                    if (!await launchUrl(_url)) {
                      throw Exception('Could not launch $_url');
                    }
                  },
                  color: Colors.indigo,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Empezar",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
          Visibility(
            visible: _showConfetti,
            child: LottieBuilder.asset(
              'assets/animations/confeti2.json',
              width: MediaQuery.sizeOf(context).height,
              height: MediaQuery.sizeOf(context).width,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  // void linkUrl() async {
  //   final Uri _url = Uri.parse('https://flutter.dev');
  //   if (!await launchUrl(_url)) {
  //     throw Exception('Could not launch $_url');
  //   }
  // }
}
