#  Multi-armed Bandit Problem

https://arxiv.org/pdf/1204.5721.pdf !!!!!!!!!

## Introduction

The multi-armed bandit problem is a sequential allocation problem. An agent must repeatedly choose among different actions. For every choosen action the agent receives a reward. The goal is to maximize the expected total reward obtained in a sequence of actions:

```swift
let policy = softmax(preference)

for i in 0 ..< bandit.actionSpace {
    expectedReward += Double(policy[i]) * bandit.meanRewards[i]
}
```
## Stochastic gradient ascent algorithm
Stochastic gradient ascent is an algorithm that tries to find the maxima of the expected total reward. We can't implement exact gradient ascent because we don't know the probability distributions for the rewards.
Instead we consider to learn a preference for every action. The larger the preference for an action, the more often it is taken. We use softmax to determine the action probabilities:

```swift
policy = softmax(preference)
```

Initially all preferences are the same:
```swift
var preference = [Double](repeating: 0, count: actionSpace)
```


After selecting an action and receiving a reward the preferences are updated:
```swift
for i in 0 ..< actionSpace {
    if i != action {
        preference[i] -= learningRate * reward * policy[i]
    } else {
        preference[i] += learningRate * reward * (1 - policy[i])
    }
}
```
