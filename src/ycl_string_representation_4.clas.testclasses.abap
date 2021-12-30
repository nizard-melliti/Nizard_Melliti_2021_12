class ltcl_string_representation_4 definition final for testing
  duration short
  risk level harmless.

  private section.
    methods:
      test_string_representation_4 for testing.
endclass.


class ltcl_string_representation_4 implementation.

  method test_string_representation_4.
   cl_abap_unit_assert=>assert_equals( exp = 'PEP'
                                       act = NEW ycl_string_representation_4(  )->yif_string_representation_x~string_representation( ) ).
  endmethod.

endclass.
