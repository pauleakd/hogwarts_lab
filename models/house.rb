
require_relative('../db/sql_runner')

class House
attr_accessor :house_name, :logo_url, :id

  def initialize(options)
    @house_name = options["house_name"]
    @logo_url = options["logo_url"]
    @id = options["id"]
  end


  def save()
    sql = "INSERT INTO houses (house_name, logo_url) VALUES ('#{@house_name}', '#{@logo_url}') RETURNING *"
    house_data = SqlRunner.run(sql)
    @id = house_data.first()['id'].to_i
  end

  def self.find_all()
    sql = "SELECT * FROM houses"
    houses = SqlRunner.run(sql)
    return houses.map{|house| House.new(house)}
  end

  def self.find(id)
    sql = "SELECT * FROM houses WHERE id = #{id}"
    house = SqlRunner.run(sql)
    return House.new(house.first)
  end

  def self.delete_all
    sql = "DELETE FROM houses"
    SqlRunner.run(sql)
  end





end
