@ECHO OFF
FOR /F "tokens=*" %%g IN ('nvcc --version') do (set ver=%%g)

echo %ver%
set CUDA_VERSION=%ver:~11,4%
echo %CUDA_VERSION%


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



