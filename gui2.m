% create figure and panel on it
f = figure;
p = uipanel ("title", "Panel Title", "position", [.25 .25 .5 .5]);

% add two buttons to the panel
b1 = uicontrol ("parent", p, "string", "A Button", "position",[18 10 150 36]);
b2 = uicontrol ("parent", p, "string", "Another Button", "position",[18 60 150 36]);