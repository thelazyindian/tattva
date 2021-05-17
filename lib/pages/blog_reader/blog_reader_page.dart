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
  final BlogReaderTabType blogReaderTabType;
  final bool enableAudioPreviewPadding;

  const BlogReaderPage({
    Key? key,
    required this.blog,
    required this.blogReaderTabType,
    this.enableAudioPreviewPadding = true,
  }) : super(key: key);

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
      body: BlocBuilder<BlogBloc, BlogState>(
        bloc: getIt<BlogBloc>()
          ..add(BlogEvent.readBlog(
            blogReaderTabType: widget.blogReaderTabType,
            blog: widget.blog,
          )),
        builder: (context, state) {
          if (widget.blogReaderTabType == BlogReaderTabType.fromUrl &&
              state.readerLoading)
            return const Center(child: CircularProgressIndicator());
          else {
            final Blog blog = state.readerOption.fold(() => widget.blog,
                (sOrF) => sOrF.fold((l) => widget.blog, (blog) => blog));
            return NestedScrollView(
              controller: _scrollController,
              headerSliverBuilder: (_, __) => [
                FlexibleBlogReaderAppBar(
                  imageUrl: blog.coverImage.first.url,
                  heroId: blog.id,
                ),
              ],
              body: Column(
                children: [
                  BlogReaderTitleBar(
                    blog: blog,
                    backButton: titleBarBackBtn,
                  ),
                  Expanded(
                      child: (state.readerLoading)
                          ? const Center(child: CircularProgressIndicator())
                          : state.readerOption.fold(
                              () => Center(child: Text('ERROR')),
                              (sOrF) => sOrF.fold(
                                (l) => Center(child: Text('ERROR')),
                                (_) => SingleChildScrollView(
                                  padding: const EdgeInsets.all(24.0),
                                  child: HtmlWidget(
                                    blog.content ?? 'Empty Content.',
                                    textStyle:
                                        TextStyle(fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            )),
                  if (widget.enableAudioPreviewPadding)
                    AudioPlayerPreviewPadding(),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
