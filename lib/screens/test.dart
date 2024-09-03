// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Flutter code sample for [PageView].

// void main() => runApp(const PageViewExampleApp());

// class PageViewExampleApp extends StatelessWidget {
//   const PageViewExampleApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('PageView Sample')),
//         body: const PageViewExample(),
//       ),
//     );
//   }
// }

// class PageViewExample extends StatefulWidget {
//   const PageViewExample({super.key});

//   @override
//   State<PageViewExample> createState() => _PageViewExampleState();
// }

// class _PageViewExampleState extends State<PageViewExample>
//     with TickerProviderStateMixin {
//   late PageController _pageViewController;
//   late TabController _tabController;
//   int _currentPageIndex = 0;

//   @override
//   void initState() {
//     super.initState();
//     _pageViewController = PageController();
//     _tabController = TabController(length: 3, vsync: this);
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _pageViewController.dispose();
//     _tabController.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final TextTheme textTheme = Theme.of(context).textTheme;

//     return Stack(
//       alignment: Alignment.bottomCenter,
//       children: <Widget>[
//         PageView(
//           /// [PageView.scrollDirection] defaults to [Axis.horizontal].
//           /// Use [Axis.vertical] to scroll vertically.
//           controller: _pageViewController,
//           onPageChanged: _handlePageViewChanged,
//           children: <Widget>[
//             Center(
//               child: Text('First Page', style: textTheme.titleLarge),
//             ),
//             Center(
//               child: Text('Second Page', style: textTheme.titleLarge),
//             ),
//             Center(
//               child: Text('Third Page', style: textTheme.titleLarge),
//             ),
//           ],
//         ),
//         PageIndicator(
//           tabController: _tabController,
//           currentPageIndex: _currentPageIndex,
//           onUpdateCurrentPageIndex: _updateCurrentPageIndex,
//           isOnDesktopAndWeb: _isOnDesktopAndWeb,
//         ),
//       ],
//     );
//   }

//   void _handlePageViewChanged(int currentPageIndex) {
//     if (!_isOnDesktopAndWeb) {
//       return;
//     }
//     _tabController.index = currentPageIndex;
//     setState(() {
//       _currentPageIndex = currentPageIndex;
//     });
//   }

//   void _updateCurrentPageIndex(int index) {
//     _tabController.index = index;
//     _pageViewController.animateToPage(
//       index,
//       duration: const Duration(milliseconds: 400),
//       curve: Curves.easeInOut,
//     );
//   }

//   bool get _isOnDesktopAndWeb {
//     if (kIsWeb) {
//       return true;
//     }
//     switch (defaultTargetPlatform) {
//       case TargetPlatform.macOS:
//       case TargetPlatform.linux:
//       case TargetPlatform.windows:
//         return true;
//       case TargetPlatform.android:
//       case TargetPlatform.iOS:
//       case TargetPlatform.fuchsia:
//         return false;
//     }
//   }
// }

/// Page indicator for desktop and web platforms.
///
/// On Desktop and Web, drag gesture for horizontal scrolling in a PageView is disabled by default.
/// You can defined a custom scroll behavior to activate drag gestures,
/// see https://docs.flutter.dev/release/breaking-changes/default-scroll-behavior-drag.
///
/// In this sample, we use a TabPageSelector to navigate between pages,
/// in order to build natural behavior similar to other desktop applications.
// class PageIndicator extends StatelessWidget {
//   const PageIndicator({
//     super.key,
//     required this.tabController,
//     required this.currentPageIndex,
//     required this.onUpdateCurrentPageIndex,
//     required this.isOnDesktopAndWeb,
//   });

//   final int currentPageIndex;
//   final TabController tabController;
//   final void Function(int) onUpdateCurrentPageIndex;
//   final bool isOnDesktopAndWeb;

//   @override
//   Widget build(BuildContext context) {
//     if (!isOnDesktopAndWeb) {
//       return const SizedBox.shrink();
//     }
//     final ColorScheme colorScheme = Theme.of(context).colorScheme;

//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           IconButton(
//             splashRadius: 16.0,
//             padding: EdgeInsets.zero,
//             onPressed: () {
//               if (currentPageIndex == 0) {
//                 return;
//               }
//               onUpdateCurrentPageIndex(currentPageIndex - 1);
//             },
//             icon: const Icon(
//               Icons.arrow_left_rounded,
//               size: 32.0,
//             ),
//           ),
//           TabPageSelector(
//             controller: tabController,
//             color: colorScheme.surface,
//             selectedColor: colorScheme.primary,
//           ),
//           IconButton(
//             splashRadius: 16.0,
//             padding: EdgeInsets.zero,
//             onPressed: () {
//               if (currentPageIndex == 2) {
//                 return;
//               }
//               onUpdateCurrentPageIndex(currentPageIndex + 1);
//             },
//             icon: const Icon(
//               Icons.arrow_right_rounded,
//               size: 32.0,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(OraimoApp());
}

class OraimoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OraimoScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class OraimoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Top circular categories
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Outer circle with items
                Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.green.shade700,
                      width: 1.5,
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        top: 0,
                        child: _buildCategoryIcon(Icons.headphones, context),
                      ),
                      Positioned(
                        right: 0,
                        child: _buildCategoryIcon(Icons.watch, context),
                      ),
                      Positioned(
                        bottom: 0,
                        child: _buildCategoryIcon(Icons.memory, context),
                      ),
                      Positioned(
                        left: 0,
                        child: _buildCategoryIcon(Icons.battery_full, context),
                      ),
                      Positioned(
                        top: 50,
                        right: 50,
                        child: _buildCategoryIcon(Icons.phone_android, context),
                      ),
                      Positioned(
                        top: 50,
                        left: 50,
                        child: _buildCategoryIcon(
                            Icons.lightbulb_outline, context),
                      ),
                    ],
                  ),
                ),
                // Inner circle with labels
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green.shade900,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildCategoryLabel("Audio"),
                      _buildCategoryLabel("Lifestyle"),
                      _buildCategoryLabel("Power"),
                      _buildCategoryLabel("Wearables"),
                      _buildCategoryLabel("Memory"),
                      _buildCategoryLabel("Incar"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Text and button section
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Buy all Oraimo product at\nyour comfort home',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Lorem ipsum dolor sit amet consectetur. Suscipit nulla '
                  'convallis amet tristique nisi ipsum massa. Ut tincidunt '
                  'amet et.',
                  style: GoogleFonts.roboto(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 20),
                // Page Indicator
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _buildPageIndicator(true),
                    _buildPageIndicator(false),
                    _buildPageIndicator(false),
                  ],
                ),
                SizedBox(height: 20),
                // Button
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      child: Text(
                        'Back to list',
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryIcon(IconData icon, BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.green, width: 1.5),
      ),
      child: Icon(icon, color: Colors.green, size: 30),
    );
  }

  Widget _buildCategoryLabel(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Text(
        label,
        style: GoogleFonts.roboto(
          color: Colors.green,
          fontSize: 12,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildPageIndicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      height: 5.0,
      width: isActive ? 30.0 : 10.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.green : Colors.grey,
        borderRadius: BorderRadius.circular(5.0),
      ),
    );
  }
}
