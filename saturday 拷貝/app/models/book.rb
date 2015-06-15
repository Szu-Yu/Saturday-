class Book < ActiveRecord::Base
	self.table_name= "a05b01_paxdata"

def self.show_all
	
query = <<-SQL

select Pax_Key as output, Tour_Type as datacount from a05b01_paxdata where Tour_Code LIKE 'A%' LIMIT 30;
SQL
data=self.find_by_sql(query)

end


def self.show_region_all
	
query = <<-SQL

select Region_Name as output, count(*) as datacount from a05b01_paxdata group by Region_Name;
SQL
data=self.find_by_sql(query)
data.map{|d|[d.output,d.datacount]}
end

def self.show_region_male
	
query = <<-SQL

select Region_Name as output, count(*) as datacount from a05b01_paxdata where Pax_Gender="男" group by Region_Name;
SQL
data=self.find_by_sql(query)
data.map{|d|[d.output,d.datacount]}
end



def self.show_region_female
	
query = <<-SQL

select Region_Name as output, count(*) as datacount from a05b01_paxdata where Pax_Gender="女" group by Region_Name;
SQL
data=self.find_by_sql(query)
data.map{|d|[d.output,d.datacount]}
end

def self.show_region_1_20
	
query = <<-SQL

select Region_Name as output, count(*) as datacount from a05b01_paxdata where Pax_Age between 1 and 20 group by Region_Name;
SQL
data=self.find_by_sql(query)
data.map{|d|[d.output,d.datacount]}
end

def self.show_region_21_40
	
query = <<-SQL

select Region_Name as output, count(*) as datacount from a05b01_paxdata where Pax_Age between 21 and 40 group by Region_Name;
SQL
data=self.find_by_sql(query)
data.map{|d|[d.output,d.datacount]}
end

def self.show_region_41_60
	
query = <<-SQL

select Region_Name as output, count(*) as datacount from a05b01_paxdata where Pax_Age between 41 and 60 group by Region_Name;
SQL
data=self.find_by_sql(query)
data.map{|d|[d.output,d.datacount]}
end

def self.show_region_61_80
	
query = <<-SQL

select Region_Name as output, count(*) as datacount from a05b01_paxdata where Pax_Age between 61 and 80 group by Region_Name;
SQL
data=self.find_by_sql(query)
data.map{|d|[d.output,d.datacount]}
end

def self.show_region_81_100
	
query = <<-SQL

select Region_Name as output, count(*) as datacount from a05b01_paxdata where Pax_Age between 81 and 100 group by Region_Name;
SQL
data=self.find_by_sql(query)
data.map{|d|[d.output,d.datacount]}
end

def self.show_date_all
	
query = <<-SQL

select substring(Tour_Date,6,2) as output, count(*) as datacount from a05b01_paxdata group by substring(Tour_Date,6,2);
SQL
data=self.find_by_sql(query)
data.map{|d|[d.output+'月',d.datacount]}
end


def self.show_date_male
	
query = <<-SQL

select substring(Tour_Date,6,2) as output, count(*) as datacount from a05b01_paxdata where Pax_Gender="男" group by substring(Tour_Date,6,2);
SQL
data=self.find_by_sql(query)
data.map{|d|[d.output+'月',d.datacount]}
end

def self.show_date_female
	
query = <<-SQL

select SUBSTRING(Tour_Date,6,2) as output, count(*) as datacount from a05b01_paxdata where Pax_Gender="女" group by SUBSTRING(Tour_Date,6,2);
SQL
data=self.find_by_sql(query)
data.map{|d|[d.output+'月',d.datacount]}
end

def self.show_date_1_20
	
query = <<-SQL

select SUBSTRING(Tour_Date, 6, 2 ) as output, count(*) as datacount from a05b01_paxdata where Pax_Age between 1 and 20 group by SUBSTRING( Tour_Date, 6, 2 );
SQL
data=self.find_by_sql(query)
data.map{|d|[d.output+'歲',d.datacount]}
end

