CLASS ltcl_divisible_by_5 DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    METHODS:
      test_is_divisible_by_5 FOR TESTING,
      test_is_not_divisible_by_5 FOR TESTING.
ENDCLASS.


CLASS ltcl_divisible_by_5 IMPLEMENTATION.

  METHOD test_is_divisible_by_5.
    cl_abap_unit_assert=>assert_true(
      EXPORTING
        act              = NEW ycl_divisible_by_5(  )->yif_divisible_by_x~is_divisible( 55 ) ).
  ENDMETHOD.

  METHOD test_is_not_divisible_by_5.
    cl_abap_unit_assert=>assert_false(
      EXPORTING
        act              = NEW ycl_divisible_by_5(  )->yif_divisible_by_x~is_divisible( 56 ) ).
  ENDMETHOD.

ENDCLASS.
