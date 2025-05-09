//Declare all the variables that will be used in a fullStateWidget.
class ContainerState {
  final double result;
  final bool flagResult;

  ContainerState({required this.result, required this.flagResult});

  ContainerState copyWith({double? result, bool? flagResult}) {
    return ContainerState(
      result: result ?? this.result,
      flagResult: flagResult ?? this.flagResult,
    );
  }
}
