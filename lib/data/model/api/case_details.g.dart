// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CaseDetails> _$caseDetailsSerializer = new _$CaseDetailsSerializer();

class _$CaseDetailsSerializer implements StructuredSerializer<CaseDetails> {
  @override
  final Iterable<Type> types = const [CaseDetails, _$CaseDetails];
  @override
  final String wireName = 'CaseDetails';

  @override
  Iterable<Object?> serialize(Serializers serializers, CaseDetails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'caseNumber',
      serializers.serialize(object.caseNumber,
          specifiedType: const FullType(String)),
      'customerID',
      serializers.serialize(object.customerID,
          specifiedType: const FullType(int)),
      'scheduleDate',
      serializers.serialize(object.scheduleDate,
          specifiedType: const FullType(String)),
      'duration',
      serializers.serialize(object.duration,
          specifiedType: const FullType(String)),
      'endDate',
      serializers.serialize(object.endDate,
          specifiedType: const FullType(String)),
      'subject',
      serializers.serialize(object.subject,
          specifiedType: const FullType(String)),
      'siteID',
      serializers.serialize(object.siteID, specifiedType: const FullType(int)),
      'site',
      serializers.serialize(object.site, specifiedType: const FullType(String)),
      'site_latitude',
      serializers.serialize(object.site_latitude,
          specifiedType: const FullType(String)),
      'site_longitude',
      serializers.serialize(object.site_longitude,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'priority',
      serializers.serialize(object.priority,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'assignee',
      serializers.serialize(object.assignee,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'contractID',
      serializers.serialize(object.contractID,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.contactPerson;
    if (value != null) {
      result
        ..add('contactPerson')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.customer;
    if (value != null) {
      result
        ..add('customer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contractNumber;
    if (value != null) {
      result
        ..add('contractNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contractValue;
    if (value != null) {
      result
        ..add('contractValue')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.contarct_start;
    if (value != null) {
      result
        ..add('contarct_start')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contract_end;
    if (value != null) {
      result
        ..add('contract_end')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.service_team;
    if (value != null) {
      result
        ..add('service_team')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CaseDetails deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CaseDetailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'caseNumber':
          result.caseNumber = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'customerID':
          result.customerID = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'scheduleDate':
          result.scheduleDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'subject':
          result.subject = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'siteID':
          result.siteID = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'site':
          result.site = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'site_latitude':
          result.site_latitude = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'site_longitude':
          result.site_longitude = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'priority':
          result.priority = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'assignee':
          result.assignee = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'contactPerson':
          result.contactPerson = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'customer':
          result.customer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'contractID':
          result.contractID = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'contractNumber':
          result.contractNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'contractValue':
          result.contractValue = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'contarct_start':
          result.contarct_start = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'contract_end':
          result.contract_end = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'service_team':
          result.service_team = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$CaseDetails extends CaseDetails {
  @override
  final int id;
  @override
  final String caseNumber;
  @override
  final int customerID;
  @override
  final String scheduleDate;
  @override
  final String duration;
  @override
  final String endDate;
  @override
  final String subject;
  @override
  final int siteID;
  @override
  final String site;
  @override
  final String site_latitude;
  @override
  final String site_longitude;
  @override
  final String type;
  @override
  final String priority;
  @override
  final String status;
  @override
  final String assignee;
  @override
  final String description;
  @override
  final String? contactPerson;
  @override
  final String? customer;
  @override
  final int contractID;
  @override
  final String? contractNumber;
  @override
  final int? contractValue;
  @override
  final String? contarct_start;
  @override
  final String? contract_end;
  @override
  final String? service_team;

  factory _$CaseDetails([void Function(CaseDetailsBuilder)? updates]) =>
      (new CaseDetailsBuilder()..update(updates))._build();

  _$CaseDetails._(
      {required this.id,
      required this.caseNumber,
      required this.customerID,
      required this.scheduleDate,
      required this.duration,
      required this.endDate,
      required this.subject,
      required this.siteID,
      required this.site,
      required this.site_latitude,
      required this.site_longitude,
      required this.type,
      required this.priority,
      required this.status,
      required this.assignee,
      required this.description,
      this.contactPerson,
      this.customer,
      required this.contractID,
      this.contractNumber,
      this.contractValue,
      this.contarct_start,
      this.contract_end,
      this.service_team})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'CaseDetails', 'id');
    BuiltValueNullFieldError.checkNotNull(
        caseNumber, r'CaseDetails', 'caseNumber');
    BuiltValueNullFieldError.checkNotNull(
        customerID, r'CaseDetails', 'customerID');
    BuiltValueNullFieldError.checkNotNull(
        scheduleDate, r'CaseDetails', 'scheduleDate');
    BuiltValueNullFieldError.checkNotNull(duration, r'CaseDetails', 'duration');
    BuiltValueNullFieldError.checkNotNull(endDate, r'CaseDetails', 'endDate');
    BuiltValueNullFieldError.checkNotNull(subject, r'CaseDetails', 'subject');
    BuiltValueNullFieldError.checkNotNull(siteID, r'CaseDetails', 'siteID');
    BuiltValueNullFieldError.checkNotNull(site, r'CaseDetails', 'site');
    BuiltValueNullFieldError.checkNotNull(
        site_latitude, r'CaseDetails', 'site_latitude');
    BuiltValueNullFieldError.checkNotNull(
        site_longitude, r'CaseDetails', 'site_longitude');
    BuiltValueNullFieldError.checkNotNull(type, r'CaseDetails', 'type');
    BuiltValueNullFieldError.checkNotNull(priority, r'CaseDetails', 'priority');
    BuiltValueNullFieldError.checkNotNull(status, r'CaseDetails', 'status');
    BuiltValueNullFieldError.checkNotNull(assignee, r'CaseDetails', 'assignee');
    BuiltValueNullFieldError.checkNotNull(
        description, r'CaseDetails', 'description');
    BuiltValueNullFieldError.checkNotNull(
        contractID, r'CaseDetails', 'contractID');
  }

  @override
  CaseDetails rebuild(void Function(CaseDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CaseDetailsBuilder toBuilder() => new CaseDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CaseDetails &&
        id == other.id &&
        caseNumber == other.caseNumber &&
        customerID == other.customerID &&
        scheduleDate == other.scheduleDate &&
        duration == other.duration &&
        endDate == other.endDate &&
        subject == other.subject &&
        siteID == other.siteID &&
        site == other.site &&
        site_latitude == other.site_latitude &&
        site_longitude == other.site_longitude &&
        type == other.type &&
        priority == other.priority &&
        status == other.status &&
        assignee == other.assignee &&
        description == other.description &&
        contactPerson == other.contactPerson &&
        customer == other.customer &&
        contractID == other.contractID &&
        contractNumber == other.contractNumber &&
        contractValue == other.contractValue &&
        contarct_start == other.contarct_start &&
        contract_end == other.contract_end &&
        service_team == other.service_team;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc(0, id.hashCode), caseNumber.hashCode), customerID.hashCode), scheduleDate.hashCode), duration.hashCode),
                                                                                endDate.hashCode),
                                                                            subject.hashCode),
                                                                        siteID.hashCode),
                                                                    site.hashCode),
                                                                site_latitude.hashCode),
                                                            site_longitude.hashCode),
                                                        type.hashCode),
                                                    priority.hashCode),
                                                status.hashCode),
                                            assignee.hashCode),
                                        description.hashCode),
                                    contactPerson.hashCode),
                                customer.hashCode),
                            contractID.hashCode),
                        contractNumber.hashCode),
                    contractValue.hashCode),
                contarct_start.hashCode),
            contract_end.hashCode),
        service_team.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CaseDetails')
          ..add('id', id)
          ..add('caseNumber', caseNumber)
          ..add('customerID', customerID)
          ..add('scheduleDate', scheduleDate)
          ..add('duration', duration)
          ..add('endDate', endDate)
          ..add('subject', subject)
          ..add('siteID', siteID)
          ..add('site', site)
          ..add('site_latitude', site_latitude)
          ..add('site_longitude', site_longitude)
          ..add('type', type)
          ..add('priority', priority)
          ..add('status', status)
          ..add('assignee', assignee)
          ..add('description', description)
          ..add('contactPerson', contactPerson)
          ..add('customer', customer)
          ..add('contractID', contractID)
          ..add('contractNumber', contractNumber)
          ..add('contractValue', contractValue)
          ..add('contarct_start', contarct_start)
          ..add('contract_end', contract_end)
          ..add('service_team', service_team))
        .toString();
  }
}

