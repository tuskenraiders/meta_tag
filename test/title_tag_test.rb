require 'test_helper'

class TitleTagTest < Test::Unit::TestCase
  
  def test_have_content
    tt = MetaTag::TitleTag.new("pkw.de")
    assert_equal "<title>pkw.de</title>", tt.to_tag
  end
  
  def test_have_to_s
    mt = MetaTag::TitleTag.new("Gebrauchtwagen, Neuwagen", " | pkw.de - Das Autoportal für Deutschland")
    assert_equal "Gebrauchtwagen, Neuwagen | pkw.de - Das Autoportal für Deutschland", mt.to_s
  end
  
  def test_have_content_and_append_title
    tt = MetaTag::TitleTag.new("pkw.de", " - always append this")
    assert_equal "<title>pkw.de - always append this</title>", tt.to_tag
    
    tt.content = "HansWurst"
    assert_equal "<title>HansWurst - always append this</title>", tt.to_tag
  end
  
  def test_have_content_and_activate_and_deactivate_append_title
    tt = MetaTag::TitleTag.new("pkw.de", " - always append this")
    assert_equal "<title>pkw.de - always append this</title>", tt.to_tag
    
    tt.content = "HansWurst"
    assert_equal "<title>HansWurst - always append this</title>", tt.to_tag
    
    tt.append_title = false
    assert_equal "<title>HansWurst</title>", tt.to_tag
    tt.append_title = true
    assert_equal "<title>HansWurst - always append this</title>", tt.to_tag
  end
end