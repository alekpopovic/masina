module Masina
  class PolicyGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('templates', __dir__)
    argument :methods, type: :array, default: [], banner: 'method method'

    def create_policy_file
      policy_dir_path = 'app/policies'
      generator_path = policy_dir_path + "/#{file_name}_policy.rb"
      Dir.mkdir(policy_dir_path) unless File.exist?(policy_dir_path)
      template 'policy.erb', generator_path
    end

    private

    def methods?
      methods.any?
    end
  end
end