def self.show_date_21_40
	
query = <<-SQL

select SUBSTRING( Tour_Date, 6, 2 ) as output, count(*) as datacount from a05b01_paxdata where Pax_Age between 21 and 40 group by SUBSTRING( Tour_Date, 6, 2 );
SQL
data=self.find_by_sql(query)
data.map{|d|[d.output+'歲',d.datacount]}
end

def self.show_date_41_60
	
query = <<-SQL

select SUBSTRING( Tour_Date, 6, 2 ) as output, count(*) as datacount from a05b01_paxdata where Pax_Age between 41 and 60 group by SUBSTRING ( Tour_Date, 6, 2 );
SQL
data=self.find_by_sql(query)
data.map{|d|[d.output+'歲',d.datacount]}
end

def self.show_date_61_80
	
query = <<-SQL

select SUBSTRING( Tour_Date+'歲', 6, 2 ) as output, count(*) as datacount from a05b01_paxdata where Pax_Age between 61 and 80 group by SUBSTRING ( Tour_Date, 6, 2 );
SQL
data=self.find_by_sql(query)
data.map{|d|[d.output,d.datacount]}
end

def self.show_date_81_100
	
query = <<-SQL

select SUBSTRING( Tour_Date, 6, 2 ) as output, count(*) as datacount from a05b01_paxdata where Pax_Age between 81 and 100 group by SUBSTRING ( Tour_Date, 6, 2 );
SQL
data=self.find_by_sql(query)
data.map{|d|[d.output+'歲',d.datacount]}
end

def self.show_type_all
	
query = <<-SQL

select Tour_Type as output, count(*) as datacount from a05b01_paxdata group by Tour_Type;
SQL
data=self.find_by_sql(query)
data.map{|d|[d.output,d.datacount]}
end



def self.show_type_male
	
query = <<-SQL

select Tour_Type as output, count(*) as datacount from a05b01_paxdata where Pax_Gender="男" group by Tour_Type;
SQL
data=self.find_by_sql(query)
data.map{|d|[d.output,d.datacount]}
end

def self.show_type_female
	
query = <<-SQL

select Tour_Type as output, count(*) as datacount from a05b01_paxdata where Pax_Gender="女" group by Tour_Type;
SQL
data=self.find_by_sql(query)
data.map{|d|[d.output,d.datacount]}
end

def self.show_type_1_20
	
query = <<-SQL

select Tour_Type as output, count(*) as datacount from a05b01_paxdata where Pax_Age between 1 and 20 group by Tour_Type;
SQL
data=self.find_by_sql(query)
data.map{|d|[d.output,d.datacount]}
end

def self.show_type_21_40
	
query = <<-SQL

select Tour_Type as output, count(*) as datacount from a05b01_paxdata where Pax_Age between 21 and 40 group by Tour_Type;
SQL
data=self.find_by_sql(query)
data.map{|d|[d.output,d.datacount]}
end

def self.show_type_41_60
	
query = <<-SQL

select Tour_Type as output, count(*) as datacount from a05b01_paxdata where Pax_Age between 41 and 60 group by Tour_Type;
SQL
data=self.find_by_sql(query)
data.map{|d|[d.output,d.datacount]}
end

def self.show_type_61_80
	
query = <<-SQL

select Tour_Type as output, count(*) as datacount from a05b01_paxdata where Pax_Age between 61 and 80 group by Tour_Type;
SQL
data=self.find_by_sql(query)
data.map{|d|[d.output,d.datacount]}
end

def self.show_type_81_100
	
query = <<-SQL

select Tour_Type as output, count(*) as datacount from a05b01_paxdata where Pax_Age between 81 and 100 group by Tour_Type;
SQL
data=self.find_by_sql(query)
data.map{|d|[d.output,d.datacount]}
end

end