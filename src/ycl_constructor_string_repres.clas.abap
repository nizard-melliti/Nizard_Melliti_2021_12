CLASS ycl_constructor_string_repres DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS :
    create_object_string_repres IMPORTING i_number TYPE i
                                RETURNING VALUE(r_result) TYPE REF TO yif_string_representation_x.
  PRIVATE SECTION.
    CONSTANTS c_class_name_string_repres TYPE string VALUE 'YCL_STRING_REPRESENTATION_'.
ENDCLASS.

CLASS ycl_constructor_string_repres IMPLEMENTATION.
  METHOD create_object_string_repres.
    DATA(lv_class_string_repres_x) = |{ c_class_name_string_repres }{ i_number }|.
    TRY.
        CREATE OBJECT r_result TYPE (lv_class_string_repres_x).
      CATCH cx_sy_create_object_error.
        EXIT.
    ENDTRY.
  ENDMETHOD.

ENDCLASS.
