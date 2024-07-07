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

void main() {
  Book book = Book('2002', 'Omar Mohamed', 328);

  book.displayInfo();
}
