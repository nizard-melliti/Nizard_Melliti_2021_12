CLASS ltcl_divisible_by_3 DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    METHODS:
      test_is_divisible_by_3 FOR TESTING,
      test_is_not_divisible_by_3 FOR TESTING.
ENDCLASS.


CLASS ltcl_divisible_by_3 IMPLEMENTATION.

  METHOD test_is_divisible_by_3.
    cl_abap_unit_assert=>assert_true(
      EXPORTING
        act              = NEW ycl_divisible_by_3(  )->yif_divisible_by_x~is_divisible( 6 ) ).
  ENDMETHOD.

  METHOD test_is_not_divisible_by_3.
    cl_abap_unit_assert=>assert_false(
      EXPORTING
        act              = NEW ycl_divisible_by_3(  )->yif_divisible_by_x~is_divisible( 5 ) ).
  ENDMETHOD.

ENDCLASS.
