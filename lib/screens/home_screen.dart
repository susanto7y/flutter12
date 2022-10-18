import 'package:flutter/material.dart';
import 'package:flutter_application_santo/screens/detail_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  // Page controller
  final _pageController = PageController(viewportFraction: 0.877);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        // ignore: sort_child_properties_last
        children: <Widget>[
          Container(
            color: Color.fromARGB(255, 98, 101, 104),
            height: 57.6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 57.6,
                  width: 57.6,
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.6),
                    color: const Color(0x080a0928),
                  ),
                  child: const Icon(Icons.reorder),
                ),
                Text(
                  'SantoApp',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 20.5,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                Container(
                  height: 57.6,
                  width: 57.6,
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.6),
                    color: const Color(0x080a0928),
                  ),
                  child: const Icon(Icons.search),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 48, left: 28.8),
            child: Text(
              ' Welcome \n Calon Programer',
              style: GoogleFonts.playfairDisplay(
                fontSize: 30.5,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                color: Color.fromARGB(255, 98, 101, 104),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            color: Color.fromARGB(255, 107, 105, 105),
            height: 218.4,
            margin: const EdgeInsets.only(top: 28.8),
            child: PageView(
              physics: const BouncingScrollPhysics(),
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.only(right: 28.8),
                      width: 333.6,
                      height: 218.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://media.istockphoto.com/photos/programming-code-abstract-technology-background-of-software-deve-picture-id537331500'))),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailScreen(),
                        ),
                      );
                      print("You Click Me");
                    }),
                GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.only(right: 28.8),
                      width: 333.6,
                      height: 218.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1461749280684-dccba630e2f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80'))),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailScreen(),
                        ),
                      );
                      print("You Click Me");
                    }),
                GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.only(right: 28.8),
                      width: 333.6,
                      height: 218.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1614741118887-7a4ee193a5fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'))),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailScreen(),
                        ),
                      );
                      print("You Click Me");
                    }),
                GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.only(right: 28.8),
                      width: 333.6,
                      height: 218.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://media.istockphoto.com/photos/global-network-connections-picture-id913827738?k=20&m=913827738&s=612x612&w=0&h=w15BaEAUjDJbfWF4cAUrZnOSB3z0HYg_hlRF7CsNCNE='))),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailScreen(),
                        ),
                      );
                      print("You Click Me");
                    }),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 28.8, top: 28.8),
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 4,
                effect: const ExpandingDotsEffect(
                    activeDotColor: Colors.blue,
                    dotColor: Colors.blueGrey,
                    dotHeight: 5,
                    dotWidth: 6,
                    spacing: 5),
              )),
          // Judul untuk section vertical content
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Untuk Anda',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Show All',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
          ),

          // Listview (vertical content)
          Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            child: GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(right: 28.8),
                width: 333.6,
                height: 218.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9.6),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1516321318423-f06f85e504b3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailScreen(),
                  ),
                );
                print("You Click Me");
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            child: GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(right: 28.8),
                width: 333.6,
                height: 218.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9.6),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailScreen(),
                  ),
                );
                print("You Click Me");
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            child: GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(right: 28.8),
                width: 333.6,
                height: 218.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9.6),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://media.istockphoto.com/photos/metaverse-digital-cyber-world-technology-man-with-virtual-reality-vr-picture-id1348369701?k=20&m=1348369701&s=612x612&w=0&h=SIx_A_vNQ7R-ciPnjATLhMS0qgQUJSO7DMvzfkkWeaM='),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailScreen(),
                  ),
                );
                print("You Click Me");
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            child: GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(right: 28.8),
                width: 333.6,
                height: 218.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9.6),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://media.istockphoto.com/photos/application-programming-interface-software-development-tool-business-picture-id1220461645?k=20&m=1220461645&s=612x612&w=0&h=IOB1tI4bGN4UzkOimZpBCq_KqZkK35JDJ80p4F4p9-M='),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailScreen(),
                  ),
                );
                print("You Click Me");
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            child: GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(right: 28.8),
                width: 333.6,
                height: 218.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9.6),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://media.istockphoto.com/vectors/diagnostic-auto-in-hud-style-vector-id1373152495?k=20&m=1373152495&s=612x612&w=0&h=tUID4UjFq-RP3X9K3TmsG_sE9w6KxfnfNCsUDjDQYYk='),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailScreen(),
                  ),
                );
                print("You Click Me");
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            child: GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(right: 28.8),
                width: 333.6,
                height: 218.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9.6),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1640367169401-534dec442631?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailScreen(),
                  ),
                );
                print("You Click Me");
              },
            ),
          ),

          // Penutup ListView
        ],
      ),
    ));
  }
}
