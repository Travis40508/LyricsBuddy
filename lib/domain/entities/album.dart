

class Album {
  final _id;
  final String _title;
  final String _image;

  Album(this._id, this._title, this._image);

  String get image => _image;

  String get title => _title;

  get id => _id;
}