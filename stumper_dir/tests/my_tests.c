#include <criterion/criterion.h>
#include <criterion/redirect.h>
#include "my_str.h"

// proto of the main function to test it

void redirect_all_std(void)
{
    cr_redirect_stdout();
    cr_redirect_stderr();
}

Test(__main_function__, simple_string, .init = redirect_all_std)
{

}
