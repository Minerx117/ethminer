rd /S /Q release
rd /S /Q build
mkdir release
mkdir build
cd build

setx CUDA_TOOLKIT_ROOT_DIR "C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.2"
cmake .. -G "Visual Studio 16 2019" -DETHASHCL=ON -DAPICORE=ON -DETHASHCUDA=ON -T v142
cmake --build . --config Release
cd ..
copy build\ethminer\Release\ethminer.exe release
