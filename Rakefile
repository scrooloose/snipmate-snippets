desc "Copy the snippets directories into ~/.vim/snippets"
task :deploy_local do
  run "rm -rf ~/.vim/snippets"
  run "mkdir ~/.vim/snippets"
  run "cp -r _ ~/.vim/snippets/"
  run "cp -r ant ~/.vim/snippets/"
  run "cp -r c ~/.vim/snippets/"
  run "cp -r eruby ~/.vim/snippets/"
  run "cp -r eruby-rails ~/.vim/snippets/"
  run "cp -r html ~/.vim/snippets/"
  run "cp -r java ~/.vim/snippets/"
  run "cp -r javascript ~/.vim/snippets/"
  run "cp -r javascript-jquery ~/.vim/snippets/"
  run "cp -r objc ~/.vim/snippets/"
  run "cp -r php ~/.vim/snippets/"
  run "cp -r python ~/.vim/snippets/"
  run "cp -r ruby ~/.vim/snippets/"
  run "cp -r ruby-factorygirl ~/.vim/snippets/"
  run "cp -r ruby-rails ~/.vim/snippets/"
  run "cp -r ruby-rails-rjs ~/.vim/snippets/"
  run "cp -r ruby-rspec ~/.vim/snippets/"
  run "cp -r vim ~/.vim/snippets/"
  run "cp -r zend ~/.vim/snippets/"
  run "cp support_functions.vim ~/.vim/snippets/"
end

def run(cmd)
  puts "Executing: #{cmd}"
  system cmd
end
