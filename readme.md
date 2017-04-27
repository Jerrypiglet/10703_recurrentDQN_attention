10703 course project

# There are two types of attention to implement:
- Temporal attention (already implemented; enable with the `--a_t' flag. See this report http://cs229.stanford.edu/proj2016/report/ChenYingLaird-DeepQLearningWithRecurrentNeuralNetwords-report.pdf or this post https://github.com/fchollet/keras/issues/1629
- Spatial attention (to implement). See this paper: https://arxiv.org/abs/1512.01693

# How to run in recurrent DQN mode **without** tenporal attention
``python dqn_atari.py --env=Assault-v0 --train --net_mode=duel --num_episodes_at_test=20 --task_name 'RNN_keras' --num_frames 10 --recurrent --replay_memory_size=500000``

# Important note:
In Line 11 of ``den_atari.py``:
- ``from deeprl_prj.dqn import DQNAgent`` if you are using **Keras**
- ``from deeprl_prj.dqn import DQNAgent`` if you are using **TF** 
