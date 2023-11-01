part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeActionState extends HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoadingState extends HomeState {}

final class HomeLoadingSuccessState extends HomeState {}

final class HomeLoadingErrorState extends HomeState {}

// Navigation
final class HomeNavigateToWishlistPageActionState extends HomeActionState {}

final class HomeNavigateToCartPageActionState extends HomeActionState {}

final class HomeNavigateToProfilePageActionState extends HomeActionState {}
