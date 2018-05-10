wget https://s3.amazonaws.com/Minecraft.Download/versions/1.12.2/minecraft_server.1.12.2.jar
echo "eula=true" > eula.txt
echo "#!/bin/bash
java -Xmx2048M -Xms2048M -jar minecraft_server.1.12.2.jar nogui" > start.sh
echo ">> Start MC server"
sh start.sh
