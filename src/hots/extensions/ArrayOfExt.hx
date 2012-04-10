package hots.extensions;

import hots.instances.ArrayOfFunctor;
import hots.instances.ArrayOf;

using scuts.core.extensions.ArrayExt;

typedef ArrayBox = hots.box.ArrayBox;

using hots.extensions.ArrayOfExt.ArrayBox;

class ArrayOfExt 
{
  
  public static inline function map <A,B>(a:ArrayOf<A>, f:A->B):ArrayOf<B> 
  {
    return a.unbox().map(f).box();
  }
  
  public static inline function flatMap<A,B>(a:ArrayOf<A>, f:A->ArrayOf<B>):ArrayOf<B> 
  {
    return a.unbox().flatMap(f.unboxF()).box();
  }
  
  public static inline function empty<A>():ArrayOf<A> 
  {
    return [].box();
  }
  
  public static inline function concat<A>(a:ArrayOf<A>, b:ArrayOf<A>):ArrayOf<A> 
  {
    return a.unbox().concat(b.unbox()).box();
  }
    
}