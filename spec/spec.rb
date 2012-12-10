require "~/LPP/Pract8/lib/matrix.rb"

describe Matrix do

before :each do
	#@obj_1=Matrix.new(3,2,4)
	#@obj_2=Matrix.new(3,2,4)
	end

   it "Se deberia poder sumar dos matrices de enteros" do
	 
	(Matrix.new(3,2,4)+Matrix.new(3,2,4)).should==Matrix.new(3,2,8)
   end
 
  it "Se deberia poder sumar dos matrices de racionales" do
	(Matrix.new(3, 2, Fraccion.new(1, 2)) + Matrix.new(3, 2, Fraccion.new(1, 6))).should == Matrix.new(3, 2, Fraccion.new(8, 12))
  end
  it "Se debe poder multiplicar dos matrices de Enteros" do
	(Matrix.new(3, 2, 2) * Matrix.new(2, 3, 3)).should == Matrix.new(3, 3, 12)
  end 
  it "Se debe poder multiplicar dos matrices de Racionales" do
     (Matrix.new(3, 2, Fraccion.new(1, 2)) * Matrix.new(2, 3, Fraccion.new(3, 5))).should == Matrix.new(3, 3, Fraccion.new(6, 10))
  end

end
