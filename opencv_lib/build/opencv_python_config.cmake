
set(CMAKE_BUILD_TYPE "RELEASE")

set(BUILD_SHARED_LIBS "ON")

set(CMAKE_C_FLAGS "   -fsigned-char -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wmissing-prototypes -Wstrict-prototypes -Wundef -Winit-self -Wpointer-arith -Wshadow -Wsign-promo -Wuninitialized -Winit-self -Wno-narrowing -Wno-delete-non-virtual-dtor -Wno-unnamed-type-template-args -Wno-comment -fdiagnostics-show-option -Wno-long-long -Qunused-arguments -Wno-semicolon-before-method-body -ffunction-sections -fdata-sections  -msse -msse2 -msse3 -mssse3 -msse4.1 -fvisibility=hidden -fvisibility-inlines-hidden")

set(CMAKE_C_FLAGS_DEBUG "-g  -O0 -DDEBUG -D_DEBUG")

set(CMAKE_C_FLAGS_RELEASE "-O3 -DNDEBUG  -DNDEBUG")

set(CMAKE_CXX_FLAGS "   -fsigned-char -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wmissing-prototypes -Wstrict-prototypes -Wundef -Winit-self -Wpointer-arith -Wshadow -Wsign-promo -Wuninitialized -Winit-self -Wno-narrowing -Wno-delete-non-virtual-dtor -Wno-unnamed-type-template-args -Wno-comment -fdiagnostics-show-option -Wno-long-long -Qunused-arguments -Wno-semicolon-before-method-body -ffunction-sections -fdata-sections  -msse -msse2 -msse3 -mssse3 -msse4.1 -fvisibility=hidden -fvisibility-inlines-hidden")

set(CMAKE_CXX_FLAGS_DEBUG "-g  -O0 -DDEBUG -D_DEBUG")

set(CMAKE_CXX_FLAGS_RELEASE "-O3 -DNDEBUG  -DNDEBUG")

set(CV_GCC "")

set(CV_CLANG "1")

set(ENABLE_NOISY_WARNINGS "OFF")

set(CMAKE_MODULE_LINKER_FLAGS "")

set(CMAKE_INSTALL_PREFIX "/Users/lisujia/workspace/LearnOPENCV/opencv_lib/release")

set(OpenCV_SOURCE_DIR "/Users/lisujia/workspace/LearnOPENCV/opencv_source")

set(OPENCV_FORCE_PYTHON_LIBS "")

set(OPENCV_PYTHON_SKIP_LINKER_EXCLUDE_LIBS "")

set(OPENCV_PYTHON_BINDINGS_DIR "/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/modules/python_bindings_generator")

set(cv2_custom_hdr "/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/modules/python_bindings_generator/pyopencv_custom_headers.h")

set(cv2_generated_files "/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/modules/python_bindings_generator/pyopencv_generated_include.h;/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/modules/python_bindings_generator/pyopencv_generated_funcs.h;/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/modules/python_bindings_generator/pyopencv_generated_types.h;/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/modules/python_bindings_generator/pyopencv_generated_type_reg.h;/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/modules/python_bindings_generator/pyopencv_generated_ns_reg.h;/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/modules/python_bindings_generator/pyopencv_signatures.json")
