module MetaTag
  class TitleTag < Tag
  
    attr_accessor :append_title
    attr_accessor :title_to_append
  
    def initialize(content, title_to_append="")
      super("title", content)
      @title_to_append = title_to_append
      @append_title = !title_to_append.blank?
    end
  
    def to_tag
      # tag = "<title>#{content}#{append_title}</title>\n"
      # tag += super
      "<title>#{to_s}</title>".html_safe
    end
  
    def to_s
      "#{content}#{title_to_append if append_title}"
    end
  end
end