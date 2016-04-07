#!/bin/bash

# Copyright (C) 2016 The Pure Nexus Project
# Copyright (C) 2015 KreAch3R
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#Variables
green=`tput setaf 2`
red=`tput setaf 1`
yellow=`tput setaf 3`
reset=`tput sgr0`

source build/envsetup.sh

echo "${red}***********************************************${reset}"
echo "${red}*${reset}${green}          PureNexus Release Script!          ${reset}${red}*${reset}"
echo "${red}*${reset}${green}   Lets get Ready To Build For The Masses!   ${reset}${red}*${reset}"
echo "${red}***********************************************${reset}"

echo "${yellow}This script is only for purenexus maintainers.${reset}"
echo "${yellow}if you are just casually building use . build/envsetup.sh${reset}"

function release() {
   # Start building every device
   for combo in "${vendorsetups[@]}"; do
       # We don't build AndroidTV devices in release cycles
       if [ "$combo" != "nexus_fugu-userdebug" ] && [ "$combo" != "nexus_molly-userdebug" ]; then
           lunch $combo && mka bacon
       fi
   done
}
