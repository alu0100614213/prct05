# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

 def test_suma
      assert_equal([5, 2], Fraccion.new(1,2).suma(2,1))		# (1/2) + (2/1) = (5/2)
      assert_equal([23, 20], Fraccion.new(3,4).suma(2,5)) 	# (3/4) + (2/5) = (23/20)
      assert_equal([3, 2], Fraccion.new(1,1).suma(2,4))     # (1/1) + (2/4) = (3/2)
      assert_equal([17, 2], Fraccion.new(3,1).suma(11,2))  	# (3/1) + (11/2) = (17/2)
   end

   def test_resta
      assert_equal([-3, 2], Fraccion.new(1,2).resta(2,1))  	# (1/2) - (2/1) = (-3/2)
      assert_equal([7, 20], Fraccion.new(3,4).resta(2,5)) 	# (3/4) - (2/5) = (7/20)
      assert_equal([1, 2], Fraccion.new(1,1).resta(2,4))   	# (1/1) - (2/4) = (1/2)
      assert_equal([-5, 2], Fraccion.new(3,1).resta(11,2)) 	# (3/1) - (11/2) = (-5/2)
   end

   def test_producto
      assert_equal([1, 1], Fraccion.new(1,2).producto(2,1))		# (1/2) * (2/1) = (1/1)
      assert_equal([3, 10], Fraccion.new(3,4).producto(2,5))	# (3/4) * (2/5) = (3/10)
      assert_equal([1, 2], Fraccion.new(1,1).producto(2,4))	 	# (1/1) * (2/4) = (1/2)
      assert_equal([33, 2], Fraccion.new(3,1).producto(11,2))   # (3/1) * (11/2) = (33/2)
   end

   def test_division
      assert_equal([1, 4], Fraccion.new(1,2).division(2,1))   	# (1/2) / (2/1) = (1/4)
      assert_equal([15, 8], Fraccion.new(3,4).division(2,5)) 	# (3/4) / (2/5) = (15/8)
      assert_equal([2, 1], Fraccion.new(1,1).division(2,4))     # (1/1) / (2/4) = (2/1)
      assert_equal([6, 11], Fraccion.new(3,1).division(11,2)) 	# (3/1) / (11/2) = (6/11)
   end

end
