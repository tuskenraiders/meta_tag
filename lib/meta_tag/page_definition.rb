module MetaTag
  class PageDefinition
  
    VALID_TAGS = [
      :title,
      :description,
      :robots,
      :keywords
    ]
    
    VALID_TAGS_SETTER = VALID_TAGS.collect { |t| "#{t}=".to_sym }
  
    attr_reader :title, :description, :robots, :append_title, :keywords
  
    def initialize(default_options = {})
      @title       = TitleTag.new(default_options[:title], default_options[:append_title])  
      @description = Tag.new("description", default_options[:description])
      @robots      = Tag.new("robots", default_options[:robots])
      @keywords    = Tag.new("keywords", default_options[:keywords])
    end
  
    def title=(val)
      @title.content = val
    end
  
    def append_title=(boolean)
      @title.append_title = boolean
    end
    
    def title_to_append=(title_to_append)
      @title.title_to_append = title_to_append
    end
    
    def description=(val)
      @description.content = val
    end
  
    def robots=(val)
      @robots.content = val
    end

    def keywords=(val)
      @keywords.content = val
    end
  
    def to_tags
      html = []
      VALID_TAGS.each { |t| html << send(t).to_tag  unless send(t).to_s.blank?}
      html.join("\n").html_safe
    end
  
  end
end