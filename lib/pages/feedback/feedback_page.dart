import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/feedback/feedback_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';
import 'package:tattva/pages/core/primary_button.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:tattva/utils/others.dart';
import 'package:tattva/utils/strings.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  late FeedbackBloc _feedbackBloc;
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    _feedbackBloc = getIt<FeedbackBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: CustomAppBar(
        title: PROFILE_ITEM_FEEDBACK,
        titleAlignment: TextAlign.start,
        customAppBarType: CustomAppBarType.subhead,
        onPrefixPressed: () {
          context.router.pop();
        },
      ),
      body: BlocBuilder<FeedbackBloc, FeedbackState>(
        bloc: _feedbackBloc,
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Form(
                  key: _formKey,
                  child: TextFormField(
                    enabled: !state.submitting,
                    minLines: 6,
                    maxLines: 6,
                    maxLength: 200,
                    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(hintText: FEEDBACK_FIELD_HINT),
                    onSaved: (value) => _feedbackBloc
                        .add(FeedbackEvent.submit(feedback: value!)),
                  ),
                ),
                state.submitFeedbackOption.fold(
                  () => Container(),
                  (sOrF) => Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: sOrF.fold(
                      (failure) => Text(
                        FEEDBACK_SUBMIT_FAILURE,
                        style: TextStyle(
                          fontSize: errorTextSize,
                          fontWeight: FontWeight.w400,
                          color: errorTextColor,
                        ),
                      ),
                      (success) => Text(
                        FEEDBACK_SUBMIT_SUCCESS,
                        style: TextStyle(
                          fontSize: successTextSize,
                          fontWeight: FontWeight.w400,
                          color: successTextColor,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: inputFieldsSpacing),
                PrimaryButton(
                  label: SUBMIT_BUTTON,
                  loading: state.submitting,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                    }
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
