class HomeController < ApplicationController
	def index
		if params[:gender].present? && params[:age].present? && params[:gender].present?
		@result='性別：'+params[:gender]+" 年齡："+params[:age]+"    "+params[:graph]+'圖';
		end
		/@g=Book.show_region_male/
		if params[:graph].present?
			if params[:graph]=='region'
				if params[:gender].present?
					if params[:gender]=='全部'&&params[:age]=='全部'
						@g=Book.show_region_all
					end
					if params[:gender]=='男'
						@g=Book.show_region_male
					end
					if params[:gender]=='女'
						@g=Book.show_region_female
					end
				end
				if params[:age].present?
					if params[:age]=='1~20'
						@g=Book.show_region_1_20
					end
					if params[:age]=='21~40'
						@g=Book.show_region_21_40
					end
					if params[:age]=='41~60'
						@g=Book.show_region_41_60
					end
					if params[:age]=='61~80'
						@g=Book.show_region_61_80
					end
					if params[:age]=='81~100'
						@g=Book.show_region_81_100
					end
				end
			end
			if params[:graph]=='month'
				if params[:gender].present?
					if params[:gender]=='全部'&&params[:age]=='全部'
						@g=Book.show_date_all
					end
					if params[:gender]=='男'
						@g=Book.show_date_male
					end
					if params[:gender]=='女'
						@g=Book.show_date_female
					end
				end
				if params[:age].present?
					if params[:age]=='1~20'
						@g=Book.show_date_1_20
					end
					if params[:age]=='21~40'
						@g=Book.show_date_21_40
					end
					if params[:age]=='41~60'
						@g=Book.show_date_41_60
					end
					if params[:age]=='61~80'
						@g=Book.show_date_61_80
					end
					if params[:age]=='81~100'
						@g=Book.show_date_81_100
					end
				end
			end
			if params[:graph]=='type'
				if params[:gender].present?
					if params[:gender]=='全部'&&params[:age]=='全部'
						@g=Book.show_type_all
					end
					if params[:gender]=='男'
						@g=Book.show_type_male
					end
					if params[:gender]=='女'
						@g=Book.show_type_female
					end
				end
				if params[:age].present?
					if params[:age]=='1~20'
						@g=Book.show_type_1_20
					end
					if params[:age]=='21~40'
						@g=Book.show_type_21_40
					end
					if params[:age]=='41~60'
						@g=Book.show_type_41_60
					end
					if params[:age]=='61~80'
						@g=Book.show_type_61_80
					end
					if params[:age]=='81~100'
						@g=Book.show_type_81_100
					end
				end
			end
		end
	end	


end