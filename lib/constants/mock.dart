import 'package:flutter/material.dart';

List<Map<String, dynamic>> formDataSource = [
  {
    'type': 'BASIC_INFORMATION',
    'data': [
      {
        'label': 'Name',
        'controller': TextEditingController(),
        'type': 'TEXT_INPUT'
      },
      {
        'label': 'LastName',
        'controller': TextEditingController(),
        'type': 'TEXT_INPUT'
      }
    ],
  },
  {
    'type': 'EMPLOYER_INFORMATION',
    'data': [
      {
        'label': 'Company Name',
        'controller': TextEditingController(),
        'type': 'TEXT_INPUT'
      },
      {
        'label': 'Address',
        'controller': TextEditingController(),
        'type': 'TEXT_INPUT'
      }
    ],
  },
  {
    'type': 'FINANCIAL_INFORMATION',
    'data': [
      {
        'label': 'Monthly Income',
        'controller': TextEditingController(),
        'type': 'NUMERIC_INPUT'
      },
      {
        'label': 'Monthly Spending',
        'controller': TextEditingController(),
        'type': 'NUMERIC_INPUT'
      }
    ],
  },
];
