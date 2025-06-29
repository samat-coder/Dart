class Book {
  String title;
  String author;
  int publicationYear;

  Book(this.title, this.author, this.publicationYear);

  void displayDetails() {
    print("Book Title: $title");
    print("Author: $author");
    print("Publication Year: $publicationYear");
  }

  bool isOver10YearsOld() {
    int currentYear = DateTime.now().year; 
    return (currentYear - publicationYear) > 10;
  }
}

void main() {

  Book myBook = Book("The Great Gatsby", "F. Scott Fitzgerald", 1925);

  myBook.displayDetails();

  if (myBook.isOver10YearsOld()) {
    print("The book is over 10 years old.");
  } else {
    print("The book is less than 10 years old.");
  }
}
