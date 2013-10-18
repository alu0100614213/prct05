# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion

	def initialize (*args)
		i=gcd(args[0],args[1])#se seleccionan los dos argumentos que se pasas
		@a=args[0]/i 
		@b=args[1]/i 
	end
	
	def to_s #funcion de pasar a string
		"#{@a}/#{@b}"
	end
	
	def suma(*args)
		x, y = min(args[0],args[1])
		if (@b == y) 
			@a += x
		else 
			den = gcm(@b,y)
			num = ((den / @b) * @a) + ((den / y) * x)
			@a, @b = min(num, den)
		end

		return @a, @b
	end
	
	def resta (*args)
		x, y = min(args[0],args[1])
		if (@b == y) 
			@a += x
		else 
			den = gcm(@b,y)
			num = ((den / @b) * @a) - ((den / y) * x)
			@a, @b = min(num, den)
		end
		return @a, @b
	end
	
	def producto (*args)
		x, y = min(args[0],args[1])
		@a, @b = min(@a * x, @b * y)

		return @a, @b	
	end
	
	def division (*args)
		x, y = min(args[0],args[1])
		@a, @b = min(@a / x, @b / y)

		return @a, @b	
	end
	
	def min(m,n)
		i=gcd(m,n)
		m=m/i
		n=n/i
		return m,n
	end
	
	def gcm(u, v)
   	u, y = u.abs, v.abs
   
   	(u / gcd(u,v)) * v
	end
end
