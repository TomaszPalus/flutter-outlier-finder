import 'package:flutter/material.dart';
import '../../gen_l10n/app_localizations.dart';
import '../../di/service_locator.dart';
import '../../domain/input_parser.dart';
import '../../domain/outlier_finder.dart';
import 'result_page.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final _controller = TextEditingController();

  // DI
  final _parser = getIt<InputParser>();
  final _finder = getIt<OutlierFinder>();

  String? _error;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onSearch() {
    final l10n = AppLocalizations.of(context)!;

    setState(() => _error = null);

    try {
      final numbers = _parser.parseCsvInts(_controller.text);
      final outlier = _finder.findOutlier(numbers);

      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => ResultPage(result: outlier),
        ),
      );
    } on FormatException {
      setState(() => _error = l10n.invalidFormat);
    } on TooFewNumbersException {
      setState(() => _error = l10n.tooFewNumbers);
    } on OutlierNotFoundException {
      setState(() => _error = l10n.outlierNotFound);
    } catch (_) {
      setState(() => _error = l10n.unknownError);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: l10n.inputLabel,
                hintText: l10n.inputHint,
                border: const OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _onSearch,
                child: Text(l10n.search),
              ),
            ),
            if (_error != null) ...[
              const SizedBox(height: 12),
              Text(
                _error!,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
