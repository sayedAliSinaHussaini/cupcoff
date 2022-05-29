# cupcoff

Experience comfort with CUPCOFF and think only of your own design ...

## Getting Started

This project is a starting point for a Flutter application.

## Exempale
```dart
class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CupCoff(
        padding: const EdgeInsets.all(30),
        enableScroll: true,
        child: SizedBox(
          child: Column(children: [
            Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.all(10),
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.all(10),
              color: Colors.black,
            ),
            Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.all(10),
              color: Colors.green,
            ),
            Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.all(10),
              color: Colors.amber,
            ),
            Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.all(10),
              color: Colors.amber,
            )
          ]),
        ),
      ),
    );
  }
}

```