import 'package:flutter_dapp/utils/constants.dart';
import 'package:http/http.dart';
import 'package:web3dart/web3dart.dart';

import 'package:flutter/material.dart';

import '../services/functions.dart';
import 'election_info.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Client? httpClient;
  Web3Client? ethClient;
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    httpClient = Client();
    ethClient = Web3Client(infuraUrl, httpClient!);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Start Election'),
      ),
      body: Container(
        padding: const EdgeInsets.all(14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                  filled: true, hintText: 'Enter Election Name'),
            ),
            Container(
                width: double.infinity,
                height: 45,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ElevatedButton(
                    onPressed: () async {
                      if (controller.text.isNotEmpty) {
                        await startElection(controller.text, ethClient!);
                        if (!mounted) return;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ElectionInfo(
                                ethClient: ethClient!,
                                electionName: controller.text),
                          ),
                        );
                      }
                    },
                    child: const Text('Start Election')))
          ],
        ),
      ),
    );
  }
}
