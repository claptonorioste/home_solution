import '../../../domain/usecases/get_user_usecase.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class MainPresenter extends Presenter {
  Function getUserOnNext;
  Function getUserOnComplete;
  Function getUserOnError;

  final GetUserUseCase getUserUseCase;
  MainPresenter(usersRepo) : getUserUseCase = GetUserUseCase(usersRepo);

  void getUser(String uid) {
    getUserUseCase.execute(
        _GetUserUseCaseObserver(this), GetUserUseCaseParams(uid));
  }

  @override
  void dispose() {
    getUserUseCase.dispose();
  }
}

class _GetUserUseCaseObserver extends Observer<GetUserUseCaseResponse> {
  final MainPresenter presenter;
  _GetUserUseCaseObserver(this.presenter);
  @override
  void onComplete() {
    assert(presenter.getUserOnComplete != null);
    presenter.getUserOnComplete();
  }

  @override
  void onError(e) {
    assert(presenter.getUserOnError != null);
    presenter.getUserOnError(e);
  }

  @override
  void onNext(response) {
    assert(presenter.getUserOnNext != null);
    presenter.getUserOnNext(response.user);
  }
}
