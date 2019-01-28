.class public Lc8/dXf;
.super Ljava/lang/Object;
.source "WXParams.java"


# instance fields
.field private appName:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private cacheDir:Ljava/lang/String;

.field private deviceHeight:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private deviceWidth:Ljava/lang/String;

.field private logLevel:Ljava/lang/String;

.field private needInitV8:Ljava/lang/String;

.field private options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private osVersion:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private shouldInfoCollect:Ljava/lang/String;

.field private weexVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lc8/dXf;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lc8/dXf;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lc8/dXf;->cacheDir:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lc8/dXf;->deviceHeight:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lc8/dXf;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceWidth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lc8/dXf;->deviceWidth:Ljava/lang/String;

    return-object v0
.end method

.method public getLogLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lc8/dXf;->logLevel:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 137
    const-string/jumbo v0, ""

    .line 139
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/dXf;->logLevel:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNeedInitV8()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lc8/dXf;->needInitV8:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 148
    const-string/jumbo v0, ""

    .line 150
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/dXf;->needInitV8:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOptions()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lc8/dXf;->options:Ljava/util/Map;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lc8/dXf;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lc8/dXf;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getShouldInfoCollect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lc8/dXf;->shouldInfoCollect:Ljava/lang/String;

    return-object v0
.end method

.method public getWeexVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lc8/dXf;->weexVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lc8/dXf;->appName:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lc8/dXf;->appVersion:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setCacheDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "cache"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lc8/dXf;->cacheDir:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setDeviceHeight(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceHeight"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lc8/dXf;->deviceHeight:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceModel"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lc8/dXf;->deviceModel:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setDeviceWidth(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceWidth"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    iput-object p1, p0, Lc8/dXf;->deviceWidth:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setLogLevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "logLevel"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lc8/dXf;->logLevel:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setNeedInitV8(Z)V
    .locals 1
    .param p1, "need"    # Z

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 155
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lc8/dXf;->needInitV8:Ljava/lang/String;

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lc8/dXf;->needInitV8:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOptions(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lc8/dXf;->options:Ljava/util/Map;

    .line 46
    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "osVersion"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lc8/dXf;->osVersion:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lc8/dXf;->platform:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setShouldInfoCollect(Ljava/lang/String;)V
    .locals 0
    .param p1, "shouldInfoCollect"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lc8/dXf;->shouldInfoCollect:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setWeexVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "weexVersion"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lc8/dXf;->weexVersion:Ljava/lang/String;

    .line 94
    return-void
.end method
