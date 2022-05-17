import 'package:blocfreezed/app/core/models/photo_model.dart';
import 'package:blocfreezed/app/core/widgets/cicular_progress_widget.dart';
import 'package:blocfreezed/app/core/widgets/error_widget.dart';
import 'package:blocfreezed/app/modules/photo/presentation/bloc/photo_bloc.dart';
import 'package:blocfreezed/app/modules/photo/presentation/bloc/photo_event.dart';
import 'package:blocfreezed/app/modules/photo/presentation/bloc/photo_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

class PhotoPage extends StatefulWidget {
  final String title;
  const PhotoPage({Key? key, this.title = 'PhotoPage'}) : super(key: key);
  @override
  PhotoPageState createState() => PhotoPageState();
}

class PhotoPageState extends State<PhotoPage> {
  final PhotoBloc bloc = Modular.get();

  @override
  void initState() {
    bloc.add(const PhotoEvent.fetchPhotos());
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocBuilder<PhotoBloc, PhotoState>(
        bloc: bloc,
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            data: (value) => buidData(value),
            loading: () => const CircularProgressWidget(),
            error: (value) => ErrorMessageWidget(error: value),
          );
        },
      ),
    );
  }

  Widget buidData(List<PhotoModel> photos) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: photos.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Image.network(photos[index].url),
        );
      },
    );
  }
}
