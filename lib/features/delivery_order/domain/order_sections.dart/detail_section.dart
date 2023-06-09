import 'package:pedido_listo_web/features/shopping_cart/domain/shopping_car_dto.dart';

class DetailsSection {
  final List<ItemCart> items;

  DetailsSection(this.items);

  String get itemsDetail => items.map((item) {
        final comment = item.comment.trim().isEmpty
            ? ''
            : '\n    Comentario: ${item.comment}';

        final extrasFood = item.extrasFood.isEmpty
            ? ''
            : '\n${item.extrasFood.map((topic) => '    · ${topic.amount} ${topic.extraFood.name} S/.${topic.extraFood.price}').join('\n')}';
        final optionsFoodOneSelection = item.optionsFoodOneSelection.isEmpty
            ? ''
            : '\n${item.optionsFoodOneSelection.map((topic) => '    · 1 ${topic.optionFood.name} S/.${topic.optionFood.price}').join('\n')}';
        final optionsFoodForMultiple = item.optionsFoodForMultiple.isEmpty
            ? ''
            : '\n${item.optionsFoodForMultiple.map((topic) => '    · 1 ${topic.optionFood.name} S/.${topic.optionFood.price}').join('\n')}';
        return '''
    ${item.amount} ${item.product.name} S/.${item.totalCostForUnit} c/u
    Precio unitario: S/.${item.product.priceWithDiscount}$comment$extrasFood$optionsFoodOneSelection$optionsFoodForMultiple
   ''';
      }).join('\n');

  String buildText() {
    return '''
\u{1F4DD} *Pedido*

$itemsDetail''';
  }
}
