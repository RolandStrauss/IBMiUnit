# IBMiUnit

An RPGLE unit testing framework 

## Installation

### Base

1. Clone this repository: `git clone https://github.com/worksofliam/IBMiUnit.git`
2. Change directory into it: `cd IBMiUnit`
3. Use `gmake` (on yum as `make-gnu.ppc64`) to build IBMiUnit.

You can keep up-to-date with IBMiUnit by pulling from the repository and re-building.

### Sample tests

Use `gmake tests` to build the test cases.

## Examples

### Program Source

```rpgle
**free
ctl-opt bndDir( 'IBMIUNIT/IBMIUNIT' );

/copy IBMiUnit/QRPGLESRC,IBMiUnit_H

// test initialization/registration

IBMiUnit_setupSuite( 'TextUtil Tests' );

IBMiUnit_addTestCase( %pAddr( toUpperCase_fromLower ) : 'toUpperCase_fromLower' );

IBMiUnit_teardownSuite();
return;

// test cases

dcl-proc toUpperCase_fromLower;

    assertCharEquals( 'MARINA SCHWENK'
                    : toUpperCase( 'marina schwenk' ) // defined in service program
                    );

end-proc;
```

### Running

A successful test example:

```
    > ibmiunit/rununit qtehdr_t
      All 2 tests ran successfully
```

A test with a failure:

```
    > ibmiunit/rununit qtehdr_t                                             
      assertion failure in calculateSurcharges_changeOrder: Number of tariff
        items expected:<1> but was:<2>                                      
      Done: 0 errors, 1 failures, 1 successful test(s)
```
