class DataItem{
  final String title;
  final String category;
  final String imageUrl;
  final String mentor;
  //final String mentorImageUrl;

  DataItem({required this.title, required this.category, required this.imageUrl, required this.mentor,});

}

class CourseData {
  final List<DataItem> items = [
     DataItem(
      title: 'Data Analyst',
       imageUrl: 'https://images.unsplash.com/photo-1599658880436-c61792e70672',
      //imageUrl: 'https://images.unsplash.com/photo-1599658880436-c61792e70672?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZGF0YSUyMGFuYWx5c3R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
      category: 'Data Science',
      mentor: 'Bill Smith',
      //mentorImageUrl: 'https://icons8.com/icon/EvfjU4d05f0I/circled-user-male-skin-type-6',
     ),
    DataItem(
      title: 'Data Analyst',
      imageUrl: 'https://images.unsplash.com/photo-1599658880436-c61792e70672',
      //imageUrl: 'https://images.unsplash.com/photo-1599658880436-c61792e70672?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZGF0YSUyMGFuYWx5c3R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
      category: 'Data Science',
      mentor: 'Bill Smith',
      //mentorImageUrl: 'https://icons8.com/icon/EvfjU4d05f0I/circled-user-male-skin-type-6',
    ),
    DataItem(
      title: 'Data Analyst',
      imageUrl: 'https://images.unsplash.com/photo-1599658880436-c61792e70672',
      //imageUrl: 'https://images.unsplash.com/photo-1599658880436-c61792e70672?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZGF0YSUyMGFuYWx5c3R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
      category: 'Data Science',
      mentor: 'Bill Smith',
      //mentorImageUrl: 'https://icons8.com/icon/EvfjU4d05f0I/circled-user-male-skin-type-6',
    ),
  ];

}