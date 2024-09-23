A=${@}

Ping()
{
    if [[ -s ${A} ]]
    then
        ping -c 1 ${@} > /dev/null
    fi
        Status
}

Status()
{
    case ${?} in
    0)
    echo "checking status for ${A}"
    sleep 1
    echo "$(ping -c 1 ${A})"
    ;;
    *)
    echo "Connection not stablished with ${A}, kindly check internet connection"
    ;;
    esac
}
Ping