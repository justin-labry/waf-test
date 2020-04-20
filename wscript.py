#! /usr/bin/env python
# encoding: utf-8
# Thomas Nagy, 2006-2010 (ita)

# the following two variables are used by the target "waf dist"
VERSION='0.0.1'
APPNAME='cxx_test'

from waflib import Utils
import os
# these variables are mandatory ('/' are converted automatically)
top = '.'
out = 'build'

def options(opt):
	opt.load('compiler_cxx')

def dosomething(ctx):
	print("hello hi")
	print("xxx aaa")
	print(ctx.path.ant_glob('*.cpp'))
	print('→ prefix is ' + ctx.options.prefix)
	print('→ the value of foo is %s' % ctx.options)

def configure(conf):
	conf.load('compiler_cxx boost')
	USED_BOOST_LIBS = ['locale']

	if 'PKG_CONFIG_PATH' not in os.environ:
		os.environ['PKG_CONFIG_PATH'] = Utils.subst_vars('/usr/local/bin/pkgconfig', conf.env)
	conf.check_cfg(package='libndn-cxx', args=['--cflags', '--libs'],
				   uselib_store='NDN_CXX', mandatory=True)

	conf.check(header_name='stdio.h', features='cxx cxxprogram', mandatory=False)
	conf.check_boost(lib=USED_BOOST_LIBS, mandatory=True, mt=True)

def build(bld):
	bld(target='mylib-object',
		name='mylib-object',
		source='a.cpp', excl=['mutex_example.cpp'],
		includes='.',
		export_includes='.',
		features=['cxx'],
		cxxflags = ['-std=c++11','-pthread'],
		)
	#bld.shlib(source='a.cpp', target='mylib2', vnum='9.8.7', cnum='9.8')
	#bld.shlib(source='a.cpp', target='mylib3')
	bld(target='app',
		name='app',
		source='mutex_example.cpp',
		includes='.',
		features=['cxx','cxxprogram'],
		cxxflags=['-std=c++11', '-pthread'],
		use='NDN_CXX BOOST mylib-object',
		)
	#bld.stlib(target='mylib', source='a.cpp')

	if bld.cmd != 'clean':
		from waflib import Logs
		bld.logger = Logs.make_logger('test.log', 'build') # just to get a clean output
		bld.check(header_name='sadlib.h', features='cxx cxxprogram', mandatory=False)
		bld.logger = None
