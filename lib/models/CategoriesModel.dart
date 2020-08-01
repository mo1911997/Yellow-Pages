class CategoriesModel 
{
  final String _id;
  final String catName;
  final String img_url;
  
  CategoriesModel(this._id,this.catName,this.img_url);
  
  CategoriesModel.fromJson(Map<String, dynamic> json)
      : _id = json['_id'],
        catName = json['cat_name'],
        img_url = json['img_url'];

  Map<String, dynamic> toJson() =>
  {
    '_id': _id,
    'cat_name': catName,
    'img_url':img_url
  };
}