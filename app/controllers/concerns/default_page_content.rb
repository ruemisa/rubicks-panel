module DefaultPageContent
  extend ActiveSupport::Concern

  included do 
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Rubicks Academy of Defending Ancients"
    @seo_keywords = "Rubicks Academy Defending Ancients"
  end

end