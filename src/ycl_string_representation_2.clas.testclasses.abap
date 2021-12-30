class ltcl_string_representation_2 definition final for testing
  duration short
  risk level harmless.

  private section.
    methods:
      test_string_representation_2 for testing.
endclass.


class ltcl_string_representation_2 implementation.

  method test_string_representation_2.
   cl_abap_unit_assert=>assert_equals( exp = 'FUZZ'
                                       act = NEW ycl_string_representation_2(  )->yif_string_representation_x~string_representation( ) ).
  endmethod.

endclass.
