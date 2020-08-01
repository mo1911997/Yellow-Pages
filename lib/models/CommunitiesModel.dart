class CommunitiesModel 
{
  final String _id;
  final String communityName;
  final String devnagariName;
  
  CommunitiesModel(this._id,this.communityName,this.devnagariName);
  
  CommunitiesModel.fromJson(Map<String, dynamic> json)
      : _id = json['_id'],
        communityName = json['community_name'],
        devnagariName = json['devnagari_name'];

  Map<String, dynamic> toJson() =>
  {
    '_id': _id,
    'cat_name': communityName,
    'devnagari_name':devnagariName
  };
}