package ;

import flash.display.Sprite;

class Main extends Sprite 
{	
	public static function main() 
	{
		var t = new Test();
		t.test();
		trace("FINISHED");
	}
}

class Test
{
	public function new()
	{
		
	}
	
	public function test(depth : Int = 0)
	{
		if ((depth == 0) || (depth == 1000))
		{
			trace(depth);
			var b = new haxe.io.BytesBuffer();
			var bufsize = 5 << 20;
			var tmp = haxe.io.Bytes.alloc(bufsize);
			b.addBytes(tmp, 0, bufsize);
		}
		
		if (depth < 1000)
		{
			var t = new Test();
			t.test(depth + 1);
		}
	}
}