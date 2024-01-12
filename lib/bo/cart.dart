import 'package:epsi_shop/bo/article.dart';
import 'package:flutter/foundation.dart';

class Cart with ChangeNotifier {
  final _items = <Article>[];
  String getTVA(){
    var prix = 0 as num;
    for (Article item in _items) {
        prix+= item.prix;
    }
    prix = prix*100 * 0.2;
    return (prix/100).toString();
  }

  String getTTC(){
    var prix = 0 as num;
    for (Article item in _items) {
      prix+= item.prix;
    }
    prix = prix*100 + prix*100 * 0.2;
    return (prix/100).toString();
  }

  String priceTotalInEuro() =>
      "${_items.fold(0 as num, (itemPrev, item) => itemPrev + item.prix) / 10}€";
  //String priceTotalInEuroSimpl() {
  //  var prix = 0 as num;
  //  for cle item in _items) {
  //    prix+= it(Artiem.prix;
  //  }
  //  return "$prix€";
  //}
  List<Article> get items => _items;
  //<Article>[].fold(0 as num, (previousValue, element) => previousValue + element.prix)

  void addArticle(Article article) {
    _items.add(article);
    notifyListeners();
  }

  void removeArticle(Article article) {
    _items.remove(article);
    notifyListeners();
  }
}
