CLASS ltcl_acceptance_test DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    METHODS:
      acceptance_test_fizzbuzz FOR TESTING,
      acceptance_test_fuzzpop FOR TESTING,
      acceptance_test_fuzzbuzz FOR TESTING,
      acceptance_test_fuzzfizz FOR TESTING,
      acceptance_test_67 FOR TESTING.
ENDCLASS.


CLASS ltcl_acceptance_test IMPLEMENTATION.

  METHOD acceptance_test_fizzbuzz.
    cl_abap_unit_assert=>assert_equals( exp = 'FIZZBUZZ'
                                        act = NEW ycl_fizzbuzz_extended(  )->fizzbuzz_extend_representation( 15 ) ).
  ENDMETHOD.

  METHOD acceptance_test_fuzzpop.
    cl_abap_unit_assert=>assert_equals( exp = 'FUZZPOP'
                                        act = NEW ycl_fizzbuzz_extended(  )->fizzbuzz_extend_representation( 14 ) ).
  ENDMETHOD.

  METHOD acceptance_test_fuzzbuzz.
    cl_abap_unit_assert=>assert_equals( exp = 'FUZZBUZZ'
                                        act = NEW ycl_fizzbuzz_extended(  )->fizzbuzz_extend_representation( 10 ) ).
  ENDMETHOD.

  METHOD acceptance_test_fuzzfizz.
    cl_abap_unit_assert=>assert_equals( exp = 'FUZZFIZZ'
                                        act = NEW ycl_fizzbuzz_extended(  )->fizzbuzz_extend_representation( 6 ) ).
  ENDMETHOD.

  METHOD acceptance_test_67.
     cl_abap_unit_assert=>assert_equals( exp = '67'
                                         act = NEW ycl_fizzbuzz_extended(  )->fizzbuzz_extend_representation( 67 ) ).
  ENDMETHOD.

ENDCLASS.
