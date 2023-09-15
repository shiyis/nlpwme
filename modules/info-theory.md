<!-- # Setup

## Running the notebooks locally

To run the [notebooks](https://github.com/dataflowr/notebooks) locally, we recommend the following procedure:

- First clone the GitHub repository containing the notebooks. The following command will create a directory `notebooks` with all the files from the repository inside:
```
$ git clone https://github.com/dataflowr/notebooks.git
```

- Then, create a [virtual environment](https://docs.python.org/3/tutorial/venv.html): the following command will create a directory `dldiy` and also create directories inside it (so you might want to create this directory inside `/notebooks`)
```
$ python3 -m venv dldiy
```
- Activate the virtual environment:
```
$ source dldiy/bin/activate
```
- In order to be able to [use this virtual environment with your jupyter notebook](https://anbasile.github.io/posts/2017-06-25-jupyter-venv/), you need to add a kernel. Inside your environment, install first `ipykernel`
```
(dldiy)$ pip install ipykernel
(dldiy)$ ipython kernel install --user --name=dldiy
```
- Now, you need all the relevant packages in your virtual environment. 
```
(dldiy)$ cd notebooks
(dldiy)/notebooks$ pip install -r requirements.txt
```
- You ae all set! If you launch `jupyter notebook`, you should be able to change the kernel to `dldiy`.

### tl;dr

```
$ git clone https://github.com/dataflowr/notebooks.git
$ python3 -m venv dldiy
$ source dldiy/bin/activate
(dldiy)$ pip install ipykernel
(dldiy)$ ipython kernel install --user --name=dldiy
(dldiy)$ cd notebooks
(dldiy)/notebooks$ pip install -r requirements.txt
(dldiy)/notebooks$ jupyter notebook
``` -->



# Introduction to Information Theory


### Classical Thermodynamics 
Classical thermodynamics is the description of the states of thermodynamic systems at near-equilibrium, that uses macroscopic, measurable properties. It is used to model exchanges of energy, work and heat based on the laws of thermodynamics. The `qualifier classical reflects the fact that it represents the first level of understanding of the subject` as it developed in the 19th century and describes the changes of a system in terms of macroscopic empirical (large scale, and measurable) parameters. A microscopic interpretation of these concepts was later provided by the development of `statistical mechanics`.



### The First Law of Thermodynamics 

According to Wiki-pedia, is a formulation of the law of [conservation of energy](https://en.wikipedia.org/wiki/Conservation_of_energy), adapted for [thermodynamic processes](https://en.wikipedia.org/wiki/Thermodynamic_process). A simple formulation is: "_The total energy in a system remains constant, although it may be converted from one form to another._" Another common phrasing is that "_energy can neither be created nor destroyed_".

The first law for a thermodynamic process is often formulated as 
$$ \Delta U = Q - W $$ 

where `ΔU` denotes the change in the internal energy of a [closed system](https://en.wikipedia.org/wiki/Thermodynamic_system#Closed_system)(for which heat or work through the system boundary are possible, but matter transfer is not possible), `Q` denotes the energy supplied to the system as heat, and `W` is the thermodynamic work done _by_ the system on its surroundngs. 

An equivalent statement is that [perpetual motion machines](https://en.wikipedia.org/wiki/Perpetual_motion_machines) of the first kind are impossible; work `W` done by a system on its surroundings requires that the system's internal energy `U` decrease or be consumed, so that the amount of internal energy lost by that work must be resupplied as heat `Q` by an external energy source or as work by an external machine acting on the system (so that `U` is recovered) to make the system work continuously. 

### Thermodynamics of Information Theory 

According to Wiki-pedia, or also known as [statistical mechanics](https://en.wikipedia.org/wiki/Statistical_mechanics), also known as statistical thermodynamics, emerged with the development of atomic and molecular theories in the late 19th century and early 20th century, and supplemented classcial thermodynamics with an interpretation of the microscopic interactions between individual particles or quantum-mechanical states. 

The field relates the microscopic properties of individual atoms and molecules to the macroscopic, bulk properties of materials that can be observed on the human scale, thereby explaining classical thermodynamics as a natural result of statistics, classical mechanics, and quantum theory at the microscopic level. 

### Why Is Classical Thermodynamics Important To The Discussion Of Information Theory? 

With some digging, it comes down to statistics and the calculation for any probability distritbution (if the "message" is taken to be that the event `i` which had probability $p_{i}$ occurred, out of the space of the events possible); the information entropy `H` can be caculated for any probability distribution, while the thermodynamic entropy `S` refers to the termodynamic probability $p_{i}$ specifically. 

Furthermore, the prescription to find the equilibrium distributions of statistical mechanics—such as the Boltzmann distribution—by maximising the Gibbs entropy subject to appropriate constraints (the Gibbs algorithm) can be seen as something not unique to thermodynamics, but as a principle of general relevance in statistical inference, if it is desired to find a maximally uninformative probability distribution, subject to certain constraints on its averages. (These perspectives are explored further in the article Maximum Entropy Thermodynamics.)

The Shannon entropy in information theory is sometimes expressed in units of bits per symbol. The physical entropy may be on a "per quantity" basis `h` which is called "intensive" entropy instead of the usual total entropy which is called "extensive" entropy. The "shannons" of a message `Η` are its total "extensive" information entropy and is `h` times the number of bits in the message.

A direct and physically real relationship between `h` and `S` can be found by assigning a symbol to each microstate that occurs _per mole, kilogram, volume, or particle_ of a homogeneous substance, then calculating the `'h'` of these symbols. By theory or by observation, the symbols (microstates) will occur with different probabilities and this will determine `h`. If there are N moles, kilograms, volumes, or particles of the unit substance, the relationship between h (in bits per unit substance) and physical extensive entropy in nats is:
<!-- ⁡
{{<details title="Between Entropy In Physics and Information or AKA Information Is Physical" open="true">}} -->
Moreover, a direct connection can be made between the two. If the probabilities in question are the thermodynamic probabilities $p_{i}$: the (reduced) Gibbs entropy `σ` can then be seen as simply _the amount of Shannon information needed to define the detailed microscopic state of the system, given its macroscopic description._ Or, in the words of G. N. Lewis writing about chemical entropy in 1930, "Gain in entropy always means loss of information, and nothing more". To be more concrete, in the discrete case using _base two logarithms_, the reduced Gibbs entropy is equal to _the average of the minimum number of yes–no questions needed to be answered in order to fully specify the microstate_, given that we know the macrostate. Materialized in equation goes as

$$E = Q = Tk_{B}\text{ln{(2)}}Nh$$

where `ln(2)` is the conversion factor from `base 2` of Shannon entropy to the natural `base e` of physical entropy. `Nh` is the amount of information in bits needed to describe the state of a physical system with entropy `S`. Landauer's principle demonstrates the reality of this by stating the minimum energy `E` required (and therefore heat `Q` generated) by _an ideally efficient memory change or logic operation_ by irreversibly erasing or merging `Nh` bits of information will be `S` times the temperature which is where `h` is in informational bits and `E` and `Q` are in physical Joules. This has been experimentally confirmed, according to [this article](https://en.wikipedia.org/wiki/Entropy_in_thermodynamics_and_information_theory#cite_note-berut-4).

<!-- {{</details>}} -->

Here, temperature is a measure of the average kinetic energy per particle in an ideal gas (kelvins = joules/kB) so the `J/K` units of `kb` is dimensionless (joule/joule). `kb` is the conversion factor from energy in kelvins to joules for an ideal gas. If kinetic energy measurements per particle of an ideal gas were expressed as joules instead of kelvins, `kb` in the above equations would be replaced by `3/2`. This shows that `S` is a true statistical measure of microstates that does not have a fundamental physical unit other than the units of information, in this case nats, which is just a statement of which logarithm base was chosen by convention.

### When Is Entropy Equivalent To Classical Thermodynamics?  

- The probability density function is proportional to some function of  the [ensemble parameters](http://scikit-learn.org/stable/modules/ensemble.html) and random variables.
- Thermodynamic state functions are described by _ensemble averages of random variables_.
- At infinite temperature, all the microstates have the same probability.

In his work _Mathematical Exercises_, he started a four part journey on learning mathematics. One of them was to practice the law of probabilities. In discovering the flow mechanism of water, he established the early works and research of calculus and differential equation. 

### Daniel Bernoulli 

A very important person in need of discussion if we have studied probability and statistics. We could remember him for his applications mathematics to mechanics, especially fluid mechanics, and for his pioneer work in probability and statistics. His name is commemorated in the Bernoulli's principle, a particular example of the conservation of energy.

<!-- {{<hint title="Random fun fact!">}} -->
Speaking of conservation of energy, which describes  the mathematics the mechanism underlying the operation of two important technologies of the 20the century: the carburetor and the airplane wing. 
<!-- {{</hint>}} -->

### Boltzmann Distribution 

In [statistical mechanics](https://en.wikipedia.org/wiki/Statistical_mechanics) and [mathematics](https://en.wikipedia.org/wiki/Mathematics), a Boltzmann distribution (also called Gibbs distribution) is a probability distribution or probability measure that gives the probability that a system will be in a certain state as a function of that state's energy and the temperature of the system. The distribution is expressed in the form:

$$p_i \propto \sigma exp(- \frac{\varepsilon_i}{kT})$$

where $p_i$ is the probability of the system being in state `i`, `exp` is the exponential function, $\varepsilon_i$ is the energy of that state, and a constant $kT$ of the distribution is the product of the Boltzmann constant $k$ and thermodynamic temperature $T$. The symbol $\propto$ denotes [proportionality](https://en.wikipedia.org/wiki/Proportionality_(mathematics)).

The term _system_ here has a wide meaning: it can range from a collection of 'sufficient number' of atoms or a single atom to a macroscopic system such as a [natural gas storage tank](https://en.wikipedia.org/wiki/Natural_gas_storage). Therefore the Boltzmann distribution can be used to solve a wide variety of problems. The distribution shows that states with lower probability of being occupied. 

The _ratio_ of probaility of two states is known as the Boltzmann factor and characteristically only depends on the states' energy difference. 

$$\frac{p_i}{p_j} = exp(\frac{\varepsilon_j - \varepsilon_i}{kT})$$

Illustrated in exponential probabiltiy density function as below, 

---
<!-- {{<figure src="/epd.svg" title="Boltzmann's distribution is an exponential distribution." height="480px" width="480px">}} -->

---

The Boltzmann distribution is named after Ludwig Boltzmann who first formulated it in 1868 during his studies of the statistical mechanics of gases in thermal equilibrium. Boltzmann's statistical work is borne out in his paper "_On the Relationship between the Second Fundamental Theorem of the Mechanical Theory of Heat and Probability Calculations Regarding the Conditions for Thermal Equilibrium_". The distribution was later investigated extensively, in its modern generic form, by Josiah Willard Gibbs in 1902.

The Boltzmann distribution should not be confused with the Maxwell–Boltzmann distribution or Maxwell-Boltzmann statistics. The Boltzmann distribution gives the probability that a system will be in a certain state as a function of that state's energy, while the Maxwell-Boltzmann distributions give the probabilities of particle speeds or energies in ideal gases. The distribution of energies in a one-dimensional gas however, does follow the Boltzmann distribution.


### Gaussian Normal Distribution and Random Variables

In statistics, a normal distribution or Gaussian distribution is a type of [continuous probability](https://en.wikipedia.org/wiki/Continuous_probability_distribution) for a [real-valued](https://en.wikipedia.org/wiki/Real_number) random variable. The general form of its probability density function is 

$$f(x) = \frac{1}{\sigma \sqrt{2 \pi}}e^{-\frac{1}{2} (\frac{x-\mu}{\sigma})^2}$$

The parameter $\sigma$ is the mean or expectation of the distribution (and also its median and mode), while the parameter $\sigma$ is its standard deviation. The variance of the distribution is $\sigma^{2}$. A random variable with a Gaussian idstribution is said to be normally distributed, and is called a normal deviate. 

Normal distributions are important in statistics and are often used in the natural and social sciences to represent real-valued random vairables whose distributions are not known. Their importance is partly due to the central limit theorem. It states that, under some conditions, the average of many samples(observations) of a random variable with finite mean and variance is itself a random vairable - whose distribution converges to a normal distribution as the number of sample increases. Therefore, physical quanitites that are expected to be the sum of many independent processes, such as measurement errors, often have distributions that are nearly normal.

### Gibbs Entropy 

The macroscopic state of a system is characterized by a distribution on the microstates. The entrpy of this distribution is given by the Gibbs entropy formula, named after J. Willard Gibbs. For a classical system (i.e. a collection of classical particles) with a discrete set of microstates, if $E_{i}$ is the energy of microstate _i_, and $p_{i}$ is the probability that it occurs during the system's fluctuations, then the entropy of the system is 

$$S = -k_{B} \sum_{i}p_{i}\text{ln}(p_{i})$$

The quantity $k_{B}$ is a phsyical constant known as Boltzmann's constant. The remaining factor of the euqation, the entire summation is dimensionless, since the value $p_{i}$ is a probability and therefore dimensionless, and the logarithm is to the basis of the dimensionless mathematical constant $e$. Hence the $\text{SI}$ derived unites on both side of the equation are same as heat capacity:

$$[S] = [k_{B}] = \frac{J}{K}$$

This definition remains meaningful even when the system is far away from equalibirium, either as an isolated system, or as a system in exchange with its surroundings. The set of microstates (with probability distribution) on which the sum is done is called a [statistical ensemble](https://en.wikipedia.org/wiki/Ensemble_(mathematical_physics)). Each type of statistical ensemble ([micro-canonical, canonical, grand-canonical](https://bingweb.binghamton.edu/~suzuki/ThermoStatFIles/3.11%20MC-C-GC%20ensemble%20s%20comparison.pdf), etc.) with the outside, varying from a completely isolated system to a system that can exchange one or more quantities with a reservoir, like energy, volume or molecules. In every ensemble, the equilibrium configuration of the system is dictated by the maximization of the entropy of the union of the system and its reservoir according to the [second law of thermodynamics](https://en.wikipedia.org/wiki/Second_law_of_thermodynamics) (see the statistical mechanics article).

Neglecting correlatons (or, more generally, statistical dependencies) between the states of individual particles will lead to an incorrect probability distribution on the microstates and hence to an overestimate of the entropy. Such correlations occur in any system with nontrivially interacting particles, that is, in all systems more complex than an [ideal gas](https://en.wikipedia.org/wiki/Ideal_gas). 

This `S` is almost universally called simply the _entropy_. It can also be called the statistical entropy or the thermodynamic entropy without changing the meaning. Note the above expression of the statistical entropy is a _discretized_ version of Shannon entropy. 

It has been shown that the Gibbs Entropy is equal to the classical "heat engine" entropy characterized by 
$$dS = \frac{\delta Q}{T} $$, and the generalized Boltzmann distribution is a sufficient and necessary condition for this equivalence. Furthermore, the Gibbs Entropy is the only entropy that is equivalent to the classical "heat engine" entropy under the following postulates:

    - The probability density function is proportional to some function of the ensemble parameters and random variables.
    - Thermodynamic state functions are described by ensemble averages of random variables.
    - At infinite temperature, all the microstates have the same probability.

### Maximum Entropy Thermodynamics 

Similar to Shannon's entropy formula, central to MaxEnt thesis is the [priciple of maximum entropy](https://en.wikipedia.org/wiki/Principle_of_maximum_entropy). It demands as given some partly specified model and some specified data related to the model. It selects a preferred probability distribution to represent the model. The given ata state "testable information" about the probability distribution, for example particular expectation values, but are not in themselves sufficient to uniquely determine it. The principle states that one should prefer the distribution which maximizes the [Shannon information entropy](https://en.wikipedia.org/wiki/Shannon_entropy),


$$S_{i} = -\sum_{i} p_i \text{ln} p_i$$

This is known as the [Gibbs algorithm](https://en.wikipedia.org/wiki/Gibbs_algorithm), having been introduced by J Willard Gibbs in 1878, to set up statistical ensembles to predict the properties of thermodynamic sytems at equalibrium. It is the cornertstone of the statistical mechanical analysis of the thermodynamic properties of equilibruium systems (see [partition function](https://en.wikipedia.org/wiki/Partition_function_(statistical_mechanics))).

A direct connection is thus made between the equilibrium [thermodynamic entropy](https://en.wikipedia.org/wiki/Entropy_(classical_thermodynamics)) $S_{Th}$, a state function of pressure, volume, temperature, etc., and the [information entropy](https://en.wikipedia.org/wiki/Information_entropy) for the predicted distribution with maximum uncertainty conditioned only on the expectation values of those variables: 

$$S_{Th}(P,V,T,...)_{(eqm)} = k_B S_I(P,V,T,...)$$

$k_{B}$, the Bolzmann constant, has no fundamental physical significance here, but is necessary to retain consistency with the previous historical definition of entropy by Clausius (1865) (see [Boltzmann constant](https://en.wikipedia.org/wiki/Boltzmann_constant))

However, the [MaxEnt school](https://en.wikipedia.org/wiki/MaxEnt_school) argue that the MaxEnt approach is a general techinque of statistical inference, with applications far beyond this. It can therefore also be used to predict a distribution for "trajectories" Γ "over a period of time" by maximising：

$${\displaystyle S_{\text{I}}= -\sum p_{\Gamma }\ln p_{\Gamma}}$$

This "information entropy" does not necessarily have a simple correspondence with thermodynamic entropy. But it can be used to predict features of [nonequilibruim thermodynamic](https://en.wikipedia.org/wiki/Non-equilibrium_thermodynamics) system as they evolve over time. 

### Pierrer-Simon Laplace and His Contributions To The Community 

