// Statefull widget
// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   String message = "Hello World";

//   void changeMessage() {
//     setState(() {
//       message = 'You pressed the button';
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('hello world app')),
//       body: Center(child: Text(message, style: const TextStyle(fontSize: 24))),
//       floatingActionButton: FloatingActionButton(
//         onPressed: changeMessage,
//         child: const Icon(Icons.refresh),
//       ),
//     );
//   }
// }

// Stateless widget
// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Stateless Example'),
//         centerTitle: true,
//         backgroundColor: Colors.deepPurple,
//         elevation: 10,
//       ),
//       body: Center(
//         child: Card(
//           elevation: 8,
//           margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: Container(
//             padding: const EdgeInsets.all(20),
//             width: double.infinity,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: const [
//                 Icon(Icons.home, size: 80, color: Colors.deepPurple),
//                 SizedBox(height: 20),
//                 Text(
//                   'Hello, Flutter!',
//                   style: TextStyle(
//                     fontSize: 26,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black87,
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   'Welcome to your beautiful app screen',
//                   style: TextStyle(fontSize: 16, color: Colors.black54),
//                   textAlign: TextAlign.center,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// Implementation of Flutter Layout using Container / Row / Column etc.

// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             color: Colors.blue,
//             height: 100,
//             width: 100,
//             child: const Center(child: Text('Box 1')),
//           ),
//           const SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 color: Colors.red,
//                 height: 100,
//                 width: 100,
//                 child: const Center(child: Text('Box 2')),
//               ),
//               const SizedBox(width: 20),
//               Container(
//                 color: Colors.green,
//                 height: 100,
//                 width: 100,
//                 child: const Center(child: Text('Box 3')),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// Implementation of Flutter Form and validations.

// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final _formKey = GlobalKey<FormState>();
//   final _nameController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Simple form')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               TextFormField(
//                 controller: _nameController,
//                 decoration: const InputDecoration(labelText: 'Name'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your name';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(
//                         content: Text('Hello, ${_nameController.text}!'),
//                       ),
//                     );
//                   }
//                 },
//                 child: const Text('submit'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// Implementation of Flutter routing and gesture.
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Routing and Gesture demo',
      home: const FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First page')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondPage()),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(20),
            color: Colors.blue,
            child: const Text(
              'Tap to go to second page',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second page')),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          color: Colors.amberAccent,
          child: const Text(
            'You are on the second page',
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
        ),
      ),
    );
  }
}
