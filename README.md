casey.oc.tc
===========

A tool to pick a winner for [Casey Neistat's 2015 Giveaway](https://www.youtube.com/watch?v=JYqE8dSiXJE).

## Randomness

These are the results of the randomness of the server [casey.oc.tc](casey.oc.tc) is running on.

```
root@hosted:/# cat /proc/sys/kernel/random/entropy_avail
2420
```

```
root@hosted:/# cat /dev/random | rngtest -c 1000
rngtest 4
Copyright (c) 2004 by Henrique de Moraes Holschuh
This is free software; see the source for copying conditions.  There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

rngtest: starting FIPS tests...
rngtest: bits received from input: 20000032
rngtest: FIPS 140-2 successes: 1000
rngtest: FIPS 140-2 failures: 0
rngtest: FIPS 140-2(2001-10-10) Monobit: 0
rngtest: FIPS 140-2(2001-10-10) Poker: 0
rngtest: FIPS 140-2(2001-10-10) Runs: 0
rngtest: FIPS 140-2(2001-10-10) Long run: 0
rngtest: FIPS 140-2(2001-10-10) Continuous run: 0
rngtest: input channel speed: (min=1.336; avg=13.388; max=9536.743)Mibits/s
rngtest: FIPS tests speed: (min=1.917; avg=30.909; max=55.770)Mibits/s
rngtest: Program run time: 2046132 microsecondsi
```
