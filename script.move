use 0x0::LibraAccount;
use 0x0::LBR;
use 0x0::Transaction;
use 0x717da70a461fef6307990847590ad7af::MyModule;

fun main(amount: u64) {
  let coin = LibraAccount::withdraw_from_sender<LBR::T>(amount);
  // Calls the id procedure defined in our custom module
  LibraAccount::deposit<LBR::T>(Transaction::sender(), MyModule::id(coin));
}