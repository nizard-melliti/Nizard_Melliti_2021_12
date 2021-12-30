CLASS ycl_divisible_by_2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES yif_divisible_by_x .

ENDCLASS.

CLASS ycl_divisible_by_2 IMPLEMENTATION.

  METHOD yif_divisible_by_x~is_divisible.
    r_result = boolC( i_number MOD 2 = 0 ).
  ENDMETHOD.

ENDCLASS.
