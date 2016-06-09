require 'docx'

def from_file_to_array(filename)

  doc = Docx::Document.open(filename)

  first_table = doc.tables[0]
  
  i=0
  array_b=[]
  while i<first_table.row_count do
    j=0
    array_a=[]
    while j<first_table.column_count do
      array_a.push(first_table.rows[i].cells[j].text)
      j+=1
    end
      array_b.push(array_a)
      i+=1
  end

  output_file = File.open("./results.txt", 'w')
  array_b.each {|line|
    output_file.puts line
    output_file.puts '\n'
  }

end


from_file_to_array('tables.docx')
