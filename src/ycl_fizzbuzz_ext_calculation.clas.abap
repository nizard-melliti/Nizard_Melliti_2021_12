CLASS ycl_fizzbuzz_ext_calculation DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS :
      fbe_calculation IMPORTING i_number        TYPE i
                      RETURNING VALUE(r_result) TYPE string.
  PRIVATE SECTION.
    DATA : final_string_fbe TYPE string.
    METHODS :
      try_if_divisible IMPORTING i_divisible_by TYPE syst-index
                                 i_number       TYPE i,
      final_string_representation IMPORTING i_number        TYPE i
                                  RETURNING VALUE(r_result) TYPE string,
      calculte_fbe_representation IMPORTING i_number                   TYPE i
                                            io_divisible_by_x          TYPE REF TO yif_divisible_by_x
                                            io_string_representation_x TYPE REF TO yif_string_representation_x
                                  RETURNING VALUE(r_result)            TYPE string.
ENDCLASS.

CLASS ycl_fizzbuzz_ext_calculation IMPLEMENTATION.

  METHOD fbe_calculation.
    DO 9 TIMES.
      try_if_divisible( i_divisible_by = sy-index
                        i_number       = i_number ).
    ENDDO.
    r_result = final_string_representation( i_number ).
  ENDMETHOD.

  METHOD try_if_divisible.
    DATA(lo_divisible_by_x) = NEW ycl_constructor_divisible(  )->create_object_divisible( sy-index ).
    DATA(lo_string_representation_x) = NEW ycl_constructor_string_repres(  )->create_object_string_repres( sy-index ).

    DATA(lv_str_representation) = calculte_fbe_representation(
                                    i_number = i_number
                                    io_divisible_by_x = lo_divisible_by_x
                                    io_string_representation_x = lo_string_representation_x ).

    CONCATENATE final_string_fbe lv_str_representation INTO final_string_fbe.
  ENDMETHOD.

  METHOD final_string_representation.
    r_result = COND #( WHEN final_string_fbe IS NOT INITIAL THEN final_string_fbe
                       WHEN final_string_fbe IS INITIAL THEN CONV string( i_number ) ).
    CONDENSE r_result NO-GAPS.
  ENDMETHOD.

  METHOD calculte_fbe_representation.
    r_result  = COND #( WHEN ( io_divisible_by_x IS BOUND
                                             AND io_string_representation_x IS BOUND
                                               AND io_divisible_by_x->is_divisible( i_number ) )
                                           THEN io_string_representation_x->string_representation( ) ).
  ENDMETHOD.

ENDCLASS.
