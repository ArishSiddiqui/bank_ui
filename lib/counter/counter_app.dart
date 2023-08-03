import 'package:banking_app_ui/counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import 'bloc/counter_bloc_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  // final String title;

  @override
  Widget build(BuildContext context) {
    // This [BlocProvider] Widget is necessary for each Page.
    return BlocProvider(
      create: (_) => CounterCubit(),
      // create: (_) => CounterBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              BlocBuilder<CounterCubit, CounterState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      Text(
                        '${state.counter}',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            style: IconButton.styleFrom(
                              foregroundColor: Colors.green[300],
                              backgroundColor: Colors.grey[300],
                            ),
                            onPressed: () => BlocProvider.of<CounterCubit>(context).increment(),
                            // onPressed: () => BlocProvider.of<CounterBloc>(context).add(CounterIncrementEvent()),
                            icon: const Icon(Icons.add),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          IconButton(
                            onPressed: () => context.read<CounterCubit>().decrement(),
                            // onPressed: () => context.read<CounterBloc>().add(CounterDecrementEvent()),
                            style: IconButton.styleFrom(
                              foregroundColor: Colors.red[300],
                              backgroundColor: Colors.grey[300],
                            ),
                            icon: const Icon(Icons.remove),
                          ),
                        ],
                      )
                    ],
                  );
                },
              ),
            ],
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () => BlocProvider.of<CounterBloc>(context)
        //       .add(CounterIncrementEvent()),
        //   tooltip: 'Increment',
        //   child: const Icon(Icons.add),
        // ),
      ),
    );
  }
}

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     // [setState()] One of the state management technique, by default provided by Flutter.
//     setState(() {
//       _counter++;
//     });
//   }

//   scaffolBody() {
//     print(_counter);
//     return;
//   }

//   body() {
//     return;
//   }
// }
