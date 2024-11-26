package test

import "core:fmt"
import "core:math"
import "core:sys/windows"
import "core:time"
print :: fmt.println

main :: proc() {

	windows.SetConsoleOutputCP(windows.CODEPAGE.UTF8)
	start: time.Time = time.now()

	// code goes here
	print(isHarshad(18))
	print(isHarshad(1729))
	print(isHarshad(31))
	print(isHarshad(45))

	elapsed: time.Duration = time.since(start)
	print("Odin took:", elapsed)

	// OUTPUT:
	// true
	// true
	// false
	// true
	// Odin took: 81µs
}


isHarshad :: proc(n: int) -> bool {
	_n := n
	total := 0
	div, mod := 1_000, 0

	for div > 0 {
		div, mod = math.divmod(_n, 10)
		total += mod
		_n = div
	}

	_, mod_res := math.divmod(n, total)
	if mod_res == 0 do return true

	return false
}
