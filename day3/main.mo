import Text "mo:base/Text";
import Iter "mo:base/Iter";
import Char "mo:base/Char";
import Buffer "mo:base/Buffer";
import Array "mo:base/Array";
import Int "mo:base/Int";
import Nat "mo:base/Nat";
import Book "book";
import List "mo:base/List";

actor {

    // Question 6
    // In main.mo import the type List from the Base Library and create a list that stores books.

    let exampleBook : Book.BookType = {
        title = "My Title";
        pages = 888;
    };

    var books = List.nil<Book.BookType>();

    // Question 7
    // In main.mo create a function called add_book that takes a book as parameter and returns nothing this function should add this book to your list.
    // Then create a second function called get_books that takes no parameter but returns an Array that contains all books stored in the list.

    public func add_book(book : Book.BookType) : async () {
        books := List.push<Book.BookType>(book, books);
    };

    public query func get_books() : async [Book.BookType] {
        let booksArray : [Book.BookType] = List.toArray(List.reverse(books));
        return booksArray;
    };

};
