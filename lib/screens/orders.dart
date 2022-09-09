import 'package:flutter/material.dart';
import 'package:ticci_web/models/order_model.dart';
import 'package:ticci_web/widgets/sidemenu.dart';
import 'package:ticci_web/widgets/statusdropdown.dart';

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
                        ...OrderModel.ordersList.map((order) => DataRow(cells: [
                              DataCell(Text(order.id.toString())),
                              DataCell(Text(order.name)),
                              DataCell(Text(order.deliveryLocation)),
                              DataCell(Text(order.time.toString())),
                              DataCell(Text(order.cost.toString())),
                              const DataCell(StatusDropdown()),
                              // TODO: Make this dynamic and remove hard-coded values[]
                              DataCell(
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                                      child: RichText(
                                        text: TextSpan(
                                          text: 'Burger',
                                          children: <TextSpan>[
                                            const TextSpan(text: ' x '),
                                            TextSpan(
                                              text: 2.toString(),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        text: 'Coca Cola',
                                        children: <TextSpan>[
                                          const TextSpan(text: ' x '),
                                          TextSpan(
                                            text: 3.toString(),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ]))
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// RichText(
//                                     text: TextSpan(
//                                       text: orderItem.itemName,
//                                       children: <TextSpan>[
//                                         const TextSpan(text: 'x'),
//                                         TextSpan(
//                                           text: orderItem.quantity.toString(),
//                                         )
//                                       ],
//                                     ),
//                                   );
//                                 );
