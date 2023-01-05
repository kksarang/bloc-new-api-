import '../api/boq_data.dart';

class BoqFormArgs {
  final int siteId;
  final int customerId;
  final int? boqId;
  final int? productId;
  final BoqData? boqData;

  BoqFormArgs(
    this.siteId,
    this.customerId, {
    this.boqId,
    this.productId,
    this.boqData,
  });
}
