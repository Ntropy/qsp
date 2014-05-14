LIBQSP_OPT="-D_UNICODE -DNOT_RUBY -DEXPORT"
LIBQSPCCFLAGS=-fPIC -shared $(LIBQSP_OPT) -s -O3 -Os
LIBQSP=libqsp.so

LIBQSPSRCS = \
	qsp/game.c \
	qsp/actions.c \
	qsp/bindings/android/android_callbacks.c \
	qsp/bindings/android/android_control.c \
	qsp/bindings/android/android_platform.c \
	qsp/bindings/default/default_callbacks.c \
	qsp/bindings/default/default_control.c \
	qsp/bindings/flash/flash_callbacks.c \
	qsp/bindings/flash/flash_control.c \
	qsp/bindings/flash/flash_platform.c \
	qsp/bindings/java/java_callbacks.c \
	qsp/bindings/java/java_control.c \
	qsp/bindings/java/java_platform.c \
	qsp/callbacks.c \
	qsp/codetools.c \
	qsp/coding.c \
	qsp/common.c \
	qsp/errors.c \
	qsp/locations.c \
	qsp/mathops.c \
	qsp/memwatch.c \
	qsp/menu.c \
	qsp/objects.c \
	qsp/onig/enc/ascii.c \
	qsp/onig/enc/cp1251.c \
	qsp/onig/enc/koi8_r.c \
	qsp/onig/enc/unicode.c \
	qsp/onig/enc/utf16_be.c \
	qsp/onig/enc/utf16_le.c \
	qsp/onig/enc/utf32_be.c \
	qsp/onig/enc/utf32_le.c \
	qsp/onig/regcomp.c \
	qsp/onig/regenc.c \
	qsp/onig/regerror.c \
	qsp/onig/regexec.c \
	qsp/onig/regparse.c \
	qsp/onig/regsyntax.c \
	qsp/onig/regtrav.c \
	qsp/onig/regversion.c \
	qsp/onig/st.c \
	qsp/playlist.c \
	qsp/regexp.c \
	qsp/statements.c \
	qsp/text.c \
	qsp/time.c \
	qsp/towlower.c \
	qsp/towupper.c \
	qsp/variables.c \
	qsp/variant.c

all: $(LIBQSP)

$(LIBQSP): $(LIBQSPOBJ)
	$(CC) $(LIBQSPCCFLAGS) -o $(LIBQSP) $(LIBQSPSRCS)

clean:
	rm $(LIBQSP)
