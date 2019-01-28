
VERSION = "2016112301"
EV = 2
t_EV = 1
y_live_EV = 1
t_live_EV = 1
ott_EV = 1
laifeng_EV = 2

MODE = 1

function setEvMode(EV)
	if EV==1 then
	    MODE = 1;
    elseif EV==2 then
	    MODE = 4;
    end
end

function setAESMode(mode)
	algms.setMode(mode)
end

y_key = {3452658817, 2033284369, 3987394443, 4050728227}
t_key = {768304513, 3648063403, 1200350539, 1135324489}
y_live_key = {2380375339, 3372821835, 757854091, 3417384251}
t_live_key = {1307283402, 3415975219, 130748267, 1094264761}
ott_key = {1282092843, 3240703931, 2366342603, 1359558529 }
laifeng_key = {3338866115, 1094442977, 2231570411, 1097955073}

function getConfused(flag)
	local ftr = math.log10(1000);
	local ftr2 = math.log10(100);
	local key = {};
	if flag==0 then
		key = y_key;
	    setEvMode(EV);
	elseif flag == 1 then
		key = t_key;
	    setEvMode(t_EV);
	elseif flag == 2 then
		key = y_live_key;
	    setEvMode(y_live_EV);
	elseif flag == 3 then
		key = t_live_key;
	    setEvMode(t_live_EV);
	elseif flag == 4 then
	    key = ott_key;
	    setEvMode(ott_EV);
	elseif flag == 5 then
		key = laifeng_key;
		setEvMode(laifeng_EV);
	end
	local a = math.max(key[1], ftr);
	local b = math.min(key[2], ftr2);
	local c = math.max(key[3], ftr);
	local d = math.min(key[4], ftr2);
	return a, b, c, d; 
end

function doDec(ciphertxt, len, flag)
	if ciphertxt==nil then
		return nil;
	end
    local L, l, R, r = getConfused(flag);
    setAESMode(MODE);
	ret = algms.aesdec(ciphertxt, math.btan2(L, l, R, r));
	return ret;
end

function doEnc(plaintxt, flag)
	if plaintxt==nil then
		return nil;
	end
    local L, l, R, r = getConfused(flag);
    setAESMode(MODE);
	ret = algms.aesenc(plaintxt, math.btan2(L, l, R, r));
	return ret;
end

