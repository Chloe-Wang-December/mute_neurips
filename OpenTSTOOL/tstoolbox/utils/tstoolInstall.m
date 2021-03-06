function tstoolInstall
% Install OpenTSTOOL by saving it in Matlab search path

if (  isempty(which('units.mat')) ...
   || isempty(which('nn_prepare')) ...
   || isempty(which('genbyode')) ...
   || isempty(which('opentstool')) )
	error('Seems like OpenTSTOOL directories are not in current search path. Run tstoolInit first')
else
    if ( usejava('awt') )
	h=msgbox(['I will start the MATLAB path tool. Just click `save` there to save the current Matlab path.' ...
	'If you do not have permission to save the global Matlab search path, save it ' ...
	'in your userpath ' userpath ' instead.'], 'OpenTSTOOL installation','warn','modal' );
        uiwait(h);
    else
        fprintf(['I will now start the path tool. Just click `save` to save the current Matlab path.\n' ...
	'If you do not have permission to save the global Matlab search path, save it\n' ...
	'in your userpath %s instead\n\nPress a key to continue...\n'],userpath)
	pause
    end
    pathtool
end

