/** Fades Out an object that implements the CCRGBAProtocol protocol. It modifies the opacity from 255 to 0.
 The "reverse" of this action is FadeIn
*/
class CCFadeOut extends CCActionInterval
{
}
function update (t:Float) :Void
{
	[(id<CCRGBAProtocol>) target_ setOpacity: 255 *(1-t);
}

public function reverse () :CCActionInterval
{
	return CCFadeIn.actionWithDuration ( duration_ );
}
}
