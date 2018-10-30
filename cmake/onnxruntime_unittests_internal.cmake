# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.

# unittests for all internal providers
# this file is meant to be included inside the parent onnxruntime_unittests.cmake file
# and hence it depends on variables defined in the parent file.

if(onnxruntime_USE_NUPHAR)
  list(APPEND onnxruntime_test_framework_src_patterns  ${TEST_SRC_DIR}/framework/nuphar/*)
  list(APPEND onnxruntime_test_framework_libs onnxruntime_providers_nuphar)
  list(APPEND onnxruntime_test_providers_dependencies onnxruntime_providers_nuphar)
  list(APPEND onnxruntime_test_providers_libs onnxruntime_providers_nuphar)
  list(APPEND onnx_test_libs onnxruntime_providers_nuphar)
endif()

if(onnxruntime_USE_BRAINSLICE)
  list(APPEND onnxruntime_test_providers_libs onnxruntime_providers_brainslice)
  list(APPEND onnxruntime_test_providers_dependencies onnxruntime_providers_brainslice)
  list(APPEND TEST_INC_DIR ${lotus_BS_CLIENT_PACKAGE}/inc)
endif()