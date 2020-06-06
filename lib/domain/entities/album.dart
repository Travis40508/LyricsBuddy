

class Album {
  final _id;
  final _title;
  final _image;

  Album(this._id, this._title, this._image);

  get image => _image;

  get title => _title;

  get id => _id;
}