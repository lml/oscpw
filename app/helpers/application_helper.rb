module ApplicationHelper

	def full_title(page_title)
		base_title = "OpenStax College Practice Widget"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end

	def pageHeading(heading_text, options={})
		options[:take_out_site_name] = true if options[:take_out_site_name].nil?
		options[:sub_heading_text] ||= ""
		options[:title_text] ||= heading_text +
								 (options[:sub_heading_text].blank? ?
								 "" : " [#{options[:sub_heading_text]}]")
    
    @page_title = options[:title_text]
    @page_title.sub!(SITE_NAME,"").strip! if @page_title.include?(SITE_NAME) && options[:take_out_site_name]
    
    return if heading_text.blank?
    
    content_for :page_heading do
      render(:partial => 'shared/page_heading', 
             :locals => {:heading_text => heading_text, 
                         :sub_heading_text => options[:sub_heading_text]})
    end
    
  end

end
