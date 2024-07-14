// set_state_screen.dart
import 'package:flutter/material.dart';

class lastScreen extends StatefulWidget {
  const lastScreen({super.key});

  @override
  State<lastScreen> createState() => _lastScreenState();
}

class _lastScreenState extends State<lastScreen> {
  final List<String> filterNames = [
     'احمد', 'محمد', 'عمر'
  ];
  int? _selectedIndex;
  bool isObscure = true;
  int? currentButtonIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('last Screen')),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 30,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: filterNames.length,
                      itemBuilder: (context, index) {
                        final isSelected = _selectedIndex == index;
                        return Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: isSelected ? Colors.blue : Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                _selectedIndex = isSelected ? null : index;
                              });
                            },
                            child: Text(
                              filterNames[index],
                              style: TextStyle(
                                color: isSelected ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              obscureText: isObscure,
              decoration: InputDecoration(
                labelText: 'Enter Password',
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  icon: Icon(isObscure ? Icons.visibility_off : Icons.visibility),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
          _buildContext(),
          const SizedBox(height: 60),
        ],
      ),
    );
  }

  Widget _buildContext() {
    switch (currentButtonIndex) {
      case 1:
        return Text('This is the text for Show Text button');
      case 2:
        return Image.asset('assets/cubit_image.png');
      case 3:
        return Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
        );
      default:
        return Container();
    }
  }
}
