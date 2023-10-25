import 'package:flutter/material.dart';

class ShowSnackBar extends StatefulWidget {
  const ShowSnackBar({super.key});

  @override
  State<ShowSnackBar> createState() => _ShowSnackBarState();
}

class _ShowSnackBarState extends State<ShowSnackBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            height: 40,
            width: 250,
            child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: Colors.blue,
                    content: Text('data'),
                  ),
                );
              },
              child: const Text('data'),
            ),
          ),
        ),
      ),
    );
  }
}
