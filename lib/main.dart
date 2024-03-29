import 'package:flutter/material.dart';

void main() {
  runApp(const CodingTestApp());
}

class CodingTestApp extends StatelessWidget {
  const CodingTestApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coding Test App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet felis et nisl sagittis ultrices nec sed nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis nec consequat libero. Sed in ipsum non felis pharetra ullamcorper nec nec nisi. Sed vehicula lorem eget vestibulum consequat. Phasellus auctor viverra est, nec suscipit turpis posuere nec. Donec eget nunc et turpis ultricies mattis. Sed vitae scelerisque mi. Suspendisse aliquam congue tortor nec ullamcorper. Nulla facilisi.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Your Solution',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const TextField(
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: 'Write your code here...',
                    contentPadding: EdgeInsets.all(10),
                    border: InputBorder.none,
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
                    title: Text('Code Submitted'),
                    content: Text('Your code has been submitted successfully.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Submit'),
            ),
            const SizedBox(height: 10),
            const Text(
              'Warning: Plagiarism may result in consequences!',
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
