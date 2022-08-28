import 'package:flutter/material.dart';
import 'package:ticci_web/widgets/sidemenu.dart';
import 'package:ticci_web/widgets/statusdropdown.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  Color _getDataRowColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };

    if (states.any(interactiveStates.contains)) {
      return const Color(0xFF0046FE);
    }
    //return Colors.green; // Use the default value.
    return Colors.transparent;
  }

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: SingleChildScrollView(
          child: Row(
            children: [
              Expanded(
                child: FittedBox(
                  child: DataTable(
                    showCheckboxColumn: false,
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
                      DataColumn(label: Text('Order')),
                    ],
                    rows: [
                      DataRow(
                        onSelectChanged: (value) => print("I was selected"),
                        cells: [
                          const DataCell(Text('#1')),
                          const DataCell(Text('Malhaar Arora')),
                          const DataCell(Text('Banana Leaf')),
                          const DataCell(Text('Aug 27, 2022 12:13 PM')),
                          const DataCell(Text('₹150')),
                          const DataCell(StatusDropdown()),
                          DataCell(
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Burger x 3'),
                                Text('Coca Cola x 1'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        onSelectChanged: (value) => print("I was selected"),
                        cells: [
                          const DataCell(Text('#1')),
                          const DataCell(Text('Malhaar Arora')),
                          const DataCell(Text('Banana Leaf')),
                          const DataCell(Text('Aug 27, 2022 12:13 PM')),
                          const DataCell(Text('₹150')),
                          const DataCell(StatusDropdown()),
                          DataCell(
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Burger x 3'),
                                Text('Coca Cola x 1'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        onSelectChanged: (value) => print("I was selected"),
                        cells: [
                          const DataCell(Text('#1')),
                          const DataCell(Text('Malhaar Arora')),
                          const DataCell(Text('Banana Leaf')),
                          const DataCell(Text('Aug 27, 2022 12:13 PM')),
                          const DataCell(Text('₹150')),
                          const DataCell(StatusDropdown()),
                          DataCell(
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Burger x 3'),
                                Text('Coca Cola x 1'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        onSelectChanged: (value) => print("I was selected"),
                        cells: [
                          const DataCell(Text('#1')),
                          const DataCell(Text('Malhaar Arora')),
                          const DataCell(Text('Banana Leaf')),
                          const DataCell(Text('Aug 27, 2022 12:13 PM')),
                          const DataCell(Text('₹150')),
                          const DataCell(StatusDropdown()),
                          DataCell(
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Burger x 3'),
                                Text('Coca Cola x 1'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
