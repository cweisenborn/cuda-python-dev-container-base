#include <stdio.h> 

int main() {
  int devices;
  cudaGetDeviceCount(&devices);
  
  for (int i = 0; i < devices; i++) {
    cudaDeviceProp deviceInfo;
    cudaGetDeviceProperties(&deviceInfo, i);
    
    printf("Device Number: %d\n", i);
    printf("- Device Name: %s\n", deviceInfo.name);
    printf("- Memory Clock Rate (KHz): %d\n", deviceInfo.memoryClockRate);
    printf("- Memory Bus Width (bits): %d\n", deviceInfo.memoryBusWidth);
  }
}