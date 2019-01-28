.class public Lc8/wdn;
.super Ljava/lang/Object;
.source "YoukuDataSource.java"

# interfaces
.implements Lc8/vdn;


# static fields
.field private static instance:Lc8/vdn;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static declared-synchronized getInstance()Lc8/vdn;
    .locals 2

    .prologue
    .line 51
    const-class v1, Lc8/wdn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/wdn;->instance:Lc8/vdn;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lc8/wdn;

    invoke-direct {v0}, Lc8/wdn;-><init>()V

    sput-object v0, Lc8/wdn;->instance:Lc8/vdn;

    .line 53
    :cond_0
    sget-object v0, Lc8/wdn;->instance:Lc8/vdn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lc8/bzo;->getPassportCookie()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lc8/VLj;->GUID:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestSubscribeType()I
    .locals 1

    .prologue
    .line 247
    sget v0, Lc8/Dfh;->latestSubscribeType:I

    return v0
.end method

.method public getLaunchTime()J
    .locals 2

    .prologue
    .line 150
    sget-wide v0, Lc8/VLj;->LAUNCH_TIME:J

    return-wide v0
.end method

.method public getNewSecretId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    const-string/jumbo v0, "631l1i1x3fv5vs2dxlj5v8x81jqfs2om"

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lc8/VLj;->context:Landroid/content/Context;

    invoke-static {v0}, Lc8/Bfh;->getPid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {p1}, Lc8/VLj;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {p1, p2}, Lc8/VLj;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p1}, Lc8/VLj;->getPreferenceBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPreferenceBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    .line 90
    invoke-static {p1, p2}, Lc8/VLj;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPreferenceInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {p1}, Lc8/VLj;->getPreferenceInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPreferenceInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 100
    invoke-static {p1, p2}, Lc8/VLj;->getPreferenceInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPreferenceLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {p1}, Lc8/VLj;->getPreferenceLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/thn;->getSToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 145
    sget-wide v0, Lc8/lSh;->TIMESTAMP:J

    return-wide v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lc8/VLj;->User_Agent:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const-string/jumbo v0, "userIcon"

    invoke-static {v0}, Lc8/VLj;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "uid"

    invoke-static {v0}, Lc8/VLj;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const-string/jumbo v0, "userName"

    invoke-static {v0}, Lc8/VLj;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserNumberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string/jumbo v0, "userNumberId"

    invoke-static {v0}, Lc8/VLj;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    :try_start_0
    sget-object v1, Lc8/VLj;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 186
    :goto_0
    return-object v1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lc8/VLj;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public getWirelessPid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lc8/Bfh;->Wireless_pid:Ljava/lang/String;

    return-object v0
.end method

.method public getYKTK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/thn;->getPassportYKTK()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYtid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 267
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v1

    invoke-virtual {v1}, Lc8/thn;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v0

    .line 268
    .local v0, "mUserInfo":Lcom/youku/usercenter/passport/remote/UserInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    :cond_0
    const-string/jumbo v1, "userNumberId"

    invoke-static {v1}, Lc8/VLj;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, v0, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasAdvMessage()Z
    .locals 1

    .prologue
    .line 232
    invoke-static {}, Lc8/Efh;->hasAdvMessage()Z

    move-result v0

    return v0
.end method

.method public isH5SubscriptionSwitch()Z
    .locals 1

    .prologue
    .line 242
    invoke-static {}, Lc8/Efh;->isH5SubscriptionSwitch()Z

    move-result v0

    return v0
.end method

.method public isHD2Supported()Z
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Lc8/Iyo;->isHD2Supported()Z

    move-result v0

    return v0
.end method

.method public isHD3Supported()Z
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Lc8/Iyo;->isHD3Supported()Z

    move-result v0

    return v0
.end method

.method public isHighEnd()Z
    .locals 1

    .prologue
    .line 252
    sget-boolean v0, Lc8/VLj;->isHighEnd:Z

    return v0
.end method

.method public isLogined()Z
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/thn;->isLogin()Z

    move-result v0

    return v0
.end method

.method public isPad()Z
    .locals 1

    .prologue
    .line 217
    invoke-static {}, Lc8/bzo;->isPad()Z

    move-result v0

    return v0
.end method

.method public isShow1080P()Z
    .locals 1

    .prologue
    .line 172
    invoke-static {}, Lc8/Iyo;->isHD3Supported()Z

    move-result v0

    return v0
.end method

.method public isTablet()Z
    .locals 1

    .prologue
    .line 212
    sget-boolean v0, Lc8/VLj;->isTablet:Z

    return v0
.end method

.method public isUnicomMessageShow()Z
    .locals 1

    .prologue
    .line 237
    invoke-static {}, Lc8/Efh;->isUnicomMessageShow()Z

    move-result v0

    return v0
.end method

.method public isVIP()Z
    .locals 1

    .prologue
    .line 155
    invoke-static {}, Lc8/bzo;->isVipUser()Z

    move-result v0

    return v0
.end method

.method public isVipUserTemp()Z
    .locals 1

    .prologue
    .line 227
    sget-boolean v0, Lc8/Dfh;->isVipUserTemp:Z

    return v0
.end method

.method public savePreference(Ljava/lang/String;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 110
    invoke-static {p1, p2}, Lc8/VLj;->savePreference(Ljava/lang/String;I)V

    .line 111
    return-void
.end method

.method public savePreference(Ljava/lang/String;J)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 115
    invoke-static {p1, p2, p3}, Lc8/VLj;->savePreference(Ljava/lang/String;J)V

    .line 116
    return-void
.end method

.method public savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 120
    invoke-static {p1, p2}, Lc8/VLj;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 121
    return-void
.end method

.method public savePreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-static {p1, p2}, Lc8/VLj;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public setGameCenterAndAppCenterShowFreeFlowDialog(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isShow"    # Ljava/lang/Boolean;

    .prologue
    .line 277
    return-void
.end method
