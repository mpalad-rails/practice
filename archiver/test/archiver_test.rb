require 'test/unit'
require_relative '../archiver.rb'

class ArchiverTest < Test::Unit::TestCase

  def setup
    @archive = Archiver.new
  end
  
  def test_archive_text
    result = @archive.archive_text( 'Yes it is Yes is it')
	assert_equal result[:words], [ 'Yes', 'it', 'is' ]
	assert_equal result[:indexes], [ 0, 1, 2, 0, 2, 1 ]
  end 
  
  def test_get_text
    text = 'Hey how are you? Hey are you ok?'
    result = @archive.archive_text( text )
	assert_equal text, @archive.get_text( result )
  end
end