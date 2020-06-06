

class Artist {

  final _id;
  final _name;
  final _image;

  Artist(this._id, this._name, this._image);

  get image => _image;

  get name => _name;

  get id => _id;
}