CLASS ycl_fizzbuzz_extended DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS :
      fizzbuzz_extend_representation IMPORTING i_number        TYPE i
                                     RETURNING VALUE(r_result) TYPE string.
ENDCLASS.

CLASS ycl_fizzbuzz_extended IMPLEMENTATION.
  METHOD fizzbuzz_extend_representation.
    r_result = NEW ycl_fizzbuzz_ext_calculation(  )->fbe_calculation( i_number ).
  ENDMETHOD.
ENDCLASS.
