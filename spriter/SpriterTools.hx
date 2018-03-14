package spriter;

// TODO (DK) submit PR to wighawag?
class SpriterTools {
	@:access(spriter.Spriter)
	public static function getEntityNames( s: Spriter ) : Array<String>
		return [for (k in s.entities.keys()) k];

	@:access(spriter.Spriter)
	public static function getEntity( s: Spriter, name: String ) : spriter.internal.Data.Entity
		return s.entities.get(name);

	@:access(spriter.internal.Entity)
	@:access(spriter.internal.Element)
	public static function getEntityAnimationNames( e: spriter.internal.Data.Entity ) : Array<String>
		return e.animations.map(function( a ) return a.name);
}
