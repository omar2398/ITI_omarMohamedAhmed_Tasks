class Book {
  String title;
  String author;
  int pages;

  Book(this.title, this.author, this.pages);

  void displayInfo() {
    print('Title: $title');
    print('Author: $author');
    print('Pages: $pages');
  }
}

class Novel extends Book {
  String genre;

  Novel(String title, String author, int pages, this.genre)
      : super(title, author, pages);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Genre: $genre');
  }
}

void main() {
  Novel novel = Novel('1984', 'George Orwell', 328, 'Dystopian');
  novel.displayInfo();
}
