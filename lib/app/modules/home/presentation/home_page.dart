import 'package:blocfreezed/app/modules/home/presentation/bloc/home_bloc.dart';
import 'package:blocfreezed/app/modules/home/presentation/bloc/home_event.dart';
import 'package:blocfreezed/app/modules/home/presentation/bloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../core/models/todo_model.dart';
import '../../../core/widgets/cicular_progress_widget.dart';
import '../../../core/widgets/error_widget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeBloc _homeBloc = Modular.get();

  @override
  void initState() {
    super.initState();

    _homeBloc.add(const HomeEvent.fetchPosts());
  }

  @override
  void dispose() {
    _homeBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () => Modular.to.pushNamed('/photos'),
            icon: const Icon(Icons.photo),
          ),
          IconButton(
            onPressed: () => _homeBloc.add(const HomeEvent.fetchPosts()),
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        bloc: _homeBloc,
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            data: (v) => buildData(v),
            loading: () => const CircularProgressWidget(),
            error: (v) => ErrorMessageWidget(error: v),
          );
        },
      ),
    );
  }

  Widget buildData(List<TodoModel> todos) {
    return ListView.separated(
      itemCount: todos.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) {
        final todo = todos[index];
        return CheckboxListTile(
          title: Text(todo.title),
          value: todo.completed,
          onChanged: (value) {},
        );
      },
    );
  }
}
