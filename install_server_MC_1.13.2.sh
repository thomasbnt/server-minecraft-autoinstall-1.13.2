wget https://launcher.mojang.com/v1/objects/3737db93722a9e39eeada7c27e7aca28b144ffa7/server.jar
echo "eula=true" > eula.txt
echo "#!/bin/bash
java -Xmx2048M -Xms2048M -jar server.jar nogui" > start.sh
echo "Starting Minecraft server.."
sh start.sh
