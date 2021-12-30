CLASS ycl_string_representation_3 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES yif_string_representation_x .

ENDCLASS.

CLASS ycl_string_representation_3 IMPLEMENTATION.

  METHOD yif_string_representation_x~string_representation.
    r_result = 'FIZZ'.
  ENDMETHOD.

ENDCLASS.
