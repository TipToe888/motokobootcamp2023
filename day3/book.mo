// In your file called book.mo create a custom type with at least 2 properties (title of type Text, pages of type Nat), import this type in your main.mo and create a variable that will store a book.

module Book {

    public type BookType = {
        title : Text;
        pages : Nat;
    };

};
