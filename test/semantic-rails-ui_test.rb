require 'test_helper'

class SemanticRailsUiTest < UnitTest
    def test_it_is_a_module
      assert_kind_of Module, SemanticRailsUi
    end

  def test_that_it_has_a_version_number
    refute_nil ::SemanticRailsUi::VERSION
  end
end
