import 'package:flutter/material.dart';

class Inputs extends StatelessWidget {
  final TextEditingController input1;
  final TextEditingController input2;
  final TextEditingController input3;
  final TextEditingController input4;
  final String label1;
  final String label2;
  final String label3;
  final String label4;

  const Inputs({
    super.key,
    required this.input1,
    required this.input2,
    required this.input3,
    required this.input4,
    required this.label1,
    required this.label2,
    required this.label3,
    required this.label4,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextFormField(
            controller: input1,
            decoration: InputDecoration(
              labelText: label1,
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field cannot be empty';
              }
              return null;
            },
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            controller: input2,
            decoration: InputDecoration(
              labelText: label2,
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field cannot be empty';
              }
              return null;
            },
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            controller: input3,
            decoration: InputDecoration(
              labelText: label3,
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field cannot be empty';
              }
              if (label3 == 'Email' && !value.contains('@')) {
                return 'Please enter a valid email address';
              }
              return null;
            },
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            controller: input4,
            decoration: InputDecoration(
              labelText: label4,
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field cannot be empty';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
