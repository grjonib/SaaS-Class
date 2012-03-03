class Class
	def attr_accessor_with_history(attr_name)
		attr_name = attr_name.to_s	#make sure its a string
		attr_reader attr_name		# create the attribute getter
		attr_reader attr_name+"_history"	#Create bar_history	getter
		
    class_eval %Q{

			def #{attr_name}=(attr_name)
			  @#{attr_name} = attr_name
			  if @#{attr_name}_history
					@#{attr_name}_history += [attr_name]
				else
				  @#{attr_name}_history = [nil] + [attr_name]
				end
			end
		}
		
	end
end

class Foo
	attr_accessor_with_history :bar
end