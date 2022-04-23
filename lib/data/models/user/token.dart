class Token {
  Token({
    this.access,
    this.refresh,
    this.expired,
  });

  String? access;
  String? refresh;
  String? expired;
  factory Token.fromJson(Map<String, dynamic> json) => Token(
        access: json['access'],
        refresh: json['refresh'],
        expired: json['expired'],
      );
  Map<String, dynamic> toJson() => {
        'access': access,
        'refresh': refresh,
        'expired': expired,
      };
}
