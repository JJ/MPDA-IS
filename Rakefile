task default: %w[mdlint]

task :mdlint do
  sh "bundle exec mdl --ignore-front-matter --style .mdl.rb README.md doc/" or fail "[Failed]"
end

task :spellcheck do
  sh "scripts/spell-check.sh"
end

