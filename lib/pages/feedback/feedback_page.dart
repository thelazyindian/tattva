import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/feedback/feedback_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';
import 'package:tattva/pages/core/primary_button.dart';
import 'package:tattva/utils/dimens.dart';
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
        title: FEEDBACK_TITLE,
        titleAlignment: TextAlign.start,
        customAppBarType: CustomAppBarType.subhead,
        onPrefixPressed: () {
          context.router.pop();
        },
      ),
      body: BlocConsumer<FeedbackBloc, FeedbackState>(
        bloc: _feedbackBloc,
        listenWhen: (prev, curr) => prev.submitting != curr.submitting,
        listener: (context, state) {
          state.submitFeedbackOption.fold(
            () => null,
            (sOrF) => sOrF.fold(
              (failure) => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  duration: const Duration(seconds: 2),
                  content: Text(
                    'Error submitting feedback.',
                    style: const TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.red.shade400,
                  behavior: SnackBarBehavior.floating,
                ),
              ),
              (r) => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  duration: const Duration(seconds: 2),
                  content: Text(
                    'Feedback submitted.',
                    style: const TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.green.shade400,
                  behavior: SnackBarBehavior.floating,
                ),
              ),
            ),
          );
        },
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
                const SizedBox(height: inputFieldsSpacing),
                PrimaryButton(
                  label: FEEDBACK_SUBMIT,
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
