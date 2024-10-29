part of 'location_bloc.dart';

class LocationState extends Equatable {
  final bool followingUser;
  /* TODO:
          Last location
          Historial ub
  */

  const LocationState({this.followingUser = false});

  @override
  List<Object> get props => [followingUser];
}
