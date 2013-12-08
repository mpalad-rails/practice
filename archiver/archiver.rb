
class Archiver

  def archive_text( text )
    archive = { :words => [], :indexes => [] }
	text.split.each do |word|
	  pos = archive[:words].index(word)
	  unless pos
	    archive[:words].push(word)
		pos = archive[:words].size - 1
	  end
	  
	  archive[:indexes].push(pos)
	end
	
	archive
  end
  
  def get_text( archive )
    text = []  
  
    archive[:indexes].each do |index|
	  text.push(archive[:words][index])
	end
	
	text.join(' ')
  end
end