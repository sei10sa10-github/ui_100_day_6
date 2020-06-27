import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:ui_100_day_6/common/models/excersize.dart';
import 'package:ui_100_day_6/common/models/ui_state.dart';
import 'package:ui_100_day_6/dashboard/pages/dashboard.dart';
import 'package:ui_100_day_6/home/models/home_state.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  PageController _pageController;
  AnimationController _rippleController;
  AnimationController _scaleController;
  Animation _rippleAnimation;
  Animation _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _rippleController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _scaleController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _rippleController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _rippleController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _rippleController.forward();
      }
    });
    _scaleController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        final homeState = context.read<HomeState>();
        final excersize = homeState.excersize[_pageController.page.toInt()];
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.fade,
            child: Dashboard(excersize: excersize),
          ),
        ).then((value) => _scaleController.reset());
      }
    });

    _rippleAnimation =
        Tween<double>(begin: 80.0, end: 90.0).animate(_rippleController);
    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 30.0).animate(_scaleController);

    _rippleController.forward();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _rippleController.dispose();
    _scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black87,
        child: showContents(context),
      ),
    );
  }

  Widget showContents(BuildContext context) {
    final state = context.watch<HomeState>();
    if (state.uiState == UiState.loading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    final excersize = state.excersize;

    return PageView.builder(
        controller: _pageController,
        itemCount: excersize.length,
        itemBuilder: (context, index) => getPage(excersize[index]));
  }

  Container getPage(Excersize excersize) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/${excersize.image}'),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.1),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        excersize.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                        ),
                      ),
                      SizedBox(
                        height: 36,
                      ),
                      Text(
                        excersize.sports.toString(),
                        style: TextStyle(
                          color: Colors.yellow.withOpacity(.8),
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Minutes',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                        ),
                      ),
                      SizedBox(
                        height: 36,
                      ),
                      Text(
                        excersize.excersize.toString(),
                        style: TextStyle(
                          color: Colors.yellow.withOpacity(.8),
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Excersize',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Start the morning with your health',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      GestureDetector(
                        onTap: () => _scaleController.forward(),
                        child: AnimatedBuilder(
                          animation: _rippleAnimation,
                          builder: (context, child) => Container(
                            width: _rippleAnimation.value,
                            height: _rippleAnimation.value,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue.withOpacity(.4),
                            ),
                            child: AnimatedBuilder(
                              animation: _scaleAnimation,
                              child: Container(
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                ),
                              ),
                              builder: (context, child) {
                                return ScaleTransition(
                                  scale: _scaleAnimation,
                                  child: child,
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
