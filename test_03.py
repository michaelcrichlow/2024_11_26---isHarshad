def isHarshad(n: int) -> bool:
    _n = n
    total = 0
    div, mod = 1_000, 0

    while div > 0:
        div, mod = divmod(_n, 10)
        total += mod
        _n = div

    _, mod_res = divmod(n, total)
    if mod_res == 0:
        return True

    return False


def main() -> None:
    print(isHarshad(18))
    print(isHarshad(1729))
    print(isHarshad(31))
    print(isHarshad(45))


if __name__ == '__main__':
    main()

# isHarshad(18) => true
