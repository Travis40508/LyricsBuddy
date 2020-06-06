

class Artist {

  final _id;
  final String _name;
  final String _image;

  Artist(this._id, this._name, this._image);

  String get image => _image;

  String get name => _name;

  get id => _id;
}