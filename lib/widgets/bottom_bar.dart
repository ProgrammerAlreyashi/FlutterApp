import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  final Function leftPress;
  final int index;
  const BottomBar({super.key, required this.leftPress, required this.index});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                widget.leftPress(0);
              },
              color: widget.index == 0 ? Colors.blue : Colors.grey,
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                widget.leftPress(1);
              },
              color: widget.index == 1 ? Colors.blue : Colors.grey,
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                widget.leftPress(2);
              },
              color: widget.index == 2 ? Colors.blue : Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
