# Print ASCII art on login to specific machines
AA_LOGIN_ART=~/.login_art/$(hostname)
[ ! -f "$AA_LOGIN_ART" ] && [ ! -f "${AA_LOGIN_ART}_color" ] &&
  AA_LOGIN_ART=~/.login_art/byu
echo
if [ -f "${AA_LOGIN_ART}_color" ]; then
  echo -e "$(cat ${AA_LOGIN_ART}_color)" | head -n -1
else
  head -n -1 "$AA_LOGIN_ART"
fi
echo
