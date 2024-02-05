task default: %w[mdlint]

task :mdlint do
  puts %x{bundle exec mdl --ignore-front-matter --style .mdl.rb README.md doc/}
end

task :spellcheck do
  sh "scripts/spell-check.sh"
end

