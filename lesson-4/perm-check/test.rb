require './perm_check.rb'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

include PermCheck

describe PermCheck do
  it 'correctly recognizes missing values' do
    a = [2, 5, 1, 4]
    is_perm = 0
    expect(solution(a)).must_equal is_perm
  end

  it 'correctly recognizes permutation when passed one' do
    a = [5, 2, 1, 4, 3, 6]
    is_perm = 1
    expect(solution(a)).must_equal is_perm
  end

  it 'correctly handles array with non-unique values' do
    a = [1, 2, 5, 1, 4]
    is_perm = 0
    expect(solution(a)).must_equal is_perm
  end

  it 'correctly handles single-element array' do
    a = [5]
    is_perm = 0
    expect(solution(a)).must_equal is_perm
  end
end
