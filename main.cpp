#include "main.hpp"

int main(void)
{
	int state_code = 0;
	Gamestate gamestate();

	while (state_code != -1)
	{
		state_code = gamestate.run_frame();

	}
}