import 'package:pedido_listo_web/features/delivery_order/domain/summary_dto.dart';

class DetailsSection {
  final List<SummaryProduct> items;

  DetailsSection(this.items);

  String get itemsDetail => items.map((item) {
        final comment = item.comment.trim().isEmpty
            ? ''
            : '\n    Comentario: ${item.comment}';

        final modifiers = item.modifiers.isEmpty
            ? ''
            : '\n${item.modifiers.map((topic) => '    · ${topic.quantity} ${topic.name} S/.${topic.price}').join('\n')}';

        return '''
    ${item.quantity} ${item.name} S/.${item.priceWithModifiers} c/u
    Precio unitario: S/.${item.price}$comment$modifiers
   ''';
      }).join('\n');

  String buildText() {
    return '''
\u{1F4DD} *Pedido*

$itemsDetail''';
  }
}
