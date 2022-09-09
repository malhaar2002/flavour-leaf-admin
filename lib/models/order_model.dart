import 'package:ticci_web/models/food_model.dart';

class OrderModel {
  int id;
  String name;
  String deliveryLocation;
  DateTime time;
  double cost;
  String status;
  List<FoodModel> order;

  OrderModel({
    required this.id,
    required this.name,
    required this.deliveryLocation,
    required this.time,
    required this.cost,
    this.status = 'Pending',
    required this.order,
  });

  static List<OrderModel> ordersList = [
    OrderModel(
      id: 1,
      name: 'Malhaar Arora',
      deliveryLocation: 'Banana Leaf',
      time: DateTime.now(),
      cost: 300,
      order: [
        FoodModel(itemName: 'Masala Dosa', quantity: 2),
        FoodModel(itemName: 'Iced Tea', quantity: 1),
      ],
    ),
    OrderModel(
      id: 2,
      name: 'Aditya Tyagi',
      deliveryLocation: 'Flavours of the North',
      time: DateTime.now(),
      cost: 80,
      order: [
        FoodModel(itemName: 'Paneer Parantha', quantity: 1),
        FoodModel(itemName: 'Cold Coffee', quantity: 1),
      ],
    ),
    OrderModel(
      id: 3,
      name: 'Nandan Mandal',
      deliveryLocation: 'Flavours of the North',
      time: DateTime.now(),
      cost: 180,
      order: [
        FoodModel(itemName: 'Chicken Biryani', quantity: 1),
      ],
    ),
    OrderModel(
      id: 4,
      name: 'Suhani Srivastava',
      deliveryLocation: 'Hostel',
      time: DateTime.now(),
      cost: 60,
      order: [
        FoodModel(itemName: 'Ice Cream', quantity: 3),
      ],
    ),
    OrderModel(
      id: 5,
      name: 'Spandan Panda',
      deliveryLocation: 'Hostel',
      time: DateTime.now(),
      cost: 500,
      order: [
        FoodModel(itemName: 'Chicken Lababdar', quantity: 1),
        FoodModel(itemName: 'Butter Naan', quantity: 4),
      ],
    ),
  ];
}
