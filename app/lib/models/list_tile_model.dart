import 'dart:async';

import 'package:flutter/material.dart';

class ListTileModel {
  final String? title;
  final String? subtitle;
  final String? text;
  final Widget? trailing;
  final Function? onTap;
  final Icon? icon;
  final FutureOr<void> Function()? function;

  ListTileModel({
    this.title,
    this.subtitle,
    this.text,
    this.trailing,
    this.onTap,
    this.icon,
    this.function,
  });

  factory ListTileModel.fromJson(Map<String, dynamic> json) {
    return ListTileModel(
      title: json['title'],
      subtitle: json['subtitle'],
      text: json['text'],
      trailing: json['trailing'],
      onTap: json['onTap'],
      icon: json['icon'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'subtitle': subtitle,
      'text': text,
      'trailing': trailing,
      'onTap': onTap,
      'icon': icon,
    };
  }

  static List<ListTileModel> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((item) => ListTileModel.fromJson(item)).toList();
  }
}
