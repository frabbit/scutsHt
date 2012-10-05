package hots.classes;


import hots.Of;

import scuts.Scuts;

interface Apply<M>
{
  /**
   * Sequential Application. (Haskell Source)
   * 
   * Haskell: (<*>) :: f (a -> b) -> f a -> f b
   */
  public function apply<A,B>(f:Of<M,A->B>, val:Of<M,A>):Of<M,B>;

}
