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
      "<title>#{content}#{append_title ? title_to_append : ""}</title>"
    end
  
    def to_s
      "#{content}#{append_title ? title_to_append : ""}"
    end
  end
end