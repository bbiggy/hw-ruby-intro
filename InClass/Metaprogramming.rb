class SaaS 
  ["cloud", "Ruby", "cluster"].each do |action|
    define_method("perform_#{action}") do |argument|
    "performing #{action.gsub('_', ' ')} on #{argument}"
    end
  end
end

software = SaaS.new
puts software.perform_cloud('public')
puts software.perform_Ruby('Rails')
puts software.perform_cluster('demand')