#include "main.hpp"

void puts(message) { std::cout << message << std::endl; }

int main(void)
{
	int state_code = 0;
	Gamestate gamestate();

	while (state_code != -1)
	{
		state_code = gamestate.run_frame();

	}
}