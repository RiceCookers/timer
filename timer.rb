
INTERVAL_TIME = 600
SAY_MESSAGE_TEMPLATE = "分経過です"

timer = 0

Process.daemon(true, true)
puts "Start Timer : #{Process.pid}"

while true do
  sleep 1
  timer += 1

  if (timer % INTERVAL_TIME) == 0
    system("say #{(timer / INTERVAL_TIME)}#{SAY_MESSAGE_TEMPLATE}")
  end
end
