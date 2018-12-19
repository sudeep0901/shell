#!/bin/bash

echo "Number of argument passed: ${#}"
if [[ ! $1 ]]; then
    echo "Missing Argument"
    exit 1
fi

echo "Last command status: ${?}"

echo "Lenght of argument passed: ${#1}"

bindir="${HOME}/bin"
filename="${bindir}/$1"
scriptname="$1"
if [[ -e filename ]]; then
    echo "File ${filename} already exists"
    exit 1
fi

if type "$scriptname"; then
    echo "Command already exists with name ${scriptname}"
    exit 1
fi
if [[ ! -d bindir ]]; then
    if mkdir "$bindir"; then
        echo "created ${bindir}"
    else
        echo "Directory ${bindir} already exists"
        # exit 1
    fi
fi

echo "#!/bin/bash" > "$filename"
chmod u+x "$filename"

if [[ ! $EDITOR ]]; then
    $EDITOR "$filename"
else
    echo "Script created: not starting editor  becuase \$EDITOR is not set."
    # export EDITOR=vi
fi
$EDITOR "$filename"
echo "end of code"

exit 0