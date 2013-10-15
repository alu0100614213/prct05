#a,b numeros enteros no nulos

def mcd(a,b)
  d = a.abs, b.abs #[a.abs, b.abs]
    while d.min != 0
      d = d.min, d.max%d.min
    end
  return d.max
end 
puts mcd(6,3)
