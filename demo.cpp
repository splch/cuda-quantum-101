#include "cudaq.h"

struct super {
  void operator()() __qpu__ {
    cudaq::qreg q(1);
    h(q[0]);
    mz(q[0]);
  }
};

int main() {
  auto counts = cudaq::sample(super {});
  counts.dump();
}
