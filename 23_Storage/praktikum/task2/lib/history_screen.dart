import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/history_bloc.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final _controller = ScrollController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
        centerTitle: true,
      ),
      body: BlocBuilder<HistoryBloc, HistoryState>(
        builder: (context, state) {
          if (state is HistoryInit) {
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListView.builder(
                controller: _controller,
                itemCount: state.listHistory.length,
                itemBuilder: (context, index) {
                  final states = state.listHistory[index];
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('You have ${state.listHistory[index].status} '),
                              Text(states.contact.name, style: const TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                          const SizedBox(
                            height: 2.0,
                          ),
                          Text('${states.date} | ${states.time}', style: const TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          }
          return const Text('an error occured');
        },
      ),
    );
  }
}
