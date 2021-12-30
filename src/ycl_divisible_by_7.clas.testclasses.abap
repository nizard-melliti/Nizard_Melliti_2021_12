CLASS ltcl_divisible_by_7 DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    METHODS:
      test_is_divisible_by_7 FOR TESTING,
      test_is_not_divisible_by_7 FOR TESTING.
ENDCLASS.


CLASS ltcl_divisible_by_7 IMPLEMENTATION.

  METHOD test_is_divisible_by_7.
    cl_abap_unit_assert=>assert_true(
      EXPORTING
        act              = NEW ycl_divisible_by_7(  )->yif_divisible_by_x~is_divisible( 49 ) ).
  ENDMETHOD.

  METHOD test_is_not_divisible_by_7.
    cl_abap_unit_assert=>assert_false(
      EXPORTING
        act              = NEW ycl_divisible_by_7(  )->yif_divisible_by_x~is_divisible( 51 ) ).
  ENDMETHOD.

ENDCLASS.
