
INTERVAL_TIME = 60
SAY_MESSAGE_TEMPLATE = "分経過です"

timer = 0

Process.daemon(true, true)
puts "Start Timer : #{Process.pid}"

while true do
  sleep 1
  timer += 1

  if (timer % INTERVAL_TIME) == 0
    system("say #{(timer / INTERVAL_TIME) * 10}#{SAY_MESSAGE_TEMPLATE}")
  end
end
