#hideall
content = [
  (title="Automata Theory And Information-Theoratic Models", content="### **The ground work**
  It starts with Turing the founding father of computer science's work led first to the creation of a kind of computing element closer to propositional logic. And then Kleene (1951) and (1956) developed finite state automata and regular expressions.
  
  Shannon (1948) then applied probabilistic models of discrete Markov processes to automata for language (continued). ")
  # (title="CEO & Founder", content="Phasellus eget enim eu lectus faucibus vestibulum")
  ] 

"@@cards @@column" |> println 
for c in content 
  """
  @@row
    \\card{$(c.title)}{$(c.content)} 
  @@
  ---
  """ |> println
end
println("@@ @@") # end of cards + row 