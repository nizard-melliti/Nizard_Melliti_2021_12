CLASS ycl_divisible_by_5 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES yif_divisible_by_x .

ENDCLASS.

CLASS ycl_divisible_by_5 IMPLEMENTATION.

  METHOD yif_divisible_by_x~is_divisible.
    r_result = boolC( i_number MOD 5 = 0 ).
  ENDMETHOD.

ENDCLASS.
