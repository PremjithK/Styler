part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeInitEvent extends HomeEvent{
  
}

class HomeProfileButtonNavigateEvent extends HomeEvent{
  
}
class HomeCartButtonNavigateEvent extends HomeEvent{

}
class HomeWishlistButtonNavigateEvent extends HomeEvent{

}