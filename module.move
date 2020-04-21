address 0x717da70a461fef6307990847590ad7af:

module MyModule {
  use 0x0::Libra;
  use 0x0::LBR;

  // The identity function: takes a Libra::T<LBR::T> as input and hands it back
  public fun id(c: Libra::T<LBR::T>): Libra::T<LBR::T> {
    c
  }
}