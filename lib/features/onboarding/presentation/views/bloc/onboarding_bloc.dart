import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_symptoms/core/constants/app_assets.dart';
import 'package:logger/logger.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingInitial()) {
    on<OnboardingEvent>((event, emit) {});
    on<OnboardingStarted>(_onboardingStarted);
  }

  FutureOr<void> _onboardingStarted(
      OnboardingStarted event, Emitter<OnboardingState> emit) async {
    emit(OnboardingLoading());
    String onboardingData =
        await rootBundle.loadString(AppAssets.onboardingItemsJson);
    Logger().d(onboardingData);
  }
}

class OnboardingItem extends Equatable {
  const OnboardingItem({
    required this.title,
    required this.description,
    required this.image,
  });

  final String title;
  final String description;
  final String image;

  @override
  List<Object?> get props => [title, description, image];
}
