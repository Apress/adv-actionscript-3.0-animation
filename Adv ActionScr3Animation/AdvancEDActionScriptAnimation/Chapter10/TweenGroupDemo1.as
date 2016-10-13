package {
	
	import flash.display.*;
	
	import gs.TweenGroup;

	[SWF(backgroundColor=0xffffff)]
	public class TweenGroupDemo1 extends Sprite
	{
		private var sprite:Sprite;
		private var group:TweenGroup;
		
		public function TweenGroupDemo1()
		{
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			
			var s1:Sprite = makeSprite(100, 100, 0xff0000);
			var s2:Sprite = makeSprite(100, 200, 0x00ff00);
			var s3:Sprite = makeSprite(100, 300, 0x0000ff);
			var s4:Sprite = makeSprite(100, 400, 0xffff00);
			
			TweenGroup.allTo([s1, s2, s3, s4], 3, {x:800});
		}
		
		private function makeSprite(xpos:Number, ypos:Number, color:uint):Sprite
		{
			var s:Sprite = new Sprite();
			s.graphics.beginFill(color);
			s.graphics.drawRect(-50, -25, 100, 50);
			s.graphics.endFill();
			s.x = xpos;
			s.y = ypos;
			addChild(s);
			return s;
		}
	}
}
