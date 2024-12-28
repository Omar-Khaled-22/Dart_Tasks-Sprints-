import 'package:collection/collection.dart';

//books class contains  attributes (id, title, borrowed) , and displayInfo method.
class Books {
  final int id;
  final String title;
  bool isBorrowed;
  Books({required this.id, required this.title, this.isBorrowed = false});

  void displayInfo() {
    print('Book ID: $id, Title: $title, Borrowed: $isBorrowed');
  }
}

//User Class has attributes (id, name) , and displayInfo method.
class User {
  final int id;
  final String name;
  User({required this.id, required this.name});
  void displayInfo() {
    print('User ID: $id, Name: $name');
  }
}

//Library Class has attributes (list of books , list of users) ,  and methods (addBook , return book , borrowBook ,displayInfo).
class Library {
  final List<Books> books = [];
  final List<User> users = [];
  //add book
  void addBook(Books book) {
    books.add(book);
    print("Book '${book.title}' added to the library.");
  }

//add user
  void addUser(User user) {
    users.add(user);
    print("User '${user.name}' added to the library.");
  }

// borrow books
  void borrowBook(int bookId, int userId) {
    // this book will search in the list with book with the same id if not found it will store null
    final book = books.firstWhereOrNull((b) => b.id == bookId);
    //if we didn't find a matching book to the bookid
    if (book == null) {
      print("Book with ID $bookId not found.");
      return;
    }
    // if the book is already boorowed
    if (book.isBorrowed) {
      print("Book '${book.title}' is already borrowed.");
      return;
    }
    // this user will search in the list with user with the same id if not found it will store null
    final user = users.firstWhereOrNull((u) => u.id == userId);
    if (user == null) {
      print("User with ID $userId not found.");
      return;
    }
// now the book is borrowed
    book.isBorrowed = true;

    print("User '${user.name}' borrowed the book '${book.title}'.");
  }

//return book function
  void returnBook(int bookId) {
    final book = books.firstWhereOrNull((b) => b.id == bookId);
    if (book == null) {
      print("Book with ID $bookId not found.");
      return;
    }
//the book wasn't borrowed
    if (!book.isBorrowed) {
      print("Book '${book.title}' was not borrowed.");
      return;
    }

    book.isBorrowed = false;
    print("Book '${book.title}' has been returned to the library.");
  }

  void displayInfo() {
    print("Library Information:");
    print("Books:");
    for (var book in books) {
      book.displayInfo();
    }
    print("Users:");
    for (var user in users) {
      user.displayInfo();
    }
  }
}

//   final book = books.firstWhere(
//     (element) => element.id == bookId,
//     orElse: () {
//       print("boook not found");
//       return Books(id: 000, title: "title");
//     },
//   );

//   book.isBorrowed = true;

//   User? user = users.firstWhere(
//     (u) => u.id == userId,
//   );
//   // Step 7: Print a success message.
//   print("User '${user.name}' borrowed the book '${book.title}'.");
// }

void main() {
  final library = Library();

  // Adding books and users
  library.addBook(Books(id: 1, title: "1984"));
  library.addUser(User(id: 1, name: "Alice"));

  // Borrowing a book
  library.borrowBook(1, 1); // Success case
  library.borrowBook(2, 1); // Book not found
  library.borrowBook(1, 2); // User not found
  library.borrowBook(1, 1); // Book already borrowed

  // Displaying library information
  library.displayInfo();
}
