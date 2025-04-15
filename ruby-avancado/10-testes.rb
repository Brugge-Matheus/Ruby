require "minitest/autorun"

def sum(a, b)
  a + b
end

def palindromo?(word)
  word.downcase == word.downcase.reverse
end

class TestMathematics < Minitest::Test
  def test_sum_method
    assert_equal(5, sum(3, 2)) # Define um valor esperado e passa o metodo que ira retornar esse valor
  end

  def test_sum_method_again
    assert_equal(12, sum(5, 7))
  end
end

class TestPalindromo < Minitest::Test
  def test_palindromo_method
    assert_equal(true, palindromo?("ovo"))
    assert_equal(true, palindromo?("ame a ema"))
    assert_equal(false, palindromo?("ola"))
  end
end
