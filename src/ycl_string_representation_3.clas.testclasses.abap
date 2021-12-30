class ltcl_string_representation_3 definition final for testing
  duration short
  risk level harmless.

  private section.
    methods:
      test_string_representation_3 for testing.
endclass.


class ltcl_string_representation_3 implementation.

  method test_string_representation_3.
   cl_abap_unit_assert=>assert_equals( exp = 'FIZZ'
                                       act = NEW ycl_string_representation_3(  )->yif_string_representation_x~string_representation( ) ).
  endmethod.

endclass.
