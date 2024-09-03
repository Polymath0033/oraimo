import 'package:flutter/material.dart';
import 'package:oraimo/screens/auth/signup.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with SingleTickerProviderStateMixin {
  final PageController _pageController = PageController();
  late TabController _tabController;
  int _currentIndex = 0;
  final List<Map<String, String>> _list = [
    {
      'title': 'Buy all Oraimo product at your comfort home',
      'label': 'Earbuds',
    },
    {
      'title': 'Locate any Oraimo agent around you',
      'label': 'Earphones',
    },
    {
      'title': 'get your product delivered to your doorstep',
      'label': 'Headphones',
    }
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  void _handleViewChange(int index) {
    setState(() {
      _currentIndex = index;
      _tabController.animateTo(index);
    });
  }

  void _handlePageChange(int index) {
    setState(() {
      _currentIndex = index;
      _pageController.animateToPage(index,
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget buildIndicator(int index) {
      bool active = _currentIndex == index;
      return AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        // margin: const EdgeInsets.symmetric(horizontal: 1.0),
        height: 6.0,
        width: active ? 49.0 : 33.0,
        decoration: BoxDecoration(
          color: active
              ? Theme.of(context).primaryColor
              : const Color.fromRGBO(51, 51, 51, 1),
          borderRadius: BorderRadius.circular(5.0),
        ),
      );
    }

    Widget buildCategoryIcon(IconData icon) {
      return Container(
        height: 54,
        width: 54,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
          border: Border.all(color: Colors.white, width: 2),
        ),
        child: Icon(
          icon,
          color: Theme.of(context).primaryColor,
          size: 30,
        ),
      );
    }

    Widget buildCategoryLabel(IconData icon, String label) {
      return Padding(
        padding: const EdgeInsets.all(4.557),
        child: Row(
          children: [
            Icon(icon, color: Theme.of(context).primaryColor, size: 12.152),
            const SizedBox(width: 3),
            Text(
              label,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.671,
                  fontWeight: Theme.of(context).textTheme.bodyLarge!.fontWeight,
                  letterSpacing: -0.273),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      //backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      // extendBodyBehindAppBar: _currentIndex == 0,
      appBar: AppBar(
        backgroundColor: _currentIndex == 0
            ? const Color(0xFF181B02)
            : Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
          padding: const EdgeInsets.all(8),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(const Color(0xFF23251F)),
            shape: MaterialStateProperty.all(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
            ),
            iconColor: MaterialStateProperty.all(Colors.white),
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) => _handleViewChange(index),
              children: [
                Stack(
                  //fit: StackFit.expand,
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: const Color(0xFF181B02),
                      // decoration: BoxDecoration(
                      //   gradient: const LinearGradient(
                      //     begin: Alignment.topCenter,
                      //     end: Alignment.bottomCenter,
                      //     colors: [
                      //       Color(0xFF0C0C00), // Dark top color
                      //       Color(0xFF181B02), // Dark bottom color
                      //     ],
                      //   ),
                      //   border: Border.all(color: Colors.white, width: 5.0),
                      // ),
                      child: const Text(
                        'Page 1',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/stack-3.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/stack-2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 40, left: 23, right: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _list[_currentIndex]['title']!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight:
                          Theme.of(context).textTheme.displaySmall!.fontWeight,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Lorem ipsum dolor sit amet consectetur. Suscipit nulla '
                    'convallis amet tristique nisi ipsum massa. Ut tincidunt '
                    'amet et.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight:
                          Theme.of(context).textTheme.bodyLarge!.fontWeight,
                    ),
                  ),
                  //const SizedBox(height: 5.0),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        for (int indicator in [0, 1, 2]) ...[
                          TextButton(
                            onPressed: () {
                              _handlePageChange(indicator.toInt());
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: const Size(0, 0),
                            ),
                            child: buildIndicator(indicator),
                          ),
                          if (indicator != 2) const SizedBox(width: 1),
                        ],
                      ],
                    ),
                  ),
                  // const SizedBox(
                  //   height: 48,
                  // ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) => const SignUpScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          backgroundColor: Theme.of(context).primaryColor,
                          shadowColor: const Color.fromRGBO(0, 151, 136, 0.06),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 67.0, vertical: 12),
                          child: Text(
                            'Back to list',
                            style: TextStyle(
                              color: const Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 16.0,
                              fontWeight: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .fontWeight,
                              letterSpacing: 0.48,
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    // Positioned(
    //   bottom: 20,
    //   left: 0,
    //   right: 0,
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       for (int i = 0; i < 3; i++)
    //         GestureDetector(
    //           onTap: () => _handlePageChange(i),
    //           child: Container(
    //             margin: const EdgeInsets.all(5),
    //             width: 10,
    //             height: 10,
    //             decoration: BoxDecoration(
    //               color: i == _currentIndex
    //                   ? Theme.of(context).primaryColor
    //                   : Colors.grey,
    //               shape: BoxShape.circle,
    //             ),
    //             child: Text(
    //               i.toString(),
    //               style: TextStyle(color: Theme.of(context).primaryColor),
    //             ),
    //           ),
    //         ),
    //     ],
    //   ),
    // ),
  }
}
