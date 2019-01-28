.class public Lc8/Edn;
.super Ljava/lang/Object;
.source "CommonService.java"

# interfaces
.implements Lc8/Fdn;


# instance fields
.field private debug:Ljava/lang/String;

.field private device:Ljava/lang/String;

.field private isDebugPre:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lc8/Edn;->debug:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lc8/Edn;->device:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Edn;->isDebugPre:Z

    return-void
.end method

.method private envSwitch(Ljava/lang/String;)V
    .locals 2
    .param p1, "egg_api"    # Ljava/lang/String;

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Common service env:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    sput-object p1, Lc8/oZo;->egg_dialog_api:Ljava/lang/String;

    .line 85
    sget-object v0, Lc8/KWc;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "eggApi"

    invoke-static {v0, v1, p1}, Lc8/oZo;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lc8/VLj;->setApi()V

    .line 87
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/ben;->setApi(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method private handleEnvParameter(Ljava/lang/String;)V
    .locals 1
    .param p1, "parameterValue"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string/jumbo v0, "daily"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    const-string/jumbo v0, "test"

    invoke-direct {p0, v0}, Lc8/Edn;->envSwitch(Ljava/lang/String;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const-string/jumbo v0, "online"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    const-string/jumbo v0, "official"

    invoke-direct {p0, v0}, Lc8/Edn;->envSwitch(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_2
    const-string/jumbo v0, "prepare"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const-string/jumbo v0, "prepare"

    invoke-direct {p0, v0}, Lc8/Edn;->envSwitch(Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lc8/Edn;->setDebugPre()V

    goto :goto_0
.end method

.method private handleHttpProxyParameter(Ljava/lang/String;)V
    .locals 4
    .param p1, "httpProxy"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Common service http_proxy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    const-string/jumbo v1, "http_proxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleMtopDeviceParameter(Ljava/lang/String;)V
    .locals 2
    .param p1, "parameterValue"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lc8/Edn;->device:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Common service mtop_device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    return-void
.end method

.method private handleMtopIsDebugParameter(Ljava/lang/String;)V
    .locals 2
    .param p1, "parameterValue"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lc8/Edn;->debug:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Common service mtop_debug:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    return-void
.end method

.method private handleParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "parameterValue"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string/jumbo v0, "env"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-direct {p0, p2}, Lc8/Edn;->handleEnvParameter(Ljava/lang/String;)V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const-string/jumbo v0, "mtop_device"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    invoke-direct {p0, p2}, Lc8/Edn;->handleMtopDeviceParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_2
    const-string/jumbo v0, "mtop_isdebug"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    invoke-direct {p0, p2}, Lc8/Edn;->handleMtopIsDebugParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_3
    const-string/jumbo v0, "http_proxy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0, p2}, Lc8/Edn;->handleHttpProxyParameter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDebugPre()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Edn;->isDebugPre:Z

    .line 104
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Z
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public getDebug(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .prologue
    .line 107
    iget-object v2, p0, Lc8/Edn;->debug:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .line 110
    .restart local p1    # "defaultValue":I
    :cond_0
    move v1, p1

    .line 112
    .local v1, "isDebug":I
    :try_start_0
    iget-object v2, p0, Lc8/Edn;->debug:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move p1, v1

    .line 116
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getDevice(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lc8/Edn;->device:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultValue":Ljava/lang/String;
    :cond_0
    iget-object p1, p0, Lc8/Edn;->device:Ljava/lang/String;

    goto :goto_0
.end method

.method public handle(Landroid/net/Uri;)Z
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    .line 39
    .local v1, "parameterNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 40
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    .local v0, "parameterName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lc8/Edn;->handleParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    .end local v0    # "parameterName":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isDebugPre()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lc8/Edn;->isDebugPre:Z

    return v0
.end method
