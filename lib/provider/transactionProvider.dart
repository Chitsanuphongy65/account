import 'package:flutter_account/model/transaction.dart';
import 'package:flutter/foundation.dart';

class TransactionProvider with ChangeNotifier {
  List<Transaction> transactions = [
    Transaction(title: 'เสื้อ', amount: 1500, date: DateTime.now()),
    Transaction(title: 'กางเกง', amount: 1000, date: DateTime.now()),
    Transaction(title: 'กระเป๋า', amount: 800, date: DateTime.now()),
    Transaction(title: 'รองเท้า', amount: 5000, date: DateTime.now()),
    Transaction(title: 'แว่น', amount: 900, date: DateTime.now()),
    Transaction(title: 'หมวก', amount: 200, date: DateTime.now()),
    Transaction(title: 'ถุงเท้า', amount: 50, date: DateTime.now()),
    Transaction(title: 'ถุงมือ', amount: 100, date: DateTime.now()),
  ];

  List<Transaction> getTransactions() {
    return transactions;
  }

  void addTransaction(Transaction transaction) {
    transactions.add(transaction);
    notifyListeners();
  }
}