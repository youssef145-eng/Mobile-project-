class news_item{
 final int id;
 final String title;
 final String imgurl;
 final String category;
 final String author;
 final String  time;

  news_item({required this.id, required this.title, required this.imgurl, required this.category, required this.author, this.time='25 min ago'});


}

 
  
  


List <news_item> news=[news_item(id: 1, title: 'Japan win wow!', imgurl: 'https://media.cnn.com/api/v1/images/stellar/prod/2024-02-22t110526z-1930189356-rc2d76aaw5se-rtrmadp-3-japan-naked-festival.JPG?c=16x9&q=h_653,w_1160,c_fill/f_webp', category: 'sports', author: 'Filgoal'),
news_item(id: 2, title: 'fredome for Gaza ', imgurl:  'https://media.cnn.com/api/v1/images/stellar/prod/2024-02-22t161705z-1541886373-rc2j76aluwnl-rtrmadp-3-japan-naked-festival.JPG?q=w_1110,c_fill/f_webp', category: 'politician', author: 'CNN'),
news_item(id: 3, title: 'childrens', imgurl: 'https://ichef.bbci.co.uk/news/800/cpsprodpb/a896/live/46039520-0f8d-11ef-82e8-cd354766a224.jpg.webp', category: 'politician', author: 'BBC'),
news_item(id: 4, title: 'old peaople', imgurl: 'https://static01.nyt.com/images/2024/05/11/multimedia/11ukraine-kharkiv-new-4-zlfk/11ukraine-kharkiv-new-4-zlfk-superJumbo.jpg?quality=75&auto=webp' , category: 'politician', author: 'yalla shot'),
news_item(id: 5, title: ' lewandowski scored goal!', imgurl:'https://www.fcbarcelona.com/photo-resources/2023/10/05/bc1f3213-3c66-434c-b25e-abea8ab2b408/caja-basic.jpg?width=712&height=440', category: 'GOAL!', author: 'Filgoal'),
news_item(id: 5, title: 'no thing', imgurl:'https://www.fcbarcelona.com/photo-resources/2023/10/05/bc1f3213-3c66-434c-b25e-abea8ab2b408/caja-basic.jpg?width=712&height=440', category: 'GOAL!', author: 'Filgoal'),];
