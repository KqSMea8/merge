.class public Lc8/xB;
.super Ljava/lang/Object;
.source "GlobalConfig.java"


# static fields
.field public static final DEFAULT_TTID:Ljava/lang/String; = "hybrid@windvane_android_8.3.0"

.field public static final DEFAULT_UA:Ljava/lang/String; = " WindVane/8.3.0"

.field public static final VERSION:Ljava/lang/String; = "8.3.0"

.field private static config:Lc8/xB;

.field public static context:Landroid/app/Application;

.field public static env:Landroid/taobao/windvane/config/EnvEnum;


# instance fields
.field private appKey:Ljava/lang/String;

.field private appSecret:Ljava/lang/String;

.field private appTag:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private groupName:Ljava/lang/String;

.field private groupVersion:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private ttid:Ljava/lang/String;

.field private ucLibDir:Ljava/lang/String;

.field private ucsdkappkeySec:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Landroid/taobao/windvane/config/EnvEnum;->ONLINE:Landroid/taobao/windvane/config/EnvEnum;

    sput-object v0, Lc8/xB;->env:Landroid/taobao/windvane/config/EnvEnum;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Lc8/xB;->ucLibDir:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lc8/xB;->ucsdkappkeySec:[Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static getCdnConfigUrlPre()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/xB;->getH5Host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/bizcache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getH5Host()Ljava/lang/String;
    .locals 3

    .prologue
    .line 191
    sget-object v1, Landroid/taobao/windvane/config/EnvEnum;->ONLINE:Landroid/taobao/windvane/config/EnvEnum;

    sget-object v2, Lc8/xB;->env:Landroid/taobao/windvane/config/EnvEnum;

    invoke-virtual {v1, v2}, Landroid/taobao/windvane/config/EnvEnum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "https://h5."

    .line 192
    .local v0, "perfix":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/xB;->env:Landroid/taobao/windvane/config/EnvEnum;

    invoke-virtual {v2}, Landroid/taobao/windvane/config/EnvEnum;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".taobao.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 191
    .end local v0    # "perfix":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "http://h5."

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lc8/xB;
    .locals 2

    .prologue
    .line 75
    const-class v1, Lc8/xB;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/xB;->config:Lc8/xB;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lc8/xB;

    invoke-direct {v0}, Lc8/xB;-><init>()V

    sput-object v0, Lc8/xB;->config:Lc8/xB;

    .line 78
    :cond_0
    sget-object v0, Lc8/xB;->config:Lc8/xB;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getMtopUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://api."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/xB;->env:Landroid/taobao/windvane/config/EnvEnum;

    invoke-virtual {v1}, Landroid/taobao/windvane/config/EnvEnum;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".taobao.com/rest/api3.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lc8/xB;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lc8/xB;->appSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getAppTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lc8/xB;->appTag:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lc8/xB;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lc8/xB;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lc8/xB;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lc8/xB;->groupVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lc8/xB;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lc8/xB;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getTtid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lc8/xB;->ttid:Ljava/lang/String;

    return-object v0
.end method

.method public getUcLibDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lc8/xB;->ucLibDir:Ljava/lang/String;

    return-object v0
.end method

.method public getUcsdkappkeySec()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lc8/xB;->ucsdkappkeySec:[Ljava/lang/String;

    return-object v0
.end method

.method public initParams(Lc8/BB;)Z
    .locals 2
    .param p1, "params"    # Lc8/BB;

    .prologue
    .line 90
    if-eqz p1, :cond_3

    .line 91
    iget-object v0, p1, Lc8/BB;->appKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "initParams error, appKey is empty"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iget-object v0, p1, Lc8/BB;->ttid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    const-string/jumbo v0, "hybrid@windvane_android_8.3.0"

    iput-object v0, p0, Lc8/xB;->ttid:Ljava/lang/String;

    .line 99
    :goto_0
    iget-object v0, p1, Lc8/BB;->imei:Ljava/lang/String;

    iput-object v0, p0, Lc8/xB;->imei:Ljava/lang/String;

    .line 100
    iget-object v0, p1, Lc8/BB;->imsi:Ljava/lang/String;

    iput-object v0, p0, Lc8/xB;->imsi:Ljava/lang/String;

    .line 101
    iget-object v0, p1, Lc8/BB;->deviceId:Ljava/lang/String;

    iput-object v0, p0, Lc8/xB;->deviceId:Ljava/lang/String;

    .line 102
    iget-object v0, p1, Lc8/BB;->appKey:Ljava/lang/String;

    iput-object v0, p0, Lc8/xB;->appKey:Ljava/lang/String;

    .line 103
    iget-object v0, p1, Lc8/BB;->appSecret:Ljava/lang/String;

    iput-object v0, p0, Lc8/xB;->appSecret:Ljava/lang/String;

    .line 104
    iget-object v0, p1, Lc8/BB;->appTag:Ljava/lang/String;

    iput-object v0, p0, Lc8/xB;->appTag:Ljava/lang/String;

    .line 105
    iget-object v0, p1, Lc8/BB;->appVersion:Ljava/lang/String;

    iput-object v0, p0, Lc8/xB;->appVersion:Ljava/lang/String;

    .line 106
    iget-object v0, p1, Lc8/BB;->ucsdkappkeySec:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lc8/xB;->setUcsdkappkeySec([Ljava/lang/String;)V

    .line 107
    iget-object v0, p1, Lc8/BB;->ucLibDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p1, Lc8/BB;->ucLibDir:Ljava/lang/String;

    iput-object v0, p0, Lc8/xB;->ucLibDir:Ljava/lang/String;

    .line 110
    :cond_1
    const/4 v0, 0x1

    .line 112
    :goto_1
    return v0

    .line 97
    :cond_2
    iget-object v0, p1, Lc8/BB;->ttid:Ljava/lang/String;

    iput-object v0, p0, Lc8/xB;->ttid:Ljava/lang/String;

    goto :goto_0

    .line 112
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lc8/xB;->groupName:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setGroupVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupVersion"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lc8/xB;->groupVersion:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setUcsdkappkeySec([Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # [Ljava/lang/String;

    .prologue
    .line 162
    if-eqz p1, :cond_0

    .line 163
    iput-object p1, p0, Lc8/xB;->ucsdkappkeySec:[Ljava/lang/String;

    .line 165
    :cond_0
    return-void
.end method
