
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_database/firebase_database.dart';

part 'firebase_db_cubit.freezed.dart';
part 'firebase_db_state.dart';

class FirebaseDbCubit extends Cubit<FirebaseDbState> {
  late final FirebaseDatabase _database;
  late final DatabaseReference _ref;

  FirebaseDbCubit() : super(const FirebaseDbState.initial()){
    _database = FirebaseDatabase.instance;
    _ref = _database.ref();
  }

  Future<void> initialize() async {
    //
  }
}
