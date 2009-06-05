module SponsorhipsTags
  include Radiant::Taggable

  tag 'sponsors' do |tag|
    tag.expand
  end

  tag 'sponsors:each' do |tag|
    result =[] 
    Sponsor.find(:all, :order => 'name ASC').each do |sponsor|
      tag.locals.sponsor = sponsor
      result << tag.expand
    end
    result
  end

  tag 'sponsors:each:sponsor' do |sponsor|
    sponsor = tag.locals.sponsor
    %{<a href="#{sponsor.url}" title="#{sponsor.description}">#{sponsor.name}</a>}
  end
end
