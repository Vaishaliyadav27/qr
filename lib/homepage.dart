import 'package:flutter/material.dart';
import 'package:qr_app/generate_qrcode.dart';
import 'package:qr_app/scan_qrcode.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Scanner and Generator'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => ScanQrcode()));
                });
              },
              child: Text('Scan QR Code'),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => GenerateQrcode()),
                  );
                });
              },
              child: Text('Generate QR Code'),
            ),
          ],
        ),
      ),
    );
  }
}
