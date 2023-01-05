// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_datasource.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$CaseDataSource extends CaseDataSource {
  _$CaseDataSource([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = CaseDataSource;

  @override
  Future<Response<BoqProductData>> fetchBoqProductData() {
    final $url = '/boq/masterArray';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BoqProductData, BoqProductData>($request);
  }

  @override
  Future<Response<ApiData>> addBoq(int customerID, int siteID, String description, String date, int catID, int subcatID,
      int productID, int brandID, int quantity) {
    final $url = '/boq/addBoq';
    final $body = <String, dynamic>{
      'customerID': customerID,
      'siteID': siteID,
      'description': description,
      'date': date,
      'catID': catID,
      'subcatID': subcatID,
      'productID': productID,
      'brandID': brandID,
      'quantity': quantity
    };
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ApiData, ApiData>($request);
  }

  @override
  Future<Response<ApiData>> editBoq(
      int catID, int subcatID, int productID, int brandID, int quantity, int boqID, int id) {
    final $url = '/boq/update';
    final $body = <String, dynamic>{
      'catID': catID,
      'subcatID': subcatID,
      'productID': productID,
      'brandID': brandID,
      'quantity': quantity,
      'boqID': boqID,
      'id': id
    };
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ApiData, ApiData>($request);
  }

  @override
  Future<Response<ApiData>> updateStatus(int techID, int caseId, int status, String timer, String comments) {
    final $url = '/cases/workstatus';
    final $body = <String, dynamic>{
      'techID': techID,
      'caseid': caseId,
      'status': status,
      'timer': timer,
      'comments': comments
    };
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ApiData, ApiData>($request);
  }

  @override
  Future<Response<ApiData>> addComment(int id, int caseId, String comment) {
    final $url = '/cases/addComment';
    final $body = <String, dynamic>{'technician': id, 'caseid': caseId, 'comment': comment};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ApiData, ApiData>($request);
  }

  @override
  Future<Response<ApiData>> uploadProductImage(
      int techID, int caseID, int estimateID, String type, int id, String file) {
    final $url = '/estimate/addphoto';
    final $parts = <PartValue>[
      PartValue<int>('techID', techID),
      PartValue<int>('caseID', caseID),
      PartValue<int>('estimateID', estimateID),
      PartValue<String>('type', type),
      PartValue<int>('rowID', id),
      PartValueFile<String>('image', file)
    ];
    final $request = Request('POST', $url, client.baseUrl, parts: $parts, multipart: true);
    return client.send<ApiData, ApiData>($request);
  }

  @override
  Future<Response<ApiData>> addManPower(int manpower, double rateperhour, double totalhours, int caseID) {
    final $url = '/estimate/manpower';
    final $body = <String, dynamic>{
      'manpower': manpower,
      'rateperhour': rateperhour,
      'totalhours': totalhours,
      'caseID': caseID
    };
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ApiData, ApiData>($request);
  }

  @override
  Future<Response<ApiData>> deleteImage(int id) {
    final $url = '/estimate/removePhoto';
    final $body = <String, dynamic>{'id': id};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ApiData, ApiData>($request);
  }

  @override
  Future<Response<ApiData>> addEstimate(int techID, int caseID, int productID, String identityNumber, int sparePartsID,
      double unitprice, int quantity, int brandID, int status, String comments) {
    final $url = '/estimate/add';
    final $body = <String, dynamic>{
      'techID': techID,
      'caseID': caseID,
      'productID': productID,
      'identityNumber': identityNumber,
      'sparePartsID': sparePartsID,
      'unitprice': unitprice,
      'quantity': quantity,
      'brandID': brandID,
      'status': status,
      'comments': comments
    };
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ApiData, ApiData>($request);
  }
}
