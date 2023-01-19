import Text "mo:base/Text";
import Iter "mo:base/Iter";
import Char "mo:base/Char";
import Buffer "mo:base/Buffer";
import Array "mo:base/Array";
import Int "mo:base/Int";

actor utils {

    // create a function called second_maximum that takes an array [Int] of integers and returns the second largest number in the array.
    // second_maximum(array : [Int]) ->  Int;

    public query func second_maximum(array : [Int]) : async Int {

        let sortedArray : [Int] = Array.sort<Int>(array, Int.compare);

        let secondLargest : Int = sortedArray[sortedArray.size() - 2];

        return secondLargest;

    };

};
