.class public Lcom/youku/lbs/LBSLocation;
.super Landroid/location/Location;
.source "LBSLocation.java"


# instance fields
.field private accuracy:F

.field private adCode:Ljava/lang/String;

.field private address:Ljava/lang/String;

.field private aoiname:Ljava/lang/String;

.field private cellInfo:Ljava/lang/String;

.field private cellInfokey:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private cityCode:Ljava/lang/String;

.field private corseLocation:Ljava/lang/String;

.field private corseLocationkey:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private district:Ljava/lang/String;

.field private fineLocation:Ljava/lang/String;

.field private fineLocationkey:Ljava/lang/String;

.field private isGetAMapAPP:Z

.field private latitude:D

.field private localTime:J

.field private locationtime:Ljava/lang/Long;

.field private longitude:D

.field private province:Ljava/lang/String;

.field private street:Ljava/lang/String;

.field private wifiLocation:Ljava/lang/String;

.field private wifiLocationkey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/lbs/LBSLocation;->isGetAMapAPP:Z

    .line 49
    return-void
.end method


# virtual methods
.method public getAccuracy()F
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/youku/lbs/LBSLocation;->accuracy:F

    return v0
.end method

.method public getAdCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/youku/lbs/LBSLocation;->adCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/youku/lbs/LBSLocation;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAoiname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/youku/lbs/LBSLocation;->aoiname:Ljava/lang/String;

    return-object v0
.end method

.method public getCellInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/youku/lbs/LBSLocation;->cellInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getCellInfokey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/youku/lbs/LBSLocation;->cellInfokey:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/youku/lbs/LBSLocation;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/youku/lbs/LBSLocation;->cityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCorseLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/youku/lbs/LBSLocation;->corseLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getCorseLocationkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/youku/lbs/LBSLocation;->corseLocationkey:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/youku/lbs/LBSLocation;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/youku/lbs/LBSLocation;->district:Ljava/lang/String;

    return-object v0
.end method

.method public getFineLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/youku/lbs/LBSLocation;->fineLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getFineLocationkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/youku/lbs/LBSLocation;->fineLocationkey:Ljava/lang/String;

    return-object v0
.end method

.method public getIsGetAMapAPP()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/youku/lbs/LBSLocation;->isGetAMapAPP:Z

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/youku/lbs/LBSLocation;->latitude:D

    return-wide v0
.end method

.method public getLocalTime()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/youku/lbs/LBSLocation;->localTime:J

    return-wide v0
.end method

.method public getLocationtime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/youku/lbs/LBSLocation;->locationtime:Ljava/lang/Long;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/youku/lbs/LBSLocation;->longitude:D

    return-wide v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youku/lbs/LBSLocation;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/youku/lbs/LBSLocation;->street:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/youku/lbs/LBSLocation;->wifiLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiLocationkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/youku/lbs/LBSLocation;->wifiLocationkey:Ljava/lang/String;

    return-object v0
.end method

.method public setAccuracy(F)V
    .locals 0
    .param p1, "accuracy"    # F

    .prologue
    .line 42
    iput p1, p0, Lcom/youku/lbs/LBSLocation;->accuracy:F

    .line 43
    return-void
.end method

.method public setAdCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "adCode"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/youku/lbs/LBSLocation;->adCode:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/youku/lbs/LBSLocation;->address:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setAoiname(Ljava/lang/String;)V
    .locals 0
    .param p1, "aoiname"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/youku/lbs/LBSLocation;->aoiname:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setCellInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "cellInfo"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/youku/lbs/LBSLocation;->cellInfo:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setCellInfokey(Ljava/lang/String;)V
    .locals 0
    .param p1, "cellInfokey"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/youku/lbs/LBSLocation;->cellInfokey:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/youku/lbs/LBSLocation;->city:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "cityCode"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/youku/lbs/LBSLocation;->cityCode:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setCorseLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "corseLocation"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/youku/lbs/LBSLocation;->corseLocation:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setCorseLocationkey(Ljava/lang/String;)V
    .locals 0
    .param p1, "corseLocationkey"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/youku/lbs/LBSLocation;->corseLocationkey:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/youku/lbs/LBSLocation;->country:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0
    .param p1, "district"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/youku/lbs/LBSLocation;->district:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setFineLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "fineLocation"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/youku/lbs/LBSLocation;->fineLocation:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setFineLocationkey(Ljava/lang/String;)V
    .locals 0
    .param p1, "fineLocationkey"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/youku/lbs/LBSLocation;->fineLocationkey:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setIsGetAMapAPP(Z)V
    .locals 0
    .param p1, "isGetAMapAPP"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/youku/lbs/LBSLocation;->isGetAMapAPP:Z

    .line 105
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 185
    iput-wide p1, p0, Lcom/youku/lbs/LBSLocation;->latitude:D

    .line 186
    return-void
.end method

.method public setLocalTime(J)V
    .locals 1
    .param p1, "localTime"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/youku/lbs/LBSLocation;->localTime:J

    .line 57
    return-void
.end method

.method public setLocationtime(Ljava/lang/Long;)V
    .locals 0
    .param p1, "locationtime"    # Ljava/lang/Long;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/youku/lbs/LBSLocation;->locationtime:Ljava/lang/Long;

    .line 202
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 193
    iput-wide p1, p0, Lcom/youku/lbs/LBSLocation;->longitude:D

    .line 194
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0
    .param p1, "province"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/youku/lbs/LBSLocation;->province:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0
    .param p1, "street"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/youku/lbs/LBSLocation;->street:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setWifiLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "wifiLocation"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/youku/lbs/LBSLocation;->wifiLocation:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setWifiLocationkey(Ljava/lang/String;)V
    .locals 0
    .param p1, "wifiLocationkey"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/youku/lbs/LBSLocation;->wifiLocationkey:Ljava/lang/String;

    .line 142
    return-void
.end method
