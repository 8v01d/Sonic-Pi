# Coded by 8v01d

live_loop :kik do
  sample :drum_bass_hard
  sleep 1
end

live_loop :snare do
  sync :kik
  sample :drum_snare_hard
  sleep 0.5
end

live_loop :hihat do
  sync :kik
  sample :drum_cymbal_closed
  sleep 0.25
  sample :drum_cymbal_closed, amp: 0.5 if one_in(2)
  sleep 0.25
  sample :drum_cymbal_closed if one_in(3)
  sleep 0.25
  sample :drum_cymbal_closed, amp: 0.5 if one_in(1)
  sleep 0.25
  sample :drum_cymbal_closed if one_in(2)
  sleep 0.15
end

loop do
  play (chord :c4, :major).choose
  sleep [0.25, 0.25, 0.5, 1].choose
end
