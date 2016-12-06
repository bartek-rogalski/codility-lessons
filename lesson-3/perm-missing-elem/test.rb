require './perm_missing_elem.rb'
require 'minitest/autorun'
include PermMissingElem

describe PermMissingElem do

  it 'returns missing element' do
    a = [2, 3, 1, 5]
    missing_element = 4
    expect(solution(a)).must_equal missing_element
  end

    it 'returns the biggest element if missing' do
    a = [2, 3, 1, 4]
    missing_element = 5
    expect(solution(a)).must_equal missing_element
  end
end
