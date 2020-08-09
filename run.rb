require 'atk_toolbox'

# if missing either node or npm
if !Console.has_command("node") || !Console.has_command("npm")
    if OS.is?("mac")
        system "brew install node"
    elsif OS.is?("windows")
        system "scoop install nodejs"
        raise <<-HEREDOC.remove_indent
            
            
            Node was installed, however because of the way 
            Windows works, you need to close this app
            then reopen it and run:
                #{"cd \"#{Dir.pwd}\"".blue.on_black}
                #{"_ (setup)".blue.on_black}
            so that the rest of the setup can finish
        HEREDOC
    elsif OS.is?("linux")
        # if debian/ubunutu
        if Console.has_command("apt")
            system "sudo apt install nodejs"
        end
    end
end