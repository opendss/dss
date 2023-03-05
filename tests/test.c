#include <criterion/criterion.h>
#include "libengine/hello.h"

Test(hello, hi) {
    hello();
    cr_assert_eq(1, 1);
}