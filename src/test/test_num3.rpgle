**free

//
// Make sure the numberOfXxx calculations are correct
//

/copy 'src/main/qhsrc/ibmiunit.rpgleinc'

/define IBMiUi_noMain
/copy 'src/main/qhsrc/ibmiui.rpgleinc'


// initialize the test fixtures

IBMiUnit_setupSuite( 'IBMiUnit numberOfXxx calculations #3'
                   : *null : *null 
                   : *null : %pAddr( checkNumbers ) );

IBMiUnit_teardownSuite();

return;


//
// checkNumbers
//
// Make sure the numberOfXxx numbers are correct.
//
dcl-proc checkNumbers;

   dcl-pi *n;
      testSuite  likeds( testSuite_t )  const;
   end-pi;

   assertNumericEquals( 0 : testSuite.numberOfCases            : 'numberOfCases' );
   assertNumericEquals( 0 : testSuite.numberOfSuites           : 'numberOfSuites' );
   assertNumericEquals( 0 : testSuite.numberOfDescendantCases  : 'numberOfDescendantCases' );
   assertNumericEquals( 0 : testSuite.numberOfDescendantSuites : 'numberOfDescendantSuites' );

end-proc;
 