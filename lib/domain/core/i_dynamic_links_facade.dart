import 'package:dartz/dartz.dart';
import 'package:tattva/domain/core/dynamic_link_type.dart';

abstract class IDynamicLinksFacade {
  Future<String> createDynamicLink(String parameter);
  Future<Option<DynamicLinkType>> getLinkType({Uri? deepLinkUri});
}
