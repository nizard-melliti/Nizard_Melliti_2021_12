CLASS ycl_string_representation_2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES yif_string_representation_x .

ENDCLASS.

CLASS ycl_string_representation_2 IMPLEMENTATION.

  METHOD yif_string_representation_x~string_representation.
    r_result = 'FUZZ'.
  ENDMETHOD.

ENDCLASS.
