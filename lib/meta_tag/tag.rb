module MetaTag
  class Tag
  
    attr_accessor :name, :content
    attr_accessor :http_equiv
  
    def initialize(name, content, http_equiv=false)
      @name = name
      @content = content
      @http_equiv = http_equiv
    end
  
    def to_tag
      "<meta #{http_equiv ? "http_equiv" : "name"}=\"#{name}\" content=\"#{content}\" />"
    end
  
    def to_s
      content
    end
  end
end
