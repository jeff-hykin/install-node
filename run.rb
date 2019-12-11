require 'atk_toolbox'

# if missing either node or npm
if !Console.has_command("node") || !Console.has_command("npm")
    if OS.is?("mac")
        system "brew install node"
    elsif OS.is?("windows")
        system "scoop install nodejs"
    elsif OS.is?("linux")
        # if debian/ubunutu
        if Console.has_command("apt")
            system "sudo apt install nodejs"
        end
    end
end