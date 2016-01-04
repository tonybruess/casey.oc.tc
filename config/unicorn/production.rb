pid "/home/deploy/apps/casey/shared/pids/unicorn.pid"

listen 3007
worker_processes 1
timeout 30
preload_app true
stderr_path "/home/deploy/apps/casey/shared/log/unicorn.err.log"

before_fork do |server, worker|
     old_pid = "/home/deploy/apps/casey/shared/pids/unicorn.pid.oldbin"
     if File.exists?(old_pid) && server.pid != old_pid
        begin
            Process.kill("QUIT", File.read(old_pid).to_i)
        rescue Errno::ENOENT, Errno::ESRCH
        end
    end
end
