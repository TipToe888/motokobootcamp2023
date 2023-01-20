import Text "mo:base/Text";
import Iter "mo:base/Iter";
import Char "mo:base/Char";
import Buffer "mo:base/Buffer";
import Array "mo:base/Array";
import Int "mo:base/Int";
import Nat "mo:base/Nat";
import Book "book";

actor {

    public type Book = Book.BookType;

    let exampleBook : Book = {
        title = "My Witty Book Title";
        pages = 420;
    };

};
