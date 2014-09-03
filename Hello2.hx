typedef Genint = Generator<Int>;
typedef Gengen = Generator<Genint>;

class Hello2 
{
    public static function gen10():Genint
    {
        yield 10;
        yield 20;
        yield 30;
    }
    public static function gen11():Genint
    {
        yield 11;
        yield 22;
        yield 33;
    }
    public static function gen12():Genint
    {
        yield 12;
        yield 24;
        yield 36;
    }
    public static function genn():Gengen
    {
        yield gen10();
        yield gen11();
        yield gen12();
    }
}

