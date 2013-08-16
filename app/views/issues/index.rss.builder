xml.instruct! :xml, version: "1.0"
xml.rss version: "2.0" do
	xml.channel do
		xml.title "Our Issues"
		xml.description "Latest Issues...njoy"
		xml.link issues_url

		@issues.each do |issue|
			xml.item do
				xml.title issue.title
				xml.pubDate issue.created_at
				xml.description issue.description
			end
		end
	end
	
end

