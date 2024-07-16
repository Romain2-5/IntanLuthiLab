function [ h ] = Ypnos_mainFig( h )
%YPNOS_MAINFIG Summary of this function goes here
%   Detailed explanation goes here

h.mainFig = figure('menubar', 'none',...
    'color',         'black',...
    'name',          'Ypnos NREM sleep detection',...
    'numbertitle',   'off',...
    'units',         'normalized',...
    'outerposition', [.1 .1 .8 .8]);

h.filePanel = uipanel('parent', h.mainFig,...
    'FontName',           'Monospaced',...
    'FontSize',           12,...
    'ForegroundColor',    'white',...
    'backgroundcolor',    'black',...
    'units',              'normalized',...
    'position',           [.05, .88, .9, .09],...
    'title',              'Settings');


h.browse = uicontrol('style', 'pushbutton',...
    'FontName', 'Monospaced',...
    'ForegroundColor', 'white',...
    'parent',           h.filePanel,...
    'units',            'normalized',...
    'position',         [.05 .3 0.05 0.45],...
    'string',           '...',...
    'backgroundcolor',  'black');


h.fileEdit = uicontrol('style', 'edit',...
    'FontName', 'Monospaced',...
    'ForegroundColor', 'white',...
    'parent',             h.filePanel,...
    'units',              'normalized',...
    'position',           [0.12 .3 0.2 0.45],...
    'backgroundcolor',    'black',...
    'string',             [datestr(now,'yymmdd'),'_']);

h.recSettings = uicontrol('style', 'pushbutton',...
    'FontName', 'Monospaced',...
    'ForegroundColor', 'white',...
    'parent',           h.filePanel,...
    'units',            'normalized',...
    'position',         [.34 .3 0.1 0.45],...
    'string',           'Recording settings',...
    'enable',           'off',...
    'backgroundcolor',  'black');

h.start = uicontrol('style', 'pushbutton',...
    'FontName', 'Monospaced',...
    'ForegroundColor', 'white',...
    'parent',           h.filePanel,...
    'units',            'normalized',...
    'position',         [.46 .3 0.1 0.45],...
    'string',           'Start',...
    'enable',           'off',...
    'backgroundcolor',  'black');

h.console = uicontrol('parent', h.filePanel,...
    'FontName', 'Monospaced',...
    'ForegroundColor', 'white',...
    'style', 'text',...
    'fontsize',12,...
    'unit', 'normalized',...
    'position', [.58,.22,.4,.47],...
    'string', '>> Choose an output directory and name the file',...
    'horizontalalignment','left',...
    'backgroundcolor', 'black');

end
