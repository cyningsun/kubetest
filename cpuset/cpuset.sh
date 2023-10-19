#!/bin/bash

# 查找所有的nginx worker进程
worker_processes=$(pgrep -f "nginx: worker")

# 获取系统总CPU数量
total_cpus=$(nproc --all)
# 获取可用 CPU
cat /sys/fs/cgroup/cpuset.cpus

# 记录已分配的CPU核心
allocated_cpus=()

# 遍历每个worker进程
for pid in $worker_processes; do
  # 获取当前进程的CPU亲和性
  current_cpus=$(taskset -c -p $pid | awk '{print $2}')

  # 为每个worker进程分配一个可用的CPU核心
  while true; do
      # 选择一个未被使用的CPU核心
      core_index=$(( RANDOM % total_cpus ))
      if [[ ! " ${allocated_cpus[@]} " = " ${core_index} " ]]; then
        allocated_cpus+=($core_index)
        break
      fi
  done
  taskset -cp $core_index $pid >/dev/null 2>&1

  echo "Worker process $pid has been bound to CPU core $core_index"

  # 查看CPU亲和性
  cat /proc/$pid/status|grep Cpus_allowed_list
done