OBJ_UNICORN=debug_unicorn.o

libname=-shared -o $1.${LIBEXT}

STATIC_OBJ+=${OBJ_UNICORN}
TARGET_UNICORN=debug_unicorn.${LIBEXT}

ALL_TARGETS+=${TARGET_UNICORN}

CFLAGS+=${R2_CFLAGS} -g
CFLAGS+=-DHAVE_PKGCFG_UNICORN=${HAVE_PKGCFG_UNICORN}
CFLAGS+=${UC_CFLAGS}

${TARGET_UNICORN}: ${OBJ_UNICORN}
	${CC} ${OBJ_UNICORN} $(call libname,debug_unicorn) ${CFLAGS} \
		${UC_CFLAGS} ${UC_LDFLAGS} \
		${R2_CFLAGS} ${R2_LDFLAGS}
