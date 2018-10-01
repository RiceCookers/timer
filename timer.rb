
INTERVAL_TIME = 600
MATH_MINUTES = 60
SAY_MESSAGE_TEMPLATE = "分経過です"
PID_FILE_NAME = "./timer.pid"

timer = 0

Process.daemon(true, true)
puts "Start Timer : #{Process.pid}"
open(PID_FILE_NAME, 'w') {|f| f << Process.pid}

while true do
  sleep 1
  timer += 1

  if (timer % INTERVAL_TIME) == 0
    system("say #{(timer / MATH_MINUTES)}#{SAY_MESSAGE_TEMPLATE}")
  end
end
