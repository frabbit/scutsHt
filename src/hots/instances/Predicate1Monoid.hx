package hots.instances;
import hots.classes.Monoid;
import hots.classes.MonoidAbstract;

using scuts.core.extensions.Predicate1Ext;

class Predicate1MonoidImpl<X> extends MonoidAbstract<X->Bool>
{
  public function new () {}
  
  override public inline function append (a:X->Bool, b:X->Bool):X->Bool {
    return a.and(b);
  }
  override public inline function empty ():X->Bool {
    return function (x) return true;
  }
}

typedef Predicate1Monoid = haxe.macro.MacroType<[hots.macros.TypeClasses.createProvider(hots.instances.Predicate1MonoidImpl)]>;