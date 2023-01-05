import 'package:flutter/material.dart';

import '../data/model/args/boq_form_args.dart';
import '../ui/boq_form.dart';

class FiremanDialogs {
  static showBoqForm(BuildContext context, BoqFormArgs args) => showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) => BoqForm(
          args: args,
        ),
      );
  // static showEstimateForm(BuildContext context, {required int caseId, required int boqId}) => showModalBottomSheet(
  //       context: context,
  //       isScrollControlled: true,
  //       backgroundColor: Colors.transparent,
  //       builder: (context) => EstimateForm(
  //         boqId: boqId,
  //         caseId: caseId,
  //       ),
  //     );
}
