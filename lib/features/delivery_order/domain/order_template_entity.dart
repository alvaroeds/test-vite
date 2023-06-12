import 'package:dartz/dartz.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/order_sections.dart/contact_info_section.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/order_sections.dart/cost_section.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/order_sections.dart/detail_section.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/order_sections.dart/footer_order.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/order_sections.dart/header_order.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/order_sections.dart/payment_section.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/summary_dto.dart';

class OrderTemplateEntity {
  final HeaderOrder _headerOrder;
  final ContactInfoSection _contactInfo;
  final PaymentSection _paymentSection;
  final CostSection _costSection;
  final DetailsSection _detailsSection;
  final FooterSection _footerSection;

  const OrderTemplateEntity._(
    this._headerOrder,
    this._contactInfo,
    this._paymentSection,
    this._costSection,
    this._detailsSection,
    this._footerSection,
  );

  factory OrderTemplateEntity.build({
    required String currentUrl,
    required String contactName,
    required String contactPhone,
    required Option<String> address,
    required String additionalDetail,
    required String paymentMethod,
    required double cash,
    required double totalCostOfShoppingCart,
    required double deliveryCost,
    required List<SummaryProduct> cartItems,
  }) {
    final headerOrder = HeaderOrder.now(currentUrl);

    final contactInfo = ContactInfoSection(
      name: contactName,
      phone: contactPhone,
      address: address,
      additionalDetail: additionalDetail,
    );

    final paymentSection = PaymentSection(
      cartTotalCost: totalCostOfShoppingCart,
      cash: cash,
      deliveryCost: deliveryCost,
      isDelivery: address.isSome(),
      paymentMethod: paymentMethod,
    );

    final costSection = CostSection(
      deliveryCost: address.map((_) => deliveryCost),
      totalCost: totalCostOfShoppingCart,
    );

    final detailsSection = DetailsSection(cartItems);

    final footerSection = FooterSection();

    return OrderTemplateEntity._(
      headerOrder,
      contactInfo,
      paymentSection,
      costSection,
      detailsSection,
      footerSection,
    );
  }

  String _buildOrderTemplateMessage() {
    return '''
${_headerOrder.buildText()}

${_contactInfo.buildText()}

${_paymentSection.buildText()}

${_costSection.buildText()}

${_detailsSection.buildText()}
${_footerSection.buildText()}''';
  }

  String generateUrl(String whatsappNumber) {
    final plantilla = _buildOrderTemplateMessage();
    return 'https://wa.me/$whatsappNumber?text=$plantilla';
  }
}
