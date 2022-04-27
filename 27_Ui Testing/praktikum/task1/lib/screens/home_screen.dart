import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/viewModels/food_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      await Provider.of<FoodProvider>(context, listen: false).fetchAllFoods();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Foods'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<FoodProvider>(builder: (context, provider, _) {
          final isLoading = provider.state == FoodProviderState.loading;
          final isError = provider.state == FoodProviderState.error;

          if (isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                key: Key('progress indicator'),
              ),
            );
          }

          if (isError) {
            return const Center(
              child: Text('Gagal memuat data'),
            );
          }

          return _buildFoodList(provider);
        }),
      ),
    );
  }

  Widget _buildFoodList(FoodProvider provider) {
    return ListView.builder(
      controller: _controller,
      itemCount: provider.foods.length,
      itemBuilder: (context, index) {
        final foods = provider.foods[index];
        return ListTile(
          key: Key('food list view'),
          leading: CircleAvatar(
            child: Text(foods.name!.substring(0, 1)),
          ),
          title: Text(foods.name!),
        );
      },
    );
  }
}
