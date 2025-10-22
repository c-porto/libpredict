project(
  'libpredict',
  'c',
  version: '0.6.0',
  default_options: [
    'warning_level=3',
    'c_std=c99',
    'optimization=s',
    'buildtype=release',
    'default_library=both',
  ],
)

cc = meson.get_compiler('c')

m_dep = cc.find_library('m', required : false)

predict_srcs = []

predict_inc = include_directories('include')

predict_deps = []

predict_deps += m_dep

c_args = [
  '-Wno-unused-parameter',
  '-Wno-unused-value',
  '-Wno-missing-field-initializers',
  '-Wno-narrowing',
  '-Wno-pointer-arith',
  '-Wshadow',
  '-Wcast-align',
  '-Wwrite-strings',
]

subdir('src')

libpredict = library(
  'predict',
  sources: predict_srcs,
  include_directories: predict_inc,
  dependencies: predict_deps,
  c_args: c_args,
  install: false,
  version: meson.project_version(),
  soversion: meson.project_version().split('.')[0],
  pic: true,
)

libpredict_dep = declare_dependency(include_directories: predict_inc, link_with: libpredict)

