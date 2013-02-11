require 'yaml'

# usage:
#    {% foreach_faq_categories %}
#    {% endforeach_faq_categories %}
module Jekyll
	class ForeachFAQItems < Liquid::Block
		def render(context)
			files = Dir.glob(File.join(File.dirname(context['category']['__mainfast__']), '*.{md, markdown, html, textile}'))
			files.sort! { |x, y| x <=> y }
	
			result = []
			files.each { |file|
				begin
					content = File.read file
					data = {}
					if content =~ /\A(---\s*\n.*?\n?)^(---\s*$\n?)/m
						content = $POSTMATCH
						data = YAML.load($1)
					end
					context.stack {
						context['item'] = data
						context['item']['content'] = content
						result << render_all(@nodelist, context)
					}
				rescue => e
					puts "Error reading file #{file}: #{e.message}"
				rescue SyntaxError => e
					puts "YAML Exception reading #{file}: #{e.message}"
				end
			}
			result
		end
	end

	class ForeachFAQCategories < Liquid::Block
		def render(context)
			files = Dir.glob(File.join(context.registers[:site].source, '_faq/*/_mainfast.yml'))
			categories = []
			for file in files
				begin
					content = YAML.load(File.read file)
					content['__mainfast__'] = file
					categories.push content
				rescue => e
					puts "Error reading file #{file}: #{e.message}"
				rescue SyntaxError => e
					puts "YAML Exception reading #{file}: #{e.message}"
				end
			end
	
			categories.sort! { |x, y|
				return x['name'] <=> y['name'] if x['z-index'] == y['z-index']
				x['z-index'] <=> y['z-index']
			}
	
			result = []
			context.stack {
				categories.each_with_index { |item, index|
					context['category'] = item
					result << render_all(@nodelist, context)
				}
			}
	
			result
		end

		def unknown_tag(tag, params, tokens)
			if tag == 'foreach_faq_items'
				@nodelist << ForeachFAQItems.new(tag, params, tokens)
			else
				super
			end
		end
	end
end

Liquid::Template.register_tag('foreach_faq_categories', Jekyll::ForeachFAQCategories)
