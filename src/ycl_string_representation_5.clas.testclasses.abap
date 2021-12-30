class ltcl_string_representation_5 definition final for testing
  duration short
  risk level harmless.

  private section.
    methods:
      test_string_representation_5 for testing.
endclass.


class ltcl_string_representation_5 implementation.

  method test_string_representation_5.
   cl_abap_unit_assert=>assert_equals( exp = 'BUZZ'
                                       act = NEW ycl_string_representation_5(  )->yif_string_representation_x~string_representation( ) ).
  endmethod.

endclass.
