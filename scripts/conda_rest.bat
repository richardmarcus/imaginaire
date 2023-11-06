
echo %cd%
set curr_directory=%cd%
echo %curr_directory%

for %%p in (correlation channelnorm resample2d bias_act upfirdn2d) do (
  cd %curr_directory%
  cd imaginaire\third_party\%%p
  rmdir /s /q build dist *info
  python setup.py install
  cd %curr_directory%
)



