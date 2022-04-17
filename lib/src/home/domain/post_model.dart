// Developed by Eng Mouaz M Shahmeh 2022

import 'package:cloud_firestore/cloud_firestore.dart';

class PostModel {
  final String? title;
  final double? price;
  final int? quantity;
  final Timestamp? timeAdded;

  PostModel({
    this.title,
    this.price,
    this.quantity,
    this.timeAdded,
  });
}
