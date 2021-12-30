REPORT yr_fizzbuzz_extended.

PARAMETERS : p_number TYPE i.

CLASS lcl_application DEFINITION.
  PUBLIC SECTION.
    METHODS main.
ENDCLASS.

CLASS lcl_application IMPLEMENTATION.
  METHOD main.
    WRITE NEW ycl_fizzbuzz_extended(  )->fizzbuzz_extend_representation( p_number ).
  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.

  NEW lcl_application(  )->main(  ).
