package
{
	import __AS3__.vec.Vector;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	
	[SWF(backgroundColor=0xffffff)]
	public class Triangles3 extends Sprite
	{
		public function Triangles3()
		{
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			var vertices:Vector.<Number> = new Vector.<Number>();
			vertices.push(100, 100);
			vertices.push(200, 100);
			vertices.push(200, 200);
			vertices.push(100, 200);
			
			var indices:Vector.<int> = new Vector.<int>();
			indices.push(0, 1, 2);
			indices.push(2, 3, 0);
			
			graphics.lineStyle(0);
			graphics.drawTriangles(vertices, indices);
		}
	}
}