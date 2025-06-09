import 'package:app2/core/network/general_api.dart';
import 'package:app2/featchers/Profile/data/model/profile_remote_data_source.dart';

class ProfileRemotDataSourceImpl implements ProfileRemoteDataSource {
  final API api;

  ProfileRemotDataSourceImpl({required this.api});
}
