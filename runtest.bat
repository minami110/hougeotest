@REM ref. https://www.sidefx.com/docs/houdini/tops/cooking.html#cookcommandline

@REM User Settings
SET "houdiniVersion=19.0.501"
SET "hipFile=hougeotest.hip"
SET "topPath=/tasks/topnet1"

@REM Set Houdini path
SET "houdiniPath=%ProgramFiles%/Side Effects Software/Houdini %houdiniVersion%/"
SET "hbatchDir=%houdiniPath%bin/"
SET "hhp=%houdiniPath%houdini/python3.7libs/"

@REM Cook Tops
"%hbatchDir%hython.exe" "%hhp%pdgjob/topcook.py" --hip "%~dp0%hipFile%" --toppath %topPath%

@rem Wait User inputs...
pause