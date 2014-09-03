class AAA{
    var x : Int;
    public function new(x)
    {
        this.x=x;
    }
}

class BBB extends AAA{
    var y:Int;
    public function new(x,y)
    {
        super(x);
        this.y=y;
    }
}

class CCC
{
    var x:Int;
    public function new()
    {
        this.x = 42;
    }
}

class MyStringIterator {
  var s:String;
  var i:Int;

  public function new(s:String) {
    this.s = s;
    i = 0;
  }

  public function hasNext() {
    return i < s.length;
  }

  public function next() {
    return s.charAt(i++);
  }
}

class HelloWorld {
    static private function numbers4() : Generator<Int>
    {
        function abcdef(i)
        {
            return 10+i;
        }
        yield 1;
        yield 2;
        yield 3;
        yield abcdef(-6);
    }
    static private function returnStuff() : Int
    {
        return 42;
    }
    static private function numbers() : Generator<Int>
    {
        yield 0;
	yield* numbers4();
	yield* numbers4();
	yield 0;
    }
    static private function slowa() : Generator<String>
    {
        yield "kompilator";
        yield "Haxe";
        yield "to syf";
    }
    static private function test() : Generator<Int>
    {
        
    }
    //static private function noReturn() : String {}
    static private function eee()
    {
        function ghijk(i)
        {
            return 10+i;
        }
        return "aaa";
    }
    static private function xxx() : Generator<AAA>
    {
        yield new AAA(5);
        yield new BBB(6,6);
        yield new AAA(7);
        //yield new CCC();
    }
    static public function main() {
        trace("Hello Worldd");
        trace(returnStuff());
        trace("===================");
        var gen:Generator<Int> = numbers();
        
        trace(gen.next().value);
        
        trace(gen.next().value);
        trace(gen.next().value);
        trace(gen.next().value);
        trace(gen.next().value);
        
        trace(gen.next().value);
        trace(gen.next().value);
        trace(gen.next().value);
        trace(gen.next().value);
        
        trace(gen.next().value);
        
        trace("===================");
        var words:Generator<String> = slowa();
        trace(words.next().value);
        trace(words.next().value);
        trace(words.next().value);
        
        trace("===================");
        var objs:Generator<AAA> = xxx();
        trace(objs.next().value.x);
        trace(objs.next().value.x);
        trace(objs.next().value.x);
        
        trace("===================");
        var g = numbers();
        for(v in g) trace(v);
        
        trace("===================");
        var h:Generator<Int> = numbers();
        for(v in h) trace(v);
        
        trace("===================");
        var a = new Array();
        a.push(123);
        a.push(456);
        a.push(789);
        for(v in a) trace(v);
        
        trace("===================");
        var myIt = new MyStringIterator("dfasdfasf");
        for(chr in myIt)trace(chr);
        
        trace("===================");
        trace(test().next().done);
        
        trace("===================");
        var ttt:Generator<Int> = test();
        trace(ttt.next().done);
        
    }
}
