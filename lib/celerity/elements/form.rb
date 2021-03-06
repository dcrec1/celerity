module Celerity
  class Form < Element
    include Container
    
    TAGS = [Identifier.new('form')]
    
    # HTML 4.01 Transitional DTD
    ATTRIBUTES = BASE_ATTRIBUTES | [:action, :method, :enctype, :accept, :name, :onsubmit, :onreset, :target, :'accept-charset']
    DEFAULT_HOW = :name

    #
    # Submits the form.
    # 
    
    def submit
      assert_exists
      @container.update_page @object.submit(nil)
    end

  end # Form
end # Celerity