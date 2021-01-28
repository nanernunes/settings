#! /usr/bin/env bash

get_os_vendor()
{

  case $(uname -s) in

    ("Linux")
      VENDOR=$(grep -oP '(?<=^ID=)\w+' /etc/os-release)
      ;;

    ("Darwin")
      VENDOR="macos"
      ;;

  esac

}


configure_generic_settings()
{
  sh ${1}/generic.sh
}

configure_profile_settings()
{
  sh ${1}/${2}.sh
}


setup_install() {
  echo "Applying Generic Settings..."
  configure_generic_settings ${VENDOR}

  if [ ! -z ${MY_PROFILE} ]; then
    echo "Applying Profile Settings..."
    configure_profile_settings ${VENDOR} ${MY_PROFILE}
  fi
}


MY_PROFILE=$1
get_os_vendor

setup_install
