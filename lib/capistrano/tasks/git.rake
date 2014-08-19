namespace :git do
  desc 'Copy repo to releases'
  task create_release: :'git:update' do
    on roles(:all) do
      with fetch(:git_environmental_variables) do
        within repo_path do
          execute :git, :clone, '-b', fetch(:branch), '--depth 1', '.', release_path
        end
        within release_path do
          execute :git, :submodule, :update, '--init --depth 1'
          execute :rm, '-rf .git*'
        end
      end
    end
  end
end
