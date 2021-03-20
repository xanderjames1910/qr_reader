import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/scan_list_provider.dart';
import 'package:qr_reader/widgets/scan_tiles.dart';

class DireccionesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final scanListProvider = Provider.of<ScanListProvider>(context);

    final scans = scanListProvider.scans;
    return scans.length != 0
        ? ScanTiles(tipo: 'http')
        : Center(
            child: Text('No se han escaneado urls'),
          );
  }
}
