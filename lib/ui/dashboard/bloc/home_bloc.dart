import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {});

    // Event that fires when the homepage loads
    on<HomeInitEvent>(homeInitEvent);

    // Navigating to cart when cart button on home page is clicked
    on<HomeCartButtonNavigateEvent>(homeNavigateToCartPage);

    // Navigating to Profile when Proflie button on home page is clicked
    on<HomeProfileButtonNavigateEvent>(
      (event, emit) {},
    );
    // Navigating to Profile when Wishlist button on home page is clicked
    on<HomeWishlistButtonNavigateEvent>(
      (event, emit) {},
    );
  }

  FutureOr<void> homeNavigateToCartPage(
      HomeCartButtonNavigateEvent event, Emitter<HomeState> emit) {
    print('Cart Button Clicked!');
    emit(HomeNavigateToCartPageActionState());
  }

  FutureOr<void> homeInitEvent(HomeInitEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());
    await Future.delayed(const Duration(milliseconds: 1500));
  }
}
