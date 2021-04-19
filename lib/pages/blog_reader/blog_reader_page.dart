import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:tattva/application/blog/blog_bloc.dart';
import 'package:tattva/domain/blog/blog.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/blog_reader/widgets/blog_reader_title_bar.dart';
import 'package:tattva/pages/blog_reader/widgets/flexible_blog_reader_app_bar.dart';
import 'package:tattva/pages/core/audio_player_preview_padding.dart';

class BlogReaderPage extends StatefulWidget {
  final Blog blog;

  const BlogReaderPage({Key? key, required this.blog}) : super(key: key);

  @override
  _BlogReaderPageState createState() => _BlogReaderPageState();
}

class _BlogReaderPageState extends State<BlogReaderPage> {
  late ScrollController _scrollController;
  bool titleBarBackBtn = false;

  @override
  void initState() {
    _scrollController = ScrollController();

    // _scrollController.addListener(() {
    //   if (!_scrollController.position.outOfRange) {
    //     debugPrint('POSIS: ${_scrollController.position.toString()}');
    //     if (!titleBarBackBtn && _scrollController.offset >= 200) {
    //       setState(() {
    //         titleBarBackBtn = true;
    //       });
    //     } else if (titleBarBackBtn && _scrollController.offset < 200) {
    //       setState(() {
    //         titleBarBackBtn = false;
    //       });
    //     }
    //   }
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (_, __) => [
          FlexibleBlogReaderAppBar(imageUrl: widget.blog.coverImage.first.url),
        ],
        body: Column(
          children: [
            BlogReaderTitleBar(
              blog: widget.blog,
              backButton: titleBarBackBtn,
            ),
            Expanded(
              child: BlocBuilder<BlogBloc, BlogState>(
                bloc: getIt<BlogBloc>()
                  ..add(BlogEvent.readBlog(id: widget.blog.id)),
                builder: (context, state) {
                  if (state.readerLoading) {
                    return Center(child: CircularProgressIndicator());
                  } else {
                    return state.readerOption.fold(
                      () => Center(child: Text('ERROR')),
                      (sOrF) => sOrF.fold(
                        (l) => Center(child: Text('ERROR')),
                        (r) => SingleChildScrollView(
                          padding: const EdgeInsets.all(24.0),
                          child: HtmlWidget(
                            r,
                            textStyle: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
            AudioPlayerPreviewPadding(),
          ],
        ),
      ),
    );
  }
}
