import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'package:server_status/theme/theme_manager.dart';

class FontSettings extends StatefulWidget {
  const FontSettings({super.key});

  @override
  State<FontSettings> createState() => _FontSettingsState();
}

class _FontSettingsState extends State<FontSettings> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Text(AppLocalizations.of(context)!.font),
        ),
        ..._buildFontVariantList(),
      ],
    );
  }

  List<Widget> _buildFontVariantList() {
    final List<Widget> list = [];
    for (final AppFontType font in AppFontType.values) {
      list.add(_FontVariant(fontType: font));
    }
    return list;
  }
}

class _FontVariant extends StatelessWidget {
  const _FontVariant({
    Key? key,
    required this.fontType,
  }) : super(key: key);

  final AppFontType fontType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Consumer(builder: (context, ThemeManager themeNotifier, child) {
        bool isCurrentFont = fontType == themeNotifier.theme.font;
        return GestureDetector(
          onTap: isCurrentFont
              ? null
              : () {
                  themeNotifier.setFontType(fontType);
                },
          child: _buildFontWidget(fontType, context),
        );
      }),
    );
  }
}

Widget _buildFontWidget(AppFontType fontType, BuildContext context) {
  late Widget fontWidget;
  switch (fontType) {
    case AppFontType.pixel:
      fontWidget = Text(
        AppLocalizations.of(context)!.pixel,
        style: TextStyle(
          fontFamily: fontFamily(fontType),
          fontSize: AppTheme.defaultFontSize(fontType),
        ),
      );
      break;
    case AppFontType.classic:
      fontWidget = Text(
        AppLocalizations.of(context)!.classic,
        style: TextStyle(
          fontFamily: fontFamily(fontType),
          fontSize: AppTheme.defaultFontSize(fontType),
        ),
      );
      break;
  }
  return fontWidget;
}
