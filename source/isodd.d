bool isOdd(T)(T n) { return n & 1; }
bool isEven(T)(T n) { return !(n & 1); }

unittest {
    assert(true == isOdd(41));
    assert(true == isOdd(uint.max));
    assert(false == isOdd(int.min));
    assert(true == isOdd(-41));

    assert(false == isEven(41));
    assert(false == isEven(uint.max));
    assert(true == isEven(int.min));
    assert(false == isEven(-41));

    enum upto = 1000;
    int odds, evens;
    foreach (n; 0 .. upto) {
        odds += isOdd(n);
        evens += isEven(n);
    }
    assert(upto/2 == odds);
    assert(upto/2 == evens);
}
