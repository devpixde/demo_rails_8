require "test_helper"

class WolpertingerTest < ActiveSupport::TestCase

  test "Name must be present, 3-30 characters long" do
    valid_wolpertinger = Wolpertinger.create(name: 'Ingo', age: 20, color: :brown)
    assert valid_wolpertinger.valid?

    valid_wolpertinger2 = Wolpertinger.create(name: 'A' * 30, age: 20, color: :brown)
    assert valid_wolpertinger2.valid?

    invalid_wolpertinger1 = Wolpertinger.create(name: '', age: 20, color: :brown)
    assert invalid_wolpertinger1.invalid?

    invalid_wolpertinger2 = Wolpertinger.create(name: 'A' * 31, age: 20, color: :brown)
    assert invalid_wolpertinger2.invalid?
  end

  test "Age must be present, 0-200" do
    valid_wolpertinger = Wolpertinger.create(name: 'Ingo', age: 20, color: :brown)
    assert valid_wolpertinger.valid?

    valid_wolpertinger2 = Wolpertinger.create(name: 'Ingo', age: 200, color: :brown)
    assert valid_wolpertinger2.valid?

    invalid_wolpertinger1 = Wolpertinger.create(name: 'Ingo', age: 201, color: :brown)
    assert invalid_wolpertinger1.invalid?

    invalid_wolpertinger2 = Wolpertinger.create(name: 'Ingo', age: -1, color: :brown)
    assert invalid_wolpertinger2.invalid?
  end

  test "Color must be present and brown|red|green|pink" do
    valid_wolpertinger = Wolpertinger.create(name: 'Ingo', age: 20, color: :brown)
    assert valid_wolpertinger.valid?

    valid_wolpertinger = Wolpertinger.create(name: 'Ingo', age: 20, color: :red)
    assert valid_wolpertinger.valid?

    valid_wolpertinger = Wolpertinger.create(name: 'Ingo', age: 20, color: :green)
    assert valid_wolpertinger.valid?

    valid_wolpertinger = Wolpertinger.create(name: 'Ingo', age: 20, color: :pink)
    assert valid_wolpertinger.valid?

    invalid_wolpertinger = Wolpertinger.create(name: 'Ingo', age: 20, color: :yellow)
    assert invalid_wolpertinger.invalid?

    invalid_wolpertinger = Wolpertinger.create(name: 'Ingo', age: 20, color: '')
    assert invalid_wolpertinger.invalid?
  end

end
