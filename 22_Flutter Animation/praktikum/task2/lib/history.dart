import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/blocs/history_bloc.dart';
import 'package:task2/history_model.dart';
import 'package:intl/intl.dart';

class HistoryScreen extends StatefulWidget {
  static const routeName = "/history_screen";
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  void initState() {
    context.read<HistoryBloc>().add(OnFetchHistory());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("History Contact"),
      ),
      body: SafeArea(
        child: BlocBuilder<HistoryBloc, HistoryState>(
          builder: (context, state) {
            if (state is HistoryLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is HistoryLoaded) {
              return Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ListView.builder(
                  itemCount: state.history.length,
                  itemBuilder: (ctx, idx) {
                    final data = state.history[idx];
                    return _buildWidgetContactTile(data, idx);
                  },
                ),
              );
            } else {
              return const Center(child: Text("Failed to load data"));
            }
          },
        ),
      ),
    );
  }

  ListTile _buildWidgetContactTile(HistoryModel history, int index) {
    return ListTile(
      leading: history.icon,
      title: Text(
        history.text,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
      subtitle: Text(
        DateFormat('dd:MM:yyyy HH:mm').format(history.time),
        style: const TextStyle(
          fontSize: 13,
          color: Colors.grey,
        ),
      ),
    );
  }
}
