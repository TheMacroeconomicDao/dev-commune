import 'package:flutter/material.dart';
import 'package:flutter_dapp/services/functions.dart';
import 'package:web3dart/web3dart.dart';

class ElectionInfo extends StatefulWidget {
  final Web3Client ethClient;
  final String electionName;
  const ElectionInfo(
      {super.key, required this.ethClient, required this.electionName});

  @override
  State<ElectionInfo> createState() => _ElectionInfoState();
}

class _ElectionInfoState extends State<ElectionInfo> {
  TextEditingController addCandidateController = TextEditingController();
  TextEditingController authorizeVoterControlles = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.electionName),
      ),
      body: Container(
        padding: const EdgeInsets.all(14),
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Column(
              children: [
                FutureBuilder<List>(
                    future: getCandidatesNum(widget.ethClient),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return Text(
                        snapshot.data![0].toString(),
                        style: const TextStyle(
                            fontSize: 50, fontWeight: FontWeight.bold),
                      );
                    }),
                const Text('Total Candidates'),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text('0',
                    style:
                        TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
                Text('Total Votes'),
              ],
            ),
          ]),
        ]),
      ),
    );
  }
}
