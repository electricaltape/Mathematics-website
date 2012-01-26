# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.
include Nanoc3::Helpers::LinkTo
# include Nanoc3::Filters::ColorizeSyntax

def item_titles
  @items.map { |i| i[:title] }
end

def item_identifiers
  @items.map { |i| i.identifier }
end

def item_filenames
  @items.map { |i| i.attributes[:filename] }
end

def create_inner_links
  # select the pages with titles, create links, join them.
  '<br>' + @items.select { |i| not i[:title].nil? }
    .map { |i| link_to(i[:title], i.identifier) }.join('<br>') + '<br><br>'
end
