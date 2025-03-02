use_bpm 70

live_loop :drums1 do
  sample :bd_haus, amp: 4
  sleep 0.6
end

live_loop :drums2 do
  sample :drum_snare_soft, amp: 4
  sleep 0.9
end

200.times do
  use_synth :mod_saw
  play choose(chord(:a3, :minor)), release: 0.3, cutoff: rrand(90, 120)
  sleep 0.15
end

50.times do
  use_synth :mod_saw
  play choose(chord(:a3, :minor)), release: 0.3, cutoff: rrand(20, 90)
  sleep 0.15
end

50.times do
  use_synth :mod_saw
  play choose(chord(:a3, :minor)), release: 0.3, cutoff: rrand(20, 50)
  sleep 0.15
end

200.times do
  use_synth :mod_saw
  play choose(chord(:a3, :minor)), release: 0.3, cutoff: rrand(90, 120)
  sleep 0.15
end

50.times do
  use_synth :mod_saw
  play choose(chord(:a3, :minor)), release: 0.3, cutoff: rrand(20, 50)
  sleep 0.15
end
