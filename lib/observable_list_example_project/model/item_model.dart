



class ItemModelClass {
  final String? title;

  final bool check;
  const ItemModelClass({this.title, this.check = false});

  ItemModelClass copyWith({bool? check}) {
    return ItemModelClass(title: title, check: check ?? this.check);
  }
}



//===============================example of another copy with class as above mentioned class.++++++++++++++++++++++++++++++++++
class Ab {
  final String? title1;

  Ab({this.title1});

  Ab copyWith() {
    return Ab(title1: title1);
  }

  ItemModelClass abc = ItemModelClass(title: "stysg", check: false);
}
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