class CaseDetailsBuilder implements Builder<CaseDetails, CaseDetailsBuilder> {
  _$CaseDetails? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _caseNumber;
  String? get caseNumber => _$this._caseNumber;
  set caseNumber(String? caseNumber) => _$this._caseNumber = caseNumber;

  int? _customerID;
  int? get customerID => _$this._customerID;
  set customerID(int? customerID) => _$this._customerID = customerID;

  String? _scheduleDate;
  String? get scheduleDate => _$this._scheduleDate;
  set scheduleDate(String? scheduleDate) => _$this._scheduleDate = scheduleDate;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(String? duration) => _$this._duration = duration;

  String? _endDate;
  String? get endDate => _$this._endDate;
  set endDate(String? endDate) => _$this._endDate = endDate;

  String? _subject;
  String? get subject => _$this._subject;
  set subject(String? subject) => _$this._subject = subject;

  int? _siteID;
  int? get siteID => _$this._siteID;
  set siteID(int? siteID) => _$this._siteID = siteID;

  String? _site;
  String? get site => _$this._site;
  set site(String? site) => _$this._site = site;

  String? _site_latitude;
  String? get site_latitude => _$this._site_latitude;
  set site_latitude(String? site_latitude) =>
      _$this._site_latitude = site_latitude;

