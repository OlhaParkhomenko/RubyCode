require 'docx'
require 'erb'

def from_table_to_array(filename)

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

  output_file = File.open("./results.txt", 'w+')
  array_b.each {|line|
    output_file.puts line
    output_file.puts '\n'
  }

end

def from_array_to_table(array)
  @array = array

  @table_row=@array.count
  table_column=@array[0].count

  template = %{
    <html>
      <head>
        <title>From array to table</title>
      </head>
      <body>
        <table>
          <% @array[0].each do |f| %>
            <th><%= f %></th>
          <% end %> 
          <% i=1 %>
          <% while i<@table_row %>
            <tr>
              <% @array[i].each do |j| %>
                <td><%= j %></td>
              <% end %> 
            </tr>
            <% i+=1 %>
          <% end %>  
        </table>
      </body>
    </html>
  }

  rhtml = ERB.new(template).run

  #file_table = File.open('output_table.html','w+')

end


from_table_to_array('tables.docx')
from_array_to_table([['value00', 'value01', 'value02'], ['value10', 'value11', 'value12'],
  ['value20', 'value21','value22'], ['value30','vlue31','value32']])

