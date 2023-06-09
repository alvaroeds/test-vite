import 'package:dartz/dartz.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/interface_delivery.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/order_sections.dart/contact_info_section.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/order_sections.dart/cost_section.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/order_sections.dart/detail_section.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/order_sections.dart/header_order.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/order_sections.dart/payment_section.dart';
import 'package:pedido_listo_web/features/establishment/domain/establishment_dto.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:pedido_listo_web/features/shopping_cart/domain/shopping_car_dto.dart';

class MakeOrderUseCase {
  final IGetCurrentUrl getCurrentUrl;

  MakeOrderUseCase(this.getCurrentUrl);

  Future<void> execute(
    ShoppingCartDto cart,
    EstablishmentDto establishment, {
    required String contactName,
    required String contactPhone,
    required Option<String> address,
    required String additionalDetail,
    required String paymentMethod,
    required double cash,
  }) async {
    final headerOrder = HeaderOrder.now(getCurrentUrl(establishment.idUrl));

    final contactInfo = ContactInfoSection(
      name: contactName,
      phone: contactPhone,
      address: address,
      additionalDetail: additionalDetail,
    );

    final paymentSection = PaymentSection(
      cartTotalCost: cart.totalCost,
      cash: cash,
      deliveryCost: establishment.deliveryCost,
      isDelivery: address.isSome(),
      paymentMethod: paymentMethod,
    );

    final costSection = CostSection(
      deliveryCost: address.map((_) => establishment.deliveryCost),
      totalCost: cart.totalCost,
    );

    final detailsSection = DetailsSection(cart.items);

    final plantilla = buildPlantilla(
      headerOrder,
      contactInfo,
      paymentSection,
      costSection,
      detailsSection,
    );

    final url = Uri.parse(
      'https://wa.me/${establishment.whatsappNumber}?text=$plantilla',
    );
    await launchUrl(url);
  }

  String buildPlantilla(
      HeaderOrder headerOrder,
      ContactInfoSection contactInfo,
      PaymentSection paymentSection,
      CostSection costSection,
      DetailsSection detailsSection) {
    return '''
${headerOrder.buildText()}

${contactInfo.buildText()}

${paymentSection.buildText()}

${costSection.buildText()}

${detailsSection.buildText()}
\u{261D} Por favor, envía este mensaje. ¡Te atenderemos enseguida!''';
  }
}
