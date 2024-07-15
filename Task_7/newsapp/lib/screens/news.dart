import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  bool isHealthyPressed = false;

  // Function to show the Bottom Sheet
  void _showFilterBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      builder: (BuildContext context) {
        return const FilterBottomSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              width: 370,
              height: 50,
              padding: const EdgeInsets.all(5.0),
              child: const TextField(
                decoration: InputDecoration(
                    labelText: 'COVID New Variant',
                    labelStyle: TextStyle(color: Colors.black),
                    suffixIcon: Icon(Icons.close),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black12),
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    )),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FilterButton(
                      label: 'Filter',
                      isPressed: isHealthyPressed,
                      onPressed: () {
                        setState(() {
                          isHealthyPressed = !isHealthyPressed;
                        });
                        _showFilterBottomSheet();
                      },
                    ),
                    FilterButton(
                      label: 'Healthy',
                      isPressed: isHealthyPressed,
                      onPressed: () {
                        setState(() {
                          isHealthyPressed = !isHealthyPressed;
                        });
                      },
                    ),
                    FilterButton(
                      label: 'Technology',
                      isPressed: isHealthyPressed,
                      onPressed: () {
                        setState(() {
                          isHealthyPressed = !isHealthyPressed;
                        });
                      },
                    ),
                    FilterButton(
                      label: 'Finance',
                      isPressed: isHealthyPressed,
                      onPressed: () {
                        setState(() {
                          isHealthyPressed = !isHealthyPressed;
                        });
                      },
                    ),
                    FilterButton(
                      label: 'Arts',
                      isPressed: isHealthyPressed,
                      onPressed: () {
                        setState(() {
                          isHealthyPressed = !isHealthyPressed;
                        });
                      },
                    ),
                    FilterButton(
                      label: 'Sports',
                      isPressed: isHealthyPressed,
                      onPressed: () {
                        setState(() {
                          isHealthyPressed = !isHealthyPressed;
                        });
                      },
                    ),
                  ],
                ),
              ),
              const SearchResultsHeader(),
              const NewsCard(
                imagePath: "assets/images/5.png",
                title:
                "What do is You're Planning or attending a\nwedding during the pandemic",
                author: "Kristen Rogers",
                date: "Sunday, 9 May 2021",
              ),
              const SizedBox(height: 6),
              const NewsCard(
                imagePath: "assets/images/2.png",
                title: "4 ways families can ease anxiety together",
                author: "Zain Korsgaard",
                date: "Sunday, 9 May 2021",
              ),
              const SizedBox(height: 6),
              const NewsCard(
                imagePath: "assets/images/6.jpeg",
                title:
                "What to do if you're planning or attending a \n wedding during the pandemic",
                author: "Kristen Rogers",
                date: "Sunday, 9 May 2021",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  final String label;
  final bool isPressed;
  final VoidCallback onPressed;

  const FilterButton({
    required this.label,
    required this.isPressed,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 4, 50, 50),
      child: TextButton(
        style: TextButton.styleFrom(
          fixedSize: const Size(80, 10),
          backgroundColor: isPressed ? Colors.red : Colors.white12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19),
            side: const BorderSide(color: Colors.grey),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(
            color: isPressed ? Colors.white : Colors.black,
            fontFamily: "nuito",
          ),
        ),
      ),
    );
  }
}

class SearchResultsHeader extends StatelessWidget {
  const SearchResultsHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'About 11,130,000 results for ',
          style: TextStyle(fontSize: 15, fontFamily: 'merriw'),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'CoVID New Variant',
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}

class NewsCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String author;
  final String date;

  const NewsCard({
    required this.imagePath,
    required this.title,
    required this.author,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                title,
                style: const TextStyle(
                  fontFamily: "merriw",
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.055),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  author,
                  style: const TextStyle(
                    fontFamily: "nunito",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  date,
                  style: const TextStyle(
                    fontFamily: "nunito",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                "Filter",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextButton(
                  onPressed: () {
                    // Reset filter logic here
                    Navigator.pop(context); // Close the Bottom Sheet
                  },
                  child: const Row(
                    children: [
                      Icon(
                        Icons.restore_from_trash_rounded,
                        color: Colors.black,
                      ),
                      Text(
                        'Reset',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsetsDirectional.only(start: 15),
            child: Text(
              'Sort By',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(height: 11),
          Center(
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                FilterChip(label: 'Recommended', onPressed: () {}),
                FilterChip(label: 'Latest', onPressed: () {}),
                FilterChip(label: 'Most Viewed', onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FilterChip extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const FilterChip({
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(
        label,
        style: const TextStyle(
          fontFamily: "nunito",
          fontSize: 14,
        ),
      ),
      onSelected: (bool selected) {
        onPressed();
      },
      selected: false,
      selectedColor: Colors.red,
      backgroundColor: Colors.black12,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