  String? _site_longitude;
  String? get site_longitude => _$this._site_longitude;
  set site_longitude(String? site_longitude) =>
      _$this._site_longitude = site_longitude;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _priority;
  String? get priority => _$this._priority;
  set priority(String? priority) => _$this._priority = priority;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _assignee;
  String? get assignee => _$this._assignee;
  set assignee(String? assignee) => _$this._assignee = assignee;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _contactPerson;
  String? get contactPerson => _$this._contactPerson;
  set contactPerson(String? contactPerson) =>
      _$this._contactPerson = contactPerson;

  String? _customer;
  String? get customer => _$this._customer;
  set customer(String? customer) => _$this._customer = customer;

  int? _contractID;
  int? get contractID => _$this._contractID;
  set contractID(int? contractID) => _$this._contractID = contractID;

  String? _contractNumber;
  String? get contractNumber => _$this._contractNumber;
  set contractNumber(String? contractNumber) =>
      _$this._contractNumber = contractNumber;

  int? _contractValue;
  int? get contractValue => _$this._contractValue;
  set contractValue(int? contractValue) =>
      _$this._contractValue = contractValue;

  String? _contarct_start;
  String? get contarct_start => _$this._contarct_start;
  set contarct_start(String? contarct_start) =>
      _$this._contarct_start = contarct_start;

  String? _contract_end;
  String? get contract_end => _$this._contract_end;
  set contract_end(String? contract_end) => _$this._contract_end = contract_end;

  String? _service_team;
  String? get service_team => _$this._service_team;
  set service_team(String? service_team) => _$this._service_team = service_team;

  CaseDetailsBuilder();

  CaseDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _caseNumber = $v.caseNumber;
      _customerID = $v.customerID;
      _scheduleDate = $v.scheduleDate;
      _duration = $v.duration;
      _endDate = $v.endDate;
      _subject = $v.subject;
      _siteID = $v.siteID;
      _site = $v.site;
      _site_latitude = $v.site_latitude;
      _site_longitude = $v.site_longitude;
      _type = $v.type;
      _priority = $v.priority;
      _status = $v.status;
      _assignee = $v.assignee;
      _description = $v.description;
      _contactPerson = $v.contactPerson;
      _customer = $v.customer;
      _contractID = $v.contractID;
      _contractNumber = $v.contractNumber;
      _contractValue = $v.contractValue;
      _contarct_start = $v.contarct_start;
      _contract_end = $v.contract_end;
      _service_team = $v.service_team;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CaseDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CaseDetails;
  }

  @override
  void update(void Function(CaseDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CaseDetails build() => _build();

  _$CaseDetails _build() {
    final _$result = _$v ??
        new _$CaseDetails._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'CaseDetails', 'id'),
            caseNumber: BuiltValueNullFieldError.checkNotNull(
                caseNumber, r'CaseDetails', 'caseNumber'),
            customerID: BuiltValueNullFieldError.checkNotNull(
                customerID, r'CaseDetails', 'customerID'),
            scheduleDate: BuiltValueNullFieldError.checkNotNull(
                scheduleDate, r'CaseDetails', 'scheduleDate'),
            duration: BuiltValueNullFieldError.checkNotNull(
                duration, r'CaseDetails', 'duration'),
            endDate: BuiltValueNullFieldError.checkNotNull(
                endDate, r'CaseDetails', 'endDate'),
            subject: BuiltValueNullFieldError.checkNotNull(
                subject, r'CaseDetails', 'subject'),
            siteID: BuiltValueNullFieldError.checkNotNull(
                siteID, r'CaseDetails', 'siteID'),
            site: BuiltValueNullFieldError.checkNotNull(
                site, r'CaseDetails', 'site'),
            site_latitude: BuiltValueNullFieldError.checkNotNull(
                site_latitude, r'CaseDetails', 'site_latitude'),
            site_longitude: BuiltValueNullFieldError.checkNotNull(site_longitude, r'CaseDetails', 'site_longitude'),
            type: BuiltValueNullFieldError.checkNotNull(type, r'CaseDetails', 'type'),
            priority: BuiltValueNullFieldError.checkNotNull(priority, r'CaseDetails', 'priority'),
            status: BuiltValueNullFieldError.checkNotNull(status, r'CaseDetails', 'status'),
            assignee: BuiltValueNullFieldError.checkNotNull(assignee, r'CaseDetails', 'assignee'),
            description: BuiltValueNullFieldError.checkNotNull(description, r'CaseDetails', 'description'),
            contactPerson: contactPerson,
            customer: customer,
            contractID: BuiltValueNullFieldError.checkNotNull(contractID, r'CaseDetails', 'contractID'),
            contractNumber: contractNumber,
            contractValue: contractValue,
            contarct_start: contarct_start,
            contract_end: contract_end,
            service_team: service_team);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
