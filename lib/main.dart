import 'dart:math';

import 'package:codeing_test/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';
 import 'package:highlight/languages/java.dart';
 import 'package:highlight/languages/dart.dart';
// import 'package:flutter_highlight/themes/monokai-sublime.dart';
// import 'package:highlight/languages/java.dart';
//import '../common/snippets.dart';

void main() {
  runApp(const CodingTestApp());
}

final controller = CodeController(
  text: "class Solution {\n"
  "double findMedianSortedArrays(List<int> nums1, List<int> nums2) {\n"
  "\n"
" }\n"
"}\n",
  language: dart,
);

class CodingTestApp extends StatelessWidget {
  const CodingTestApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coding Test App',
      theme: ThemeData.dark(),
      home: const CodingTestScreen(),
    );
  }
}

class CodingTestScreen extends StatelessWidget {
  const CodingTestScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coding Test'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Problem Statement',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).',                 
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 5,),
                    Text(
              'Example 1:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 3,),
            Text(
              'Input: nums1 = [1,3], nums2 = [2]\n'
              'Output: 2.00000\n'
              'Explanation: merged array = [1,2,3] and median is 2.',
              style: TextStyle(
                fontSize: 16,
                //fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 3,),
                    Text(
              'Example 2:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 3,),
            Text(
              'Input: nums1 = [1,2], nums2 = [3,4]\n'
              'Output: 2.50000\n'
              'Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.',
              style: TextStyle(
                fontSize: 18,
                //fontWeight: FontWeight.bold,
              ),
            ),
                  ],
                ),
                //adding exaples and outputs///////////////////////////////////////////////////////////
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Text(
                  'Your Solution',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 170,),
                MyDropdownMenu(),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                  child: CodeTheme(
          data: CodeThemeData(styles: monokaiSublimeTheme),
          child: SingleChildScrollView(
            child: CodeField(
              controller: controller,
            ),
          ),
        ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Mock functionality for code submission
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Code Submitted'),
                    content: const Text('Your code has been submitted successfully.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Submit'),
            ),
            const SizedBox(height: 10),
            const Text(
              'Warning: Submissions with plagiarized code will be disqualified!',
              style: TextStyle(
                color: Colors.red,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
