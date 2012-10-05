package hots.instances;


import hots.classes.Monoid;
import hots.classes.Zero;
import scuts.core.types.Tup3;
import scuts.core.types.Tup3;

import scuts.core.types.Tup2;

class Tup3Zero<A,B,C> implements Zero<Tup3<A,B,C>>
{
  private var m1:Zero<A>;
  private var m2:Zero<B>;
  private var m3:Zero<C>;
  
  public function new (m1:Zero<A>, m2:Zero<B>, m3:Zero<C>) 
  {
    this.m1 = m1;
    this.m2 = m2;
    this.m3 = m3;
  }
  
  public inline function zero ():Tup3<A,B,C> 
  {
    return Tup3.create(m1.zero(), m2.zero(), m3.zero());
  }
}