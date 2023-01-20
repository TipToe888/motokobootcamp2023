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

    public type Book = Book.BookType;

    let exampleBook : Book = {
        title = "My Title";
        pages = 888;
    };

    let books = List.nil<Book>();

};
