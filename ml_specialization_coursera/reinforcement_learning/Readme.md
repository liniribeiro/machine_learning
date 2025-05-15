# Reinforcement Learning


(s, a, r(s), s') = (state, action, reward, next_state)

### Return 
The sum of the rewards + the discount factor, that is a number between 0 and 1 that determines how much we care about future rewards. A discount factor of 0 means we only care about the immediate reward, while a discount factor of 1 means we care about all future rewards equally.

example: 
discount factor = gamma
r = 0.5
return = 0 + (0.5)0 + (0.5)**2 0 + (0.5)**3 100 = 12.5

The return we get, depends on the rewards, and the reward depend on the action we take 

### policy 
A policy is a function "π(s) = a" a mapping from states to actions, that tells you what action "a" to take in a given state "s". 

state -> action
 
The goal of reinforcement learning is to find the policy that tells you what action to take in each state, that maximizes the return. 

### Markov Decision Process (MDP

the future depends on just where you are now

Markov Decision Process (MDP) is a mathematical framework for modeling decision-making in situations where the outcome is uncertain. 


### State action value function 

Q(s, a) = Return if you: 
- start in state s
- take action a (once)
- then behave optimally after that 

Q function -> called or Q* 

picking actions 
the best possible return from state s is max Q(s, a)/a 


### Bellman equation

The Bellman equation is a fundamental equation in reinforcement learning that describes the relationship between the value of a state and the values of its successor states. It is used to compute the value function, which represents the expected return from a given state.

The Bellman equation can be expressed as follows:
Q(s, a) = R(s, a) + r max_a Q(s´, a´)

Where:
- V(s) is the value of state s
- a is the current action
- s is the current state
- s' is the next state
- a' is the next action



### Stochastic Environment
A stochastic environment is one where the outcome of an action is not deterministic, meaning that the same action taken in the same state can lead to different outcomes. In other words, the environment has some inherent randomness or uncertainty.

## State Spaces 

### Discrete State Space
A discrete state space is a finite set of states. For example, a board game with a finite number of squares or a grid world with a limited number of positions.

### Continuous State Space
A continuous state space is an infinite set of states. For example, a robot navigating in a continuous environment where its position can take any value within a range.


## Learning Algorithm  Lunar Landing

- Initialize neural network randomly as guess of Q(s,a)
- Repeat: 
    - take actions in the lunar lander. Get (s, a, R(s), s')
    - store 10.000 most recent tuples (the technique of storing the most recent steps is called Replay Buffer)
    -  Train neural network:
        - Create training set of 10.000 examples using the tuples in the replay buffer:
                - x = (s, a) and y = R(s) + r max_a Q(s', a')
        - Train  Qnew such that Qnew(s, a) = y 



# E-Greedy Policy 

Epsilon-greedy policy is a strategy used in reinforcement learning to balance exploration and exploitation. 
In this policy, the agent chooses a random action with probability ε (epsilon) and chooses the action that maximizes the expected reward with probability 1 - ε.

# Mini-batch and soft updates 

Instead of using the entire dataset to update the model, a mini-batch is a small random sample of the dataset used to update the model. This helps in faster convergence and reduces overfitting.

----

# Deep Q-Learning - Lunar Lander

Building an agent to land a lunar lander safely on a landing pad on the surface of the moon 


- [gym library](https://www.gymlibrary.dev/)