class Mood < ApplicationRecord

 enum vibe: %i[ none bad meh okay good amazing perfect ], _suffix: true
 enum health: %i[ none bad meh okay good amazing perfect ], _suffix: true
 enum activity: %i[ none bad meh okay good amazing perfect ], _suffix: true
 enum happiness: %i[ none bad meh okay good amazing perfect ], _suffix: true
 enum work: %i[ none bad meh okay good amazing perfect ], _suffix: true
 enum school: %i[ none bad meh okay good amazing perfect ], _suffix: true
 enum love: %i[ none bad meh okay good amazing perfect ], _suffix: true
 
end
