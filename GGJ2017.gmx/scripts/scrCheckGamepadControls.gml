/// scrCheckGamepadControls(playerLineInstance, gamePad, buttonSet)

var playerLineInstance = argument0;
var gamePad = argument1;
var buttonSet = argument2;

if(buttonSet != 0) {
  with(playerLineInstance) {
    // Phase (left/right)
    if(keyboard_check(keySet[0])) {
      phase += 2*pi*0.01*frequency*movementSpeed;
    } else if(keyboard_check(keySet[1])) {
      phase += -2*pi*0.01*frequency*movementSpeed;
    }
    
    // Frequency (up/down)
    if(ALLOW_PLAYER_FREQUENCY_CHANGE) {
      if(keyboard_check(keySet[2])) {
        frequency += -0.05;
      } else if(keyboard_check(keySet[3])) {
        frequency += 0.05;
      }
    }
    frequency = clamp(frequency, minFrequency, maxFrequency);
  }
}
