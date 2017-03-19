//
// Created by AJ Pryor on 3/6/17.
//

#ifndef PRISM_UTILITY_CUH
#define PRISM_UTILITY_CUH
#define PI 3.14159265359
#include "cuComplex.h"
//#include <cuda_runtime.h>
#include "configure.h"
// define some constants
//__device__ __constant__ float pi_f       = PI;
//__device__ __constant__ cuFloatComplex i_f     = {0, 1};
//__device__ __constant__ cuFloatComplex pi_cx_f = {PI, 0};
//__device__ __constant__ cuFloatComplex minus_2pii_f = {0, -2*PI};
//__device__ __constant__ double pi       = PI;
//__device__ __constant__ cuDoubleComplex i     = {0, 1};
//__device__ __constant__ cuDoubleComplex pi_cx = {PI, 0};
//__device__ __constant__ cuDoubleComplex minus_2pii = {0, -2*PI};

// computes exp(real(a) + i * imag(a))
__device__ __forceinline__ cuDoubleComplex exp_cx(const cuDoubleComplex a);
__device__ __forceinline__ cuFloatComplex exp_cx(const cuFloatComplex a);

// creates initial probe using existing GPU memory rather than streaming each probe
__global__ void initializePsi_oneNonzero(cuFloatComplex *psi_d, const size_t N, const size_t beamLoc);


__global__ void initializePsi_oneNonzero(cuDoubleComplex *psi_d, const size_t N, const size_t beamLoc);


// multiply two complex arrays
__global__ void multiply_inplace(cuDoubleComplex* arr,
                                 const cuDoubleComplex* other,
                                 const size_t N);


// multiply two complex arrays
__global__ void multiply_inplace(cuFloatComplex* arr,
                                 const cuFloatComplex* other,
                                 const size_t N);


// multiply two complex arrays
__global__ void multiply_cx(cuDoubleComplex* arr,
                            const cuDoubleComplex* other,
                            const size_t N);


// multiply two complex arrays
__global__ void multiply_cx(cuFloatComplex* arr,
                            const cuFloatComplex* other,
                            const size_t N);


//// divide two complex arrays
//__global__ void divide_inplace(PRISM_CUDA_COMPLEX_FLOAT* arr,
//                               const PRISM_FLOAT_PRECISION val,
//                               const size_t N){
//	int idx = threadIdx.x + blockDim.x*blockIdx.x;
//	if (idx < N) {
//		arr[idx].x /= val;
//		arr[idx].y /= val;
//	}
//}

__global__ void divide_inplace(cuDoubleComplex* arr,
                               const cuDoubleComplex val,
                               const size_t N);


__global__ void divide_inplace(cuFloatComplex* arr,
                               const cuFloatComplex val,
                               const size_t N);


// set all array values to val
__global__ void setAll(double *data, double val, size_t N);


// set all array values to val
__global__ void setAll(float *data, float val, size_t N);


// creates initial probe using existing GPU memory rather than streaming each probe
__global__ void initializePsi(cuDoubleComplex *psi_d,
                              const cuDoubleComplex* PsiProbeInit_d,
                              const double* qya_d,
                              const double* qxa_d,
                              const size_t N,
                              const double yp,
                              const double xp);


// creates initial probe using existing GPU memory rather than streaming each probe
__global__ void initializePsi(cuFloatComplex *psi_d,
                              const cuFloatComplex* PsiProbeInit_d,
                              const float* qya_d,
                              const float* qxa_d,
                              const size_t N,
                              const float yp,
                              const float xp);



// compute modulus squared of other and store in arr
__global__ void abs_squared(double* arr,
                            const cuDoubleComplex* other,
                            const size_t N);


// compute modulus squared of other and store in arr
__global__ void abs_squared(float* arr,
                            const cuFloatComplex* other,
                            const size_t N);


__global__ void array_subset(const cuDoubleComplex* psi_d,
                             cuDoubleComplex* psi_small_d,
                             const size_t* qyInd_d,
                             const size_t* qxInd_d,
                             const size_t dimi,
                             const size_t dimj_small,
                             const size_t dimi_small);

__global__ void array_subset(const cuFloatComplex* psi_d,
                             cuFloatComplex* psi_small_d,
                             const size_t* qyInd_d,
                             const size_t* qxInd_d,
                             const size_t dimi,
                             const size_t dimj_small,
                             const size_t dimi_small);

__global__ void shiftIndices(long* vec_out, const long by, const long imageSize, const long N);

__global__ void computePhaseCoeffs(PRISM_CUDA_COMPLEX_FLOAT* phaseCoeffs,
                                   const PRISM_CUDA_COMPLEX_FLOAT *PsiProbeInit_d,
                                   const PRISM_FLOAT_PRECISION * qyaReduce_d,
                                   const PRISM_FLOAT_PRECISION * qxaReduce_d,
                                   const size_t *yBeams_d,
                                   const size_t *xBeams_d,
                                   const PRISM_FLOAT_PRECISION yp,
                                   const PRISM_FLOAT_PRECISION xp,
                                   const PRISM_FLOAT_PRECISION yTiltShift,
                                   const PRISM_FLOAT_PRECISION xTiltShift,
                                   const size_t dimi,
                                   const size_t numBeams);

//template <size_t BlockSizeX>
//__global__ void scaleReduceS(const PRISM_CUDA_COMPLEX_FLOAT *permuted_Scompact_d,
//                             const PRISM_CUDA_COMPLEX_FLOAT *phaseCoeffs_ds,
//                             PRISM_CUDA_COMPLEX_FLOAT *psi_ds,
//                             const long *y_ds,
//                             const long* x_ds,
//                             const size_t numberBeams,
//                             const size_t dimj_S,
//                             const size_t dimk_S,
//                             const size_t dimj_psi,
//                             const size_t dimi_psi);

__global__ void integrateDetector(const float* psi_intensity_ds,
                       const float* alphaInd_d,
                       float* integratedOutput,
                       const size_t N,
                       const size_t num_integration_bins);

void formatOutput_GPU_integrate(PRISM::Parameters<PRISM_FLOAT_PRECISION> &pars,
                                PRISM_FLOAT_PRECISION *psi_intensity_ds,
                                const PRISM_FLOAT_PRECISION *alphaInd_d,
                                PRISM_FLOAT_PRECISION *stack_ph,
                                PRISM_FLOAT_PRECISION *integratedOutput_ds,
                                const size_t& ay,
                                const size_t& ax,
                                const size_t& dimj,
                                const size_t& dimi,
                                const cudaStream_t& stream,
                                const long& scale = 1);

__global__ void multiply_cxarr_scalar(cuDoubleComplex* arr,
                                      const cuDoubleComplex val,
                                      const size_t N);

__global__ void multiply_cxarr_scalar(cuFloatComplex* arr,
                                      const cuFloatComplex val,
                                      const size_t N);

__global__ void multiply_arr_scalar(double* arr,
                                    const double val,
                                    const size_t N);

__global__ void multiply_arr_scalar(float* arr,
                                    const float val,
                                    const size_t N);

//size_t getNextPower2(const double& val);
//size_t getNextPower2(const float& val);
size_t getNextPower2(const size_t& val);

#if __CUDA_ARCH__ < 600
__device__  double atomicAdd_double(double* address, const double val);
#endif
//__global__ void shiftIndices(size_t* vec, const size_t* vec_in, double by, const size_t N);
#endif // PRISM_UTILITY_CUH