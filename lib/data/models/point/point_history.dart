class PointHistory {
  int? count;
  String? next;
  String? previous;
  List<Transaction>? results;

  PointHistory({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  PointHistory.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = <Transaction>[];
      json['results'].forEach(
        (v) {
          results!.add(
            Transaction.fromJson(v),
          );
        },
      );
    }
  }
}

class Transaction {
  String? id;
  String? title;
  String? prefix;
  int? amount;
  double? created;

  Transaction({
    this.id,
    this.title,
    this.prefix,
    this.amount,
    this.created,
  });

  Transaction.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    prefix = json['prefix'];
    amount = json['amount'];
    created = json['created'];
  }
}
