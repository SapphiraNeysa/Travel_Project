import 'package:flutter/material.dart';
import 'package:mejakita_project/pages/home.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<String> _recentSearches = ['Tanah Lot', 'Lempuyang', 'Lombok'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xffCCCED3),
                            shape: BoxShape.circle,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomePage(),
                                ),
                              );
                            },
                            child: Container(
                              height: 40,
                              width: 42,
                              decoration: BoxDecoration(
                                color: Color(0xffCCCED3),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.grey,
                                  size: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 24),
                        Container(
                          height: 40,
                          width: 250,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 236, 235, 235)
                                .withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Color(0xffC4C4C4),
                            ),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search",
                              hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withOpacity(0.5),
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black.withOpacity(0.5),
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Recently Search',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ..._recentSearches
                            .map(
                              (search) => Container(
                                height: 28,
                                width: 105,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 236, 235, 235)
                                          .withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Color(0xffC4C4C4),
                                  ),
                                ),
                                padding: EdgeInsets.only(left: 8),
                                child: Row(
                                  children: [
                                    Text(
                                      search,
                                      style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _recentSearches.remove(search);
                                        });
                                      },
                                      icon: Icon(Icons.close),
                                      iconSize: 10,
                                    ),
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Type of Destination',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                primary: Color.fromARGB(255, 14, 63, 103),
                                minimumSize: Size(80, 80)),
                            onPressed: () {},
                            child: Image.asset('assets/images/beach_icon.png'),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Beach',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                primary: Color.fromARGB(255, 14, 63, 103),
                                minimumSize: Size(80, 80)),
                            onPressed: () {},
                            child: Image.asset('assets/images/mount_icon.png'),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Mountain',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                primary: Color.fromARGB(255, 14, 63, 103),
                                minimumSize: Size(80, 80)),
                            onPressed: () {},
                            child: Image.asset('assets/images/forest_icon.png'),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Forest',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                primary: Color.fromARGB(255, 14, 63, 103),
                                minimumSize: Size(80, 80)),
                            onPressed: () {},
                            child:
                                Image.asset('assets/images/religion_icon.png'),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Religion',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                primary: Color.fromARGB(255, 14, 63, 103),
                                minimumSize: Size(80, 80)),
                            onPressed: () {},
                            child: Image.asset('assets/images/beach_icon.png'),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Beach',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                primary: Color.fromARGB(255, 14, 63, 103),
                                minimumSize: Size(80, 80)),
                            onPressed: () {},
                            child: Image.asset('assets/images/mount_icon.png'),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Mountain',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                primary: Color.fromARGB(255, 14, 63, 103),
                                minimumSize: Size(80, 80)),
                            onPressed: () {},
                            child: Image.asset('assets/images/forest_icon.png'),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Forest',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                primary: Color.fromARGB(255, 14, 63, 103),
                                minimumSize: Size(80, 80)),
                            onPressed: () {},
                            child:
                                Image.asset('assets/images/religion_icon.png'),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Religion',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ],
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
