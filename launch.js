// Require Node.js standard library function to spawn a child process
var spawn = require('child_process').spawn;
 
// Create a child process for the Minecraft server using the same java process
// invocation we used manually before
var minecraftServerProcess = spawn('java', [
    '-Xmx2048M',
    '-Xms256M',
    '-jar',
    'server.jar',
    'nogui'
]);
 
// Listen for events coming from the minecraft server process - in this case,
// just log out messages coming from the server
function log(data) {
    process.stdout.write(data.toString());
}
minecraftServerProcess.stdout.on('data', log);
minecraftServerProcess.stderr.on('data', log);
