import 'package:flutter/material.dart';
import 'package:flutter_demo_app/components/styled_button.dart';

void main() {
  runApp(const ShareITApp());
}

class ShareITApp extends StatelessWidget {
  const ShareITApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigoAccent),
          useMaterial3: true),
      home: const Dashboard(title: 'ShareIT'),
    );
  }
}

class Dashboard extends StatefulWidget {
  final String title;

  const Dashboard({super.key, required this.title});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        body: const CategoryListUi());
  }
}

class CategoryListUi extends StatelessWidget {
  const CategoryListUi({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CategoryItem(
            categoryType: 'Food',
            bgColor: Colors.indigo,
            textColor: Colors.white),
        CategoryItem(
            categoryType: 'Books',
            bgColor: Colors.orange,
            textColor: Colors.white),
        CategoryItem(
            categoryType: 'Cloth',
            bgColor: Colors.pink,
            textColor: Colors.white),
        CategoryItem(
            categoryType: 'Electronics',
            bgColor: Colors.black26,
            textColor: Colors.white),
        // CategoryItem(
        //     categoryType: 'Property',
        //     bgColor: Colors.green,
        //     textColor: Colors.white),
      ],
    );
  }

  onPressed() {}
}

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key,
      required this.categoryType,
      required this.bgColor,
      required this.textColor});

  final String categoryType;
  final Color bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: const EdgeInsets.all(5),
        child: StyledButton(
            categoryType: categoryType,
            bgColor: bgColor,
            textColor: textColor));
  }

  onPressed() {}
}
