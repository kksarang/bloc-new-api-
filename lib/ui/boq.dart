import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../di/injection_container.dart' as di;
import '../bloc/case-details/case_details_cubit.dart';
import '../data/model/api/case_details_data.dart';
import '../data/model/args/boq_form_args.dart';
import '../data/result.dart';
import '../widget/dimen.dart';
import '../widget/error_info.dart';
import '../widget/fireman_dialogs.dart';
import '../widget/palette.dart';
import '../widget/riple_loader.dart';

class BoqAddingScreen extends StatelessWidget {
  final int caseId;

  const BoqAddingScreen({Key? key, required this.caseId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.sl.get<CaseDetailsCubit>(),
      child: CaseDetailsBody(caseId: 49),
    );
  }
}

class CaseDetailsBody extends StatefulWidget {
  final int caseId;

  CaseDetailsBody({Key? key, required this.caseId}) : super(key: key);

  @override
  _CaseDetailsBodyState createState() => _CaseDetailsBodyState();
}

class _CaseDetailsBodyState extends State<CaseDetailsBody> {
  late CaseDetailsCubit _caseDetailsCubit;

  @override
  Widget build(BuildContext context) => BlocBuilder<CaseDetailsCubit, Result<CaseDetailsData>>(
        builder: (context, state) => state.maybeWhen(
          orElse: () => RipleLoader(),
          error: (message) => ErrorInfo(message: message, onTap: () => _caseDetailsCubit.fetchCaseData(widget.caseId)),
          success: (data, message) => SingleChildScrollView(
            padding: EdgeInsets.all(Dimen.grid_2),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(Dimen.grid_2),
                  decoration: BoxDecoration(
                    color: Palette.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Text(
                            'SARANG',
                            style:
                                Theme.of(context).textTheme.headline6!.copyWith(fontSize: 18, color: Palette.darkRed),
                          ),
                          Expanded(child: Container()),
                          (data.caseStatus == null &&
                                      data.caseStatus != 'Finished' &&
                                      data.boq_status != null &&
                                      data.boq_status!.statusid != 2) ||
                                  (data.caseStatus == null && data.caseStatus != 'Finished' && data.boq_items.isEmpty)
                              ? IconButton(
                                  onPressed: () async {
                                    var res = await FiremanDialogs.showBoqForm(
                                        context, BoqFormArgs(data.case_data.siteID, data.case_data.customerID));
                                    if (res != null) {
                                      _caseDetailsCubit.fetchCaseData(widget.caseId);
                                    }
                                  },
                                  icon: Icon(Icons.add, color: Palette.darkRed),
                                )
                              : SizedBox.shrink(),
                        ],
                      ),
                      SizedBox(height: Dimen.grid_2),
                      Container(
                        height: 1.0,
                        color: Palette.lightGrey,
                      ),
                      SizedBox(height: Dimen.grid_2),
                      DataTable(
                        columnSpacing: 8,
                        columns: [
                          DataColumn(label: Text('#')),
                          DataColumn(label: Text('Product')),
                          DataColumn(label: Text('Category')),
                          DataColumn(label: Text('Brand')),
                          DataColumn(label: Text('Quantity')),
                          DataColumn(label: Text('Actions')),
                        ],
                        rows: data.boq_items
                            .asMap()
                            .entries
                            .map((boq) => DataRow(cells: [
                                  DataCell(Text('${boq.key + 1}')),
                                  DataCell(Text(boq.value.product)),
                                  DataCell(Text(boq.value.category)),
                                  DataCell(Text(boq.value.brand)),
                                  DataCell(Text('${boq.value.quantity}')),
                                  DataCell(Row(
                                    children: [
                                      data.boq_status != null && data.boq_status!.statusid != 2
                                          ? IconButton(
                                              onPressed: () async {
                                                var res = await FiremanDialogs.showBoqForm(
                                                    context,
                                                    BoqFormArgs(data.case_data.siteID, data.case_data.customerID,
                                                        boqId: boq.value.boqID,
                                                        productId: boq.value.id,
                                                        boqData: boq.value));
                                                if (res != null) {
                                                  _caseDetailsCubit.fetchCaseData(widget.caseId);
                                                }
                                              },
                                              icon: Icon(Icons.edit_outlined))
                                          : SizedBox.shrink(),
                                    ],
                                  )),
                                ]))
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
