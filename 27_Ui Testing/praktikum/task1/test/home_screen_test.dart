import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import 'package:task1/screens/home_screen.dart';
import 'package:task1/viewModels/food_provider.dart';

import 'home_screen_test.mocks.dart';

@GenerateMocks([FoodProvider])
void main() {
  late MockFoodProvider mockFoodProvider;

  setUp(() {
    mockFoodProvider = MockFoodProvider();
  });

  Widget _buildWidget() {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => FoodProvider(),
        ),
      ],
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }

  testWidgets('The title should be Foods', (WidgetTester tester) async {
    when(mockFoodProvider.state).thenReturn(FoodProviderState.none);

    await tester.pumpWidget(_buildWidget());
    await tester.pump(const Duration(seconds: 1));

    expect(find.byType(AppBar), findsOneWidget);
    expect(find.text('Foods'), findsOneWidget);
  });

  // testWidgets('Screen should display center progress indicator when loading', (WidgetTester tester) async {
  //   await tester.pumpWidget(_buildWidget());
  //   await tester.pump(const Duration(seconds: 1));

  //   expect(find.byKey(const Key("progress indicator")), findsOneWidget);
  // });

  // testWidgets('Screen should display a list view when loaded', (WidgetTester tester) async {
  //   await tester.pumpWidget(_buildWidget());
  //   await tester.pump(const Duration(seconds: 1));

  //   expect(find.byKey(const Key("food list view")), findsOneWidget);
  // });
}
