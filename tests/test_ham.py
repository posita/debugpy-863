from spam.ham import return_one


def test_return_one() -> None:
    expected = "one"
    actual = return_one()
    assert actual == expected
