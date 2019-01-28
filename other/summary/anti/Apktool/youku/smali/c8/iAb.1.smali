.class public Lc8/iAb;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field private access:Ljava/lang/String;

.field private accessSubType:Ljava/lang/String;

.field private aid:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private binTime:Ljava/lang/String;

.field private brand:Ljava/lang/String;

.field private carrier:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private cpu:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private osName:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private resolution:Ljava/lang/String;

.field private screenHeight:I

.field private screenWidth:I

.field private serialNo:Ljava/lang/String;

.field private timezone:Ljava/lang/String;

.field private utdid:Ljava/lang/String;

.field private versionCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/iAb;->imei:Ljava/lang/String;

    .line 6
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/iAb;->imsi:Ljava/lang/String;

    .line 7
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/iAb;->cpu:Ljava/lang/String;

    .line 8
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/iAb;->carrier:Ljava/lang/String;

    .line 9
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/iAb;->deviceId:Ljava/lang/String;

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/iAb;->deviceModel:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/iAb;->country:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/iAb;->language:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/iAb;->timezone:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/iAb;->resolution:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/iAb;->access:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/iAb;->accessSubType:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/iAb;->brand:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/iAb;->appVersion:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/iAb;->versionCode:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/iAb;->osName:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/iAb;->osVersion:Ljava/lang/String;

    .line 22
    iput v1, p0, Lc8/iAb;->screenWidth:I

    .line 23
    iput v1, p0, Lc8/iAb;->screenHeight:I

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/iAb;->utdid:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/iAb;->aid:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lc8/iAb;->binTime:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/iAb;->serialNo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccess()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lc8/iAb;->access:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lc8/iAb;->accessSubType:Ljava/lang/String;

    return-object v0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lc8/iAb;->aid:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lc8/iAb;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBinTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lc8/iAb;->binTime:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lc8/iAb;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lc8/iAb;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lc8/iAb;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCpu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lc8/iAb;->cpu:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lc8/iAb;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lc8/iAb;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lc8/iAb;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lc8/iAb;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lc8/iAb;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getOsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lc8/iAb;->osName:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lc8/iAb;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lc8/iAb;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lc8/iAb;->screenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lc8/iAb;->screenWidth:I

    return v0
.end method

.method public getSerialNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lc8/iAb;->serialNo:Ljava/lang/String;

    return-object v0
.end method

.method getTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lc8/iAb;->timezone:Ljava/lang/String;

    return-object v0
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lc8/iAb;->utdid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lc8/iAb;->versionCode:Ljava/lang/String;

    return-object v0
.end method

.method public setAccess(Ljava/lang/String;)V
    .locals 0
    .param p1, "access"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lc8/iAb;->access:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setAccessSubType(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessSubType"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lc8/iAb;->accessSubType:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setAid(Ljava/lang/String;)V
    .locals 0
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lc8/iAb;->aid:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lc8/iAb;->appVersion:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setBinTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "binTime"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lc8/iAb;->binTime:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lc8/iAb;->brand:Ljava/lang/String;

    .line 161
    return-void
.end method

.method setCarrier(Ljava/lang/String;)V
    .locals 0
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lc8/iAb;->carrier:Ljava/lang/String;

    .line 89
    return-void
.end method

.method setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lc8/iAb;->country:Ljava/lang/String;

    .line 113
    return-void
.end method

.method setCpu(Ljava/lang/String;)V
    .locals 0
    .param p1, "cpu"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lc8/iAb;->cpu:Ljava/lang/String;

    .line 81
    return-void
.end method

.method setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lc8/iAb;->deviceId:Ljava/lang/String;

    .line 97
    return-void
.end method

.method setDeviceModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceModel"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lc8/iAb;->deviceModel:Ljava/lang/String;

    .line 105
    return-void
.end method

.method setImei(Ljava/lang/String;)V
    .locals 0
    .param p1, "imei"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lc8/iAb;->imei:Ljava/lang/String;

    .line 60
    return-void
.end method

.method setImsi(Ljava/lang/String;)V
    .locals 0
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lc8/iAb;->imsi:Ljava/lang/String;

    .line 73
    return-void
.end method

.method setLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lc8/iAb;->language:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setOsName(Ljava/lang/String;)V
    .locals 0
    .param p1, "osName"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lc8/iAb;->osName:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "osVersion"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lc8/iAb;->osVersion:Ljava/lang/String;

    .line 193
    return-void
.end method

.method setResolution(Ljava/lang/String;)V
    .locals 0
    .param p1, "resolution"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lc8/iAb;->resolution:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setScreenHeight(I)V
    .locals 0
    .param p1, "screenHeight"    # I

    .prologue
    .line 46
    iput p1, p0, Lc8/iAb;->screenHeight:I

    .line 47
    return-void
.end method

.method public setScreenWidth(I)V
    .locals 0
    .param p1, "screenWidth"    # I

    .prologue
    .line 38
    iput p1, p0, Lc8/iAb;->screenWidth:I

    .line 39
    return-void
.end method

.method public setSerialNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "serialNo"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lc8/iAb;->serialNo:Ljava/lang/String;

    .line 218
    return-void
.end method

.method setTimezone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timezone"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lc8/iAb;->timezone:Ljava/lang/String;

    .line 129
    return-void
.end method

.method setUtdid(Ljava/lang/String;)V
    .locals 0
    .param p1, "utdid"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lc8/iAb;->utdid:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setVersionCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionCode"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lc8/iAb;->versionCode:Ljava/lang/String;

    .line 177
    return-void
.end method
