task default: %w[mdlint]

task :mdlint do
  sh "mdl --ignore-front-matter --style .mdl.rb ."
end

tasl :spellcheck do
  sh "scripts/spell-check.sh"
end

