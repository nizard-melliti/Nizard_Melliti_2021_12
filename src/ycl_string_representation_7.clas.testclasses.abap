class ltcl_string_representation_7 definition final for testing
  duration short
  risk level harmless.

  private section.
    methods:
      test_string_representation_7 for testing.
endclass.


class ltcl_string_representation_7 implementation.

  method test_string_representation_7.
   cl_abap_unit_assert=>assert_equals( exp = 'POP'
                                       act = NEW ycl_string_representation_7(  )->yif_string_representation_x~string_representation( ) ).
  endmethod.

endclass.
