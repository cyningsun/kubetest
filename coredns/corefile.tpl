. {
    log
    errors
    forward . ${IP}
    file /etc/coredns/db/example.com example.com
    cache 30
    loop
    reload
    loadbalance round_robin
}
