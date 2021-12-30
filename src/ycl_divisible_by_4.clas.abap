CLASS ycl_divisible_by_4 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES yif_divisible_by_x .

ENDCLASS.

CLASS ycl_divisible_by_4 IMPLEMENTATION.

  METHOD yif_divisible_by_x~is_divisible.
    r_result = boolC( i_number MOD 4 = 0 ).
  ENDMETHOD.

ENDCLASS.
