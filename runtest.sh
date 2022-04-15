#!/bin/bash
# ref. https://www.sidefx.com/docs/houdini/tops/cooking.html#cookcommandline

# User exporttings
export "houdiniVersion=19.0.588"
export "hipFile=hougeotest.hip"
export "topPath=/tasks/topnet1"

# export Houdini path
export "HOUDINI_ROOT=/opt/hfs${houdiniVersion}"
export "PATH=${HOUDINI_ROOT}/bin:${PATH}"
export "HHP=${HOUDINI_ROOT}/houdini/python3.7libs"

# Cook Tops
cd "$(dirname "${0}")"
hython "${HHP}/pdgjob/topcook.py" --hip "./${hipFile}" --toppath "${topPath}"

# Wait User inputs...
read -p "Press [Enter] key to close."