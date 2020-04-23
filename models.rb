
$rom = ROM.container(:sql, 'sqlite:////'+Dir.pwd+'/database.sqlite') do |config|
  # define relations and commands here...

  config.relation(:Players) do
    schema(infer: true)
    def by_name(name)
      where(Name: name)
    end
  end

end


# rom.relations[:Players].by_name("Jane").to_a
