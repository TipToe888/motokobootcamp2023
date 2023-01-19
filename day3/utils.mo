import Text "mo:base/Text";
import Iter "mo:base/Iter";
import Char "mo:base/Char";
import Buffer "mo:base/Buffer";
import Array "mo:base/Array";
import Int "mo:base/Int";
import Nat "mo:base/Nat";

actor utils {

    // create a function called second_maximum that takes an array [Int] of integers and returns the second largest number in the array.
    // second_maximum(array : [Int]) ->  Int;

    public query func second_maximum(array : [Int]) : async Int {

        let sortedArray : [Int] = Array.sort<Int>(array, Int.compare);

        let secondLargest : Int = sortedArray[sortedArray.size() - 2];

        return secondLargest;
    };

    // create a function called remove_even that takes an array [Nat] and returns a new array with only the odd numbers from the original array.
    // remove_even(array : [Nat]) -> [Nat];

    public query func remove_even(array : [Nat]) : async [Nat] {

        let checkIfOdd = func(n : Nat) : Bool {
            if (n % 2 != 0) {
                return true;
            } else {
                return false;
            };
        };

        return (Array.filter<Nat>(array, checkIfOdd));
    };

};
