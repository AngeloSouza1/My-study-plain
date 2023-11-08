
require "fibonacci_search"
include FibonacciSearch
RSpec.describe FibonacciSearch do
  it "encontra o elemento no início do array" do
    arr = [10, 22, 35, 40, 45, 50, 80, 82, 85, 90, 100, 235]
    n = arr.length
    x = 10
    expect(fib_monaccian_search(arr, x, n)).to eq(0)
  end

  it "encontra o elemento no meio do array" do
    arr = [10, 22, 35, 40, 45, 50, 80, 82, 85, 90, 100, 235]
    n = arr.length
    x = 50
    expect(fib_monaccian_search(arr, x, n)).to eq(5)
  end

  it "encontra o elemento no final do array" do
    arr = [10, 22, 35, 40, 45, 50, 80, 82, 85, 90, 100, 235]
    n = arr.length
    x = 235
    expect(fib_monaccian_search(arr, x, n)).to eq(11)
  end

  it "lida com um elemento ausente" do
    arr = [10, 22, 35, 40, 45, 50, 80, 82, 85, 90, 100, 235]
    n = arr.length
    x = 30
    expect(fib_monaccian_search(arr, x, n)).to eq(-1)
  end

  it "lida com um array vazio" do
    arr = []
    n = arr.length
    x = 42
    expect(fib_monaccian_search(arr, x, n)).to eq(-1)
  end
end
