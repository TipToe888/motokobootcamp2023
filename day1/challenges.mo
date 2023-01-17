actor Day1 {

    var counter : Nat = 0;

    // challenge 1
    public func multiply(n : Nat, m : Nat) : async Nat {
        return n * m;
    };

    // challenge 2
    public func volume(n : Nat) : async Nat {
        return n * n * n;
    };

    // challenge 3
    public func hours_to_minutes(n : Nat) : async Nat {
        return n * 60;
    };

    // challenge 4
    public func set_counter(n : Nat) : async () {
        counter := n;
    };

    public func get_counter() : async Nat {
        return counter;
    };

    // challenge 5
    public func test_divide(n : Nat, m : Nat) : async Bool {
        if (n % m == 0) {
            return true;
        } else {
            return false;
        };
    };

    // challenge 6
    public func is_even(n : Nat) : async Bool {
        if (n % 2 == 0) {
            return true;
        } else {
            return false;
        };
    };

};
