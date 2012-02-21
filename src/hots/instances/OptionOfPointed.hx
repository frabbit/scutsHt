package hots.instances;

import hots.classes.PointedAbstract;
import hots.In;
import scuts.core.extensions.OptionExt;
import scuts.core.types.Option;

using hots.instances.OptionBox;

class OptionOfPointedImpl extends PointedAbstract<Option<In>>
{
  public function new () {
    super(OptionOfFunctor.get());
  }
  
  override public inline function pure<B>(b:B):OptionOf<B> 
  {
    return Some(b).box();
  }
  
}

typedef OptionOfPointed = haxe.macro.MacroType<[hots.macros.TypeClasses.createProvider(OptionOfPointedImpl)]>;