require 'test_helper'

class TagTest < Test::Unit::TestCase
  
  def test_have_name_and_content
    mt = MetaTag::Tag.new("title", "pkw.de")
    assert_equal "title", mt.name
    assert_equal "pkw.de", mt.content
  end
  
  def test_have_to_tag
    mt = MetaTag::Tag.new("title", "pkw.de")
    assert_equal "title", mt.name
    assert_equal "pkw.de", mt.content
    
    assert_equal "<meta name=\"title\" content=\"pkw.de\" />", mt.to_tag
  end
  
  def test_have_to_s
    mt = MetaTag::Tag.new("title", "pkw.de")
    
    assert_equal "pkw.de", mt.to_s
  end
  
  def test_can_be_http_equiv
    mt = MetaTag::Tag.new("content-type", "text/html; charset=utf-8", true)

    assert_equal "<meta http_equiv=\"content-type\" content=\"text/html; charset=utf-8\" />", mt.to_tag
  end
    
end