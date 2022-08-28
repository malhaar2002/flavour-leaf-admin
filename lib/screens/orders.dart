import 'package:flutter/material.dart';
import 'package:ticci_web/widgets/sidemenu.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Orders',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      drawer: const SideMenu(),
      body: SingleChildScrollView(
        child: Row(
          children: [
            Expanded(
              child: FittedBox(
                child: DataTable(
                  headingRowColor: MaterialStateProperty.resolveWith(
                    (states) => const Color(0xFFF9F9F9),
                  ),
                  headingTextStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  columns: const [
                    DataColumn(label: Text('ID')),
                    DataColumn(label: Text('Name')),
                    DataColumn(label: Text('Delivery Location')),
                    DataColumn(label: Text('Time')),
                    DataColumn(label: Text('Cost')),
                    DataColumn(label: Text('Status')),
                  ],
                  rows: const [
                    DataRow(cells: [
                      DataCell(Text('#1')),
                      DataCell(Text('Malhaar Arora')),
                      DataCell(Text('Banana Leaf')),
                      DataCell(Text('Aug 27, 2022 12:13 PM')),
                      DataCell(Text('₹150')),
                      DataCell(Text('Pending')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('#1')),
                      DataCell(Text('Malhaar Arora')),
                      DataCell(Text('Banana Leaf')),
                      DataCell(Text('Aug 27, 2022 12:13 PM')),
                      DataCell(Text('₹150')),
                      DataCell(Text('Pending')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('#1')),
                      DataCell(Text('Malhaar Arora')),
                      DataCell(Text('Banana Leaf')),
                      DataCell(Text('Aug 27, 2022 12:13 PM')),
                      DataCell(Text('₹150')),
                      DataCell(Text('Pending')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('#1')),
                      DataCell(Text('Malhaar Arora')),
                      DataCell(Text('Banana Leaf')),
                      DataCell(Text('Aug 27, 2022 12:13 PM')),
                      DataCell(Text('₹150')),
                      DataCell(Text('Pending')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('#1')),
                      DataCell(Text('Malhaar Arora')),
                      DataCell(Text('Banana Leaf')),
                      DataCell(Text('Aug 27, 2022 12:13 PM')),
                      DataCell(Text('₹150')),
                      DataCell(Text('Pending')),
                    ]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
