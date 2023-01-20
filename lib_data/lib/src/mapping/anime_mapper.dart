import 'package:data/data.dart';
import 'package:data/src/mapping/data_mapper.dart';
import 'package:domain/domain.dart';

final animeMapper = DataMapper<AnimeSerializable, Anime>(map: (serializable, helper) {
  final String id = helper.require(serializable.id, name: 'id');
  final String? localizedTitle = serializable.attributes?.titles?.en ?? serializable.attributes?.titles?.enJp ?? serializable.attributes?.titles?.jaJp;
  final String localizedLink = helper.require(serializable.links?.self, name: 'links?.self');
  final String? cover = serializable.attributes?.coverImage?.small;

  return Anime(id: id, title: localizedTitle, localizedLink: localizedLink, cover: cover);
});
