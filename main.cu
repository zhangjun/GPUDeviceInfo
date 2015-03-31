/*******************************************
   Auther        : Jun Zhang
   Email         : ewalker.zj@gmail.com
   Last Modified : 2015-04-01 00:26
   Filename      : main.cu
   Destription   : 
*******************************************/
#include<stdio.h>

void getDeviceInfo()
{
	int gpu_id;
	cudaGetDevice(&gpu_id);
	cudaDeviceProp gpu_dev;
	cudaGetDeviceProperties(&gpu_dev, gpu_id);

	size_t total_mem, avail_mem;
	checkCudaErrors(cudaMemGetInfo(&avail_mem, &total_mem));
//	int numGPUCores = getGPUCoresNum();
	printf("GPU %s: avail_mem is %d MB, total_mem is %d MB\n", gpu_dev.name, avail_mem/1024/1024, total_mem/1024/1024);
}

int main()
{
	getDeviceInfo();
	return 0;
}
