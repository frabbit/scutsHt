package hots.instances;


import hots.classes.PointedAbstract;
import hots.In;
import scuts.core.types.Either;

private typedef B = hots.box.EitherBox;

class EitherPointed<L> extends PointedAbstract<Either<L,In>> {
  
  public function new () {
    super(EitherFunctor.get());
  }
  
  override public function pure<A>(x:A):EitherOf<L,A> return B.box(Right(x))

}
