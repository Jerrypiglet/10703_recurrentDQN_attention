############## Experiment in Handout ###############
# 2. run a linear Q-network without experience replay and target fixingin Enduro
# python dqn_atari.py --env=Enduro-v0 --net_mode=linear --no_experience --no_target \
# | tee ../print/log_problem2.txt

# 3. run a linear Q-network in Enduro
# python dqn_atari.py --env=Enduro-v0 --net_mode=linear \
# | tee ../print/log_problem3.txt

# 4. run a linear double Q-network with in Enduro
# python dqn_atari.py --env=Enduro-v0 --net_mode=linear --ddqn \
# | tee ../print/log_problem4.txt

# 5. run dqn in Enduro
# python dqn_atari.py --env=Enduro-v0 \
# | tee ../print/log_problem5.txt

# 6. run double dqn in Enduro
# python dqn_atari.py --env=Enduro-v0 --ddqn \
# | tee ../print/log_problem6.txt

# 7. run dueling double dqn in Enduro
# python dqn_atari.py --env=Enduro-v0 --net_mode=duel --ddqn \
# | tee ../print/log_problem7.txt


############## Extra Experiment #################
# run dqn in Breakout
python dqn_atari.py --env=Breakout-v0 \
| tee ../print/log_dqn_Breakout.txt

# run dqn in Space Invaders
# python dqn_atari.py --env=SpaceInvaders-v0 \
# | tee ../print/log_dqn_SpaceInvaders.txt


###################### Others ######################
# test correctness of code
# python dqn_atari.py --env=Enduro-v0 --net_mode=linear --no_experience --no_target \
# --num_burn_in=0 --eval_freq=1000 --save_freq=5000 | tee ../print/log_debug.txt

# record video
# python dqn_atari.py --env=Enduro-v0 --test --load_network --num_episodes_at_test=3 \
# --load_network_path=../log/Enduro-v0-run11/qnet101.h5 | tee ../print/log_video.txt

# final evaluation
# python dqn_atari.py --env=Enduro-v0 --test --load_network --num_episodes_at_test=100 --no_monitor \
# --load_network_path=../log/Enduro-v0-run11/qnet101.h5 | tee ../print/log_evaluate.txt