class Cashback {
  final String code;
  final String title;
  final double amount;
  Cashback({
    required this.code,
    required this.title,
    required this.amount,
  });

  Map<String, dynamic> toMap() {
    return {
      'code': code,
      'title': title,
      'amount': amount,
    };
  }

  factory Cashback.fromMap(Map<String, dynamic> map) {
    return Cashback(
      code: map['code'],
      title: map['title'],
      amount: map['amount'],
    );
  }
}

final dummyCashback = [
  Cashback(code: 'NEWACC20', title: 'Welcome Fellas', amount: 20),
  Cashback(code: 'WKEND2-5', title: 'Special Weekend', amount: 2.5),
  Cashback(code: 'ISHOES10', title: 'Special from Our CEO', amount: 10),
];
