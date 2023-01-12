import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class PageManager {
  PageManager({int initialPage = 0, required this.onChangePage}) {
    pageController = PageController(initialPage: initialPage);
    page = initialPage;
  }

  final Function onChangePage;

  factory PageManager.of(BuildContext context) {
    return context.read<PageManager>();
  }

  Future<bool> onWillPop() async {
    if (previousPage()) {
      // return await mostrarCaixaConfirmacao(context, title: 'Deseja Sair do app?');
      return false;
    }
    return false;
  }

  late final PageController pageController;

  late int page;

  List<int> previousPages = [0];

  void setPage(int newPage) {
    if (newPage != page) {
      previousPages.add(page);
      _changePage(newPage);
    }
  }

  _changePage(int newPage) {
    pageController.jumpToPage(newPage);
    page = newPage;
    onChangePage();
  }

  int getPreviousPage() {
    int size = previousPages.length;
    int x = previousPages[size - 1];
    if (size > 1) {
      previousPages.removeLast();
    }

    return x;
  }

  bool previousPage() {
    int lastPage = getPreviousPage();

    if (lastPage != page) {
      _changePage(lastPage);
      return true;
    }
    return false;
  }
}
