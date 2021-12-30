INTERFACE yif_divisible_by_x
  PUBLIC .
  METHODS :
    is_divisible IMPORTING i_number        TYPE i
                 RETURNING VALUE(r_result) TYPE abap_bool.
ENDINTERFACE.
