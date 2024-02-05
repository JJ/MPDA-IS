task default: %w[mdlint]

task :mdlint do
  puts %x{bundle exec mdl --ignore-front-matter --style .mdl.rb .}
end

task :spellcheck do
  sh "scripts/spell-check.sh"
end

