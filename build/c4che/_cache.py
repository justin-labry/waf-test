AR = ['/usr/bin/ar']
ARCH_ST = ['-arch']
ARFLAGS = ['rcs']
BINDIR = '/usr/local/bin'
BOOST_VERSION = '1_72'
BOOST_VERSION_NUMBER = 107200
CC_VERSION = ('11', '0', '3')
COMPILER_CXX = 'clang++'
CPPPATH_ST = '-I%s'
CXX = ['/usr/bin/clang++']
CXXFLAGS_MACBUNDLE = ['-fPIC']
CXXFLAGS_cxxshlib = ['-fPIC']
CXXLNK_SRC_F = []
CXXLNK_TGT_F = ['-o']
CXX_NAME = 'clang'
CXX_SRC_F = []
CXX_TGT_F = ['-c', '-o']
DEFINES = ['HAVE_STDIO_H=1']
DEFINES_ST = '-D%s'
DEFINE_COMMENTS = {'HAVE_STDIO_H': ''}
DEST_BINFMT = 'mac-o'
DEST_CPU = 'x86_64'
DEST_OS = 'darwin'
FRAMEWORKPATH_ST = '-F%s'
FRAMEWORK_ST = ['-framework']
HAVE_STDIO_H = 1
INCLUDES_BOOST = '/usr/local/include'
LIBDIR = '/usr/local/lib'
LIBPATH_BOOST = ['/usr/local/lib']
LIBPATH_ST = '-L%s'
LIB_BOOST = ['boost_locale-mt']
LIB_ST = '-l%s'
LINKFLAGS_MACBUNDLE = ['-bundle', '-undefined', 'dynamic_lookup']
LINKFLAGS_cxxshlib = ['-dynamiclib']
LINKFLAGS_cxxstlib = []
LINK_CXX = ['/usr/bin/clang++']
PREFIX = '/usr/local'
RPATH_ST = '-Wl,-rpath,%s'
SHLIB_MARKER = []
SONAME_ST = []
STLIBPATH_BOOST = ['/usr/local/lib']
STLIBPATH_ST = '-L%s'
STLIB_BOOST = []
STLIB_MARKER = []
STLIB_ST = '-l%s'
cxxprogram_PATTERN = '%s'
cxxshlib_PATTERN = 'lib%s.dylib'
cxxstlib_PATTERN = 'lib%s.a'
define_key = ['HAVE_STDIO_H']
macbundle_PATTERN = '%s.bundle'
