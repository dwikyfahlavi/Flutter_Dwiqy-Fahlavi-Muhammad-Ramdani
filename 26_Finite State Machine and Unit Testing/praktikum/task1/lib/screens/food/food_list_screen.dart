import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/provider/food_provider.dart';

class FoodListScreen extends StatefulWidget {
  const FoodListScreen({Key? key}) : super(key: key);

  @override
  State<FoodListScreen> createState() => _FoodListScreenState();
}

class _FoodListScreenState extends State<FoodListScreen> {
  final _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
      await Provider.of<FoodProvider>(context, listen: false).fetchAllContacts();
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FoodProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Foods'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _buildFoodListScreen(provider),
      ),
    );
  }

  Widget _buildFoodListScreen(FoodProvider provider) {
    final isLoading = provider.state == FoodProviderState.loading;
    final isError = provider.state == FoodProviderState.error;

    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (isError) {
      return const Center(
        child: Text('Gagal memuat data'),
      );
    }

    return _buildFoodList(provider);
  }

  Widget _buildFoodList(FoodProvider provider) {
    return ListView.builder(
      controller: _controller,
      itemCount: provider.foods.length,
      itemBuilder: (context, index) {
        final foods = provider.foods[index];
        return ListTile(
          leading: CircleAvatar(
            child: Text(foods.name!.substring(0, 1)),
          ),
          title: Text(foods.name!),
        );
      },
    );
  }
}
