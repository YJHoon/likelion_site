Rake::Task["deploy:assets:prepare"].clear
Rake::Task["deploy:assets:cleanup"].clear

namespace :deploy do
  namespace :assets do
    desc "Remove all local precompiled assets"
    task :cleanup do
      run_locally do
        %x(RAILS_ENV=production bundle exec rake assets:clobber)
      end
    end

    desc "Actually precompile the assets locally"
    task :prepare do
      run_locally do
        %x(RAILS_ENV=production bundle exec rake assets:clean)
        %x(RAILS_ENV=production bundle exec rake assets:precompile)
      end
    end
  end
end
