unit Themes;

interface

uses
  ComponentViewAssistant;

const
  ThemePalettes: array[TMrxThemes] of TThemePalette =(
     //Light
  (Background: $FFA2AADB;
      Font: $FF222831;
      Triggered: $FF898AC4;
      Untriggered: $FFDDE6ED;
      Default: $FFF5F5F5),
     //Dark
      (Background: $FF082032;
      Font: $FFEEEEEE;
      Triggered: $FF1B1A55;
      Untriggered: $FF9290C3;
      Default: $FF535C91),
     //Custom
      (Background: $FF393E46;
      Font: $FFEEEEEE;
      Triggered: $FF2C394B;
      Untriggered: $FF787A91;
      Default: $FF393E46)
  );

implementation

end.

