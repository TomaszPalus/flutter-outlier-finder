class InputParser {
  List<int> parseCsvInts(String raw) {
    final trimmed = raw.trim();
    if (trimmed.isEmpty) {
      throw FormatException('Wpisz liczby oddzielone przecinkami.');
    }

    final parts = trimmed.split(',');
    if (parts.length < 3) {
      throw FormatException('Podaj co najmniej 3 liczby.');
    }

    final result = <int>[];
    for (final p in parts){
      final token = p.trim();
      if (token.isEmpty) continue;

      final value = int.tryParse(token);
      if (value == null){
        throw FormatException('Niepoprawna liczba: "$token"');
      }
      result.add(value);
    }

    return result;
  }
}