require "DropboxSDK/ARKS/version"
require "DropboxSDK/ARKS/initialize_dropbox_client"

module DropboxSDK
  module ARKS
    class DropboxIntegrations < InitializeDropboxClient
      # setting up dropbox client calling its parent on initialization with access_token
      def initialize(access_token)
        super(access_token)
      end

      # pass in the folder name in dropbox side inside of your app from where files are to be downloaded
      def download_files(file_lists, dump_folder_path, folder_name)
        FileUtils.mkdir_p(dump_folder_path + folder_name)
        if file_lists.any?
          # get all the files path to download appropriate files
          puts "Downloading files ...."
          file_lists.each do |f|
            body = @dbx.download(f.path_display)
            open(dump_folder_path+f.path_display, 'wb') { |f| f.write body.to_s }
          end
          puts "Donwload completed."
        else
          puts "Empty folder. Please add some files to your folder in dropbox and try again."
        end
      end

      # list files inside of a folder
      def list_files(folder_name)
        list_folders = @dbx.list_folder("").collect { |entry| entry.name }
        if list_folders.include?(folder_name)
           return list_files = @dbx.list_folder("/#{folder_name}").entries
        else
          puts "Folder does not exists. Please provide appropriate folder name."
        end
      end
    end 
  end
end

obj1 = DropboxSDK::ARKS::DropboxIntegrations.new("i3cWCpVYK9MAAAAAAAA48C3waWYxDQeq-bUdZgj3Y9WFRIcWv9t1tzE3n7UntjeL")
lists = obj1.list_files("myfolder")
obj1.download_files(lists, "../", "myfolder")

