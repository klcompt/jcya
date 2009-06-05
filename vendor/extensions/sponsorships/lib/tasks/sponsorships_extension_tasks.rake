namespace :radiant do
  namespace :extensions do
    namespace :sponsorships do
      
      desc "Runs the migration of the Sponsorships extension"
      task :migrate => :environment do
        require 'radiant/extension_migrator'
        if ENV["VERSION"]
          SponsorshipsExtension.migrator.migrate(ENV["VERSION"].to_i)
        else
          SponsorshipsExtension.migrator.migrate
        end
      end
      
      desc "Copies public assets of the Sponsorships to the instance public/ directory."
      task :update => :environment do
        is_svn_or_dir = proc {|path| path =~ /\.svn/ || File.directory?(path) }
        puts "Copying assets from SponsorshipsExtension"
        Dir[SponsorshipsExtension.root + "/public/**/*"].reject(&is_svn_or_dir).each do |file|
          path = file.sub(SponsorshipsExtension.root, '')
          directory = File.dirname(path)
          mkdir_p RAILS_ROOT + directory
          cp file, RAILS_ROOT + path
        end
      end  
    end
  end
end
