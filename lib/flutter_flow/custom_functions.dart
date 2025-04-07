import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? findRelationship(
  String? bull,
  String? cow,
) {
  Map<String, List<String>> ancestors = {
    'B1': [
      'Sarah',
      'Robert',
      'Grandma1',
      'Grandpa1',
      'GreatGrandma1',
      'GreatGrandpa1'
    ],
    'B3': [
      'Sarah',
      'Robert',
      'Grandma1',
      'Grandpa1',
      'GreatGrandma1',
      'GreatGrandpa1'
    ],
    'B2': [
      'Emily',
      'David',
      'Grandma2',
      'Grandpa2',
      'GreatGrandma2',
      'GreatGrandpa2'
    ],
    'C1': [
      'Emily',
      'David',
      'Grandma2',
      'Grandpa2',
      'GreatGrandma2',
      'GreatGrandpa2'
    ],
    'C2': [
      'Linda',
      'Michael',
      'Grandma3',
      'Grandpa3',
      'GreatGrandma3',
      'GreatGrandpa1'
    ],
    'C3': [
      'Linda',
      'Michael',
      'Grandma3',
      'Grandpa3',
      'GreatGrandma3',
      'GreatGrandma3'
    ]
  };

  if (!ancestors.containsKey(bull) || !ancestors.containsKey(cow)) {
    return 'both are 0.00% related';
  }

  List<String> ancestors1 = ancestors[bull]!;
  List<String> ancestors2 = ancestors[cow]!;

  Set<String> commonAncestors =
      ancestors1.toSet().intersection(ancestors2.toSet());

  int totalAncestors = ancestors1.length + ancestors2.length;
  double percentage = (commonAncestors.length * 2) / totalAncestors * 100;

  return 'both are ${percentage.toStringAsFixed(2)}% related';
}
