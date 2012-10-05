package hots.classes;


import hots.Of;

import scuts.Scuts;


interface Applicative<M> implements Pointed<M>, implements Apply<M>
{
  /**
   * Sequence actions, discarding the value of the first argument. (Haskell Source)
   * 
   * haskell: (*>) :: f a -> f b -> f b
   */
  public function thenRight<A,B>(val1:Of<M,A>, val2:Of<M,B>):Of<M,B>;
  
  /**
   * Sequence actions, discarding the value of the second argument. (Haskell Source)
   * 
   * haskell: (<*) :: f a -> f b -> f a
   */
  public function thenLeft<A,B>(val1:Of<M,A>, val2:Of<M,B>):Of<M,A>;

}
