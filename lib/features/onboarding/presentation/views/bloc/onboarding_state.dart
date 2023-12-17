part of 'onboarding_bloc.dart';

class OnboardingState extends Equatable {
  final List<OnboardingItem> onboardingItems;
  const OnboardingState({this.onboardingItems = const []});

  @override
  List<Object> get props => [onboardingItems];

  OnboardingState copyWith({List<OnboardingItem>? onboardingItems}) {
    return OnboardingState(
        onboardingItems: onboardingItems ?? this.onboardingItems);
  }
}

final class OnboardingInitial extends OnboardingState {}

final class OnboardingLoading extends OnboardingState {}
