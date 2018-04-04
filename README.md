#  Multi-armed Bandit Problem

## Introduction

The multi-armed bandit problem is to choose among k different actions. For every choosen action we receive a reward. The goal is to maximize the expected total reward over some time period.

## Stochastic gradient ascent algorithm
Stochastic gradient ascent is an algorithm that tries to find the maxima of the expected total reward. We can't implement exact gradient ascent because we don't know the expected rewards
```
[0.2, -0.7, 1.8, 0.4, 1.1, -1.5, -0.2, -0.9, 0.9, -0.3]
```
Instead we consider to learn a preference for every action. The larger the preference for an action, the more often it is taken. Initially all preferences are the same
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
