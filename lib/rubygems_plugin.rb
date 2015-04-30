require 'rubygems'

Gem.post_install do |installer|
  gem_dir = installer.respond_to?(:gem_dir) ? installer.gem_dir : File.expand_path(File.join(installer.gem_home, 'gems', installer.spec.full_name))
  lib_dir = File.join gem_dir, 'lib'
  if Dir.exist? lib_dir
    `cd #{lib_dir} && git init && git add -A && git commit -m 'Initial commit by gem-repositorizer'`
  end
  true
end
