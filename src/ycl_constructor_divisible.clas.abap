CLASS ycl_constructor_divisible DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS :
      create_object_divisible IMPORTING i_number        TYPE i
                              RETURNING VALUE(r_result) TYPE REF TO yif_divisible_by_x.

  PRIVATE SECTION.
    CONSTANTS c_class_name_divisible TYPE string VALUE 'YCL_DIVISIBLE_BY_'.
ENDCLASS.

CLASS ycl_constructor_divisible IMPLEMENTATION.
  METHOD create_object_divisible.
    DATA(lv_class_divisible_by_x) = |{ c_class_name_divisible }{ i_number }|.
    TRY.
        CREATE OBJECT r_result TYPE (lv_class_divisible_by_x).
      CATCH cx_sy_create_object_error.
        EXIT.
    ENDTRY.
  ENDMETHOD.
ENDCLASS.
