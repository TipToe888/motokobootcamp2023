import Text "mo:base/Text";
import Iter "mo:base/Iter";
import Char "mo:base/Char";
import Buffer "mo:base/Buffer";

actor Day2 {

    // challenge 1
    public query func average_array(array : [Int]) : async Int {

        var sum : Int = 0;
        for (element in array.vals()) {
            sum += element;
        };
        return sum / array.size();
    };

    // Challenge 2
    public query func count_character(t : Text, c : Char) : async Nat {

        var counter : Nat = 0;

        for (letter in t.chars()) {
            if (letter == c) {
                counter += 1;
            };
        };
        return counter;
    };

    // Challenge 3
    public query func factorial(n : Nat) : async Nat {
        var sum = 1;
        for (num in Iter.range(1, n)) {
            sum *= num;
        };
        return sum;
    };

    // Challenge 4
    // Write a function number_of_words that takes a sentence and returns the number of words in the sentence.
    public query func number_of_words(t : Text) : async Nat {

        var counter : Nat = 0;
        if (t.size() != 0) {
            for (letter in t.chars()) {
                if (Char.isWhitespace(letter)) {
                    counter += 1;
                };
            };
            counter += 1;
        };
        return counter;
    };

    // Challenge 5
    public query func find_duplicates(a : [Nat]) : async [Nat] {

        let duplicateBuffer = Buffer.Buffer<Nat>(0);

        for (i in a.vals()) {

            var counter = 0;

            for (j in a.vals()) {

                if (i == j) {
                    counter += 1;
                };
            };

            if (counter >= 2) {

                duplicateBuffer.add(i);
            };
        };

        return Buffer.toArray(duplicateBuffer);
    };

    // Challenge 6

};
