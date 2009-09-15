require 'test_helper'

class PageDefinitionTest < Test::Unit::TestCase
  
  def test_have_setter_for_title_description_and_robots_tag
    mpd = MetaTag::PageDefinition.new
    
    mpd.title = "HansWurst"
    assert_equal "HansWurst", mpd.title.content
    
    mpd.description = "andere desc"
    assert_equal "andere desc", mpd.description.content
    
    mpd.robots = "index, nofollow"
    assert_equal "index, nofollow", mpd.robots.content
    
    mpd.keywords = "gebrauchtwagen, pkw"
    assert_equal "gebrauchtwagen, pkw", mpd.keywords.content
  end
  
  def test_have_to_tags
    mpd = MetaTag::PageDefinition.new
    
    mpd.title = "meta_tag title"
    mpd.keywords = "key, word"
    mpd.robots = "index, nofollow"
    mpd.title_to_append = " - foo"
    mpd.append_title = true
    mpd.description = "foo bar"
    assert_equal "<title>meta_tag title - foo</title>\n<meta name=\"description\" content=\"foo bar\" />\n<meta name=\"robots\" content=\"index, nofollow\" />\n<meta name=\"keywords\" content=\"key, word\" />", mpd.to_tags
  end
  
  def test_could_change_title_without_affecting_appended_title
    mpd = MetaTag::PageDefinition.new
    
    mpd.title = "meta_tag title"
    mpd.title_to_append = " - foo"
    mpd.append_title = true
    assert mpd.title
    assert_kind_of MetaTag::Tag, mpd.title
    assert_equal "meta_tag title - foo", mpd.title.to_s
    
    assert_equal "<title>meta_tag title - foo</title>", mpd.title.to_tag
  end
  
  def test_could_trigger_appended_title
    mpd = MetaTag::PageDefinition.new
    
    mpd.title = "meta_tag title"
    mpd.title_to_append = " - foo"
    mpd.append_title = true
    
    assert mpd.title
    assert_kind_of MetaTag::Tag, mpd.title
    assert_equal "meta_tag title - foo", mpd.title.to_s
    
    mpd.append_title = false
    assert_equal "meta_tag title", mpd.title.to_s
    assert_equal "<title>meta_tag title</title>", mpd.title.to_tag
    
    mpd.title = "new meta_tag title"
    assert_equal "new meta_tag title", mpd.title.to_s
    assert_equal "<title>new meta_tag title</title>", mpd.title.to_tag
    
    mpd.append_title = true
    assert_equal "new meta_tag title - foo", mpd.title.to_s
    assert_equal "<title>new meta_tag title - foo</title>", mpd.title.to_tag
  end
  
end