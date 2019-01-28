.class public Lc8/vXe;
.super Lc8/uXe;
.source "RegisterDO.java"


# static fields
.field public static final JSON_CMD_REGISTER:Ljava/lang/String; = "register"

.field private static final TAG:Ljava/lang/String; = "RegisterDO"


# instance fields
.field public appKey:Ljava/lang/String;

.field public appVersion:Ljava/lang/String;

.field public c0:Ljava/lang/String;

.field public c1:Ljava/lang/String;

.field public c2:Ljava/lang/String;

.field public c3:Ljava/lang/String;

.field public c4:Ljava/lang/String;

.field public c5:Ljava/lang/String;

.field public c6:Ljava/lang/String;

.field public notifyEnable:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public romInfo:Ljava/lang/String;

.field public sdkVersion:Ljava/lang/String;

.field public ttid:Ljava/lang/String;

.field public utdid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lc8/uXe;-><init>()V

    .line 24
    const/16 v0, 0xdd

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/vXe;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method public static buildRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "ttid"    # Ljava/lang/String;

    .prologue
    .line 72
    const/4 v4, 0x0

    .line 73
    .local v4, "result":[B
    const/4 v2, 0x0

    .line 76
    .local v2, "registerDO":Lc8/vXe;
    :try_start_0
    invoke-static {p0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "utdid":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {p0}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/taobao/accs/client/GlobalClientInfo;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 79
    .local v0, "appVersion":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 80
    :cond_0
    const-string/jumbo v8, "RegisterDO"

    const-string/jumbo v9, "buildRegister param null"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "appKey"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p1, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "utdid"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object v7, v10, v11

    const/4 v11, 0x4

    const-string/jumbo v12, "appVersion"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    aput-object v0, v10, v11

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    const/4 v8, 0x0

    .line 102
    if-eqz v2, :cond_1

    .line 103
    invoke-virtual {v2}, Lc8/vXe;->buildData()[B

    .line 106
    .end local v0    # "appVersion":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v7    # "utdid":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v8

    .line 83
    .restart local v0    # "appVersion":Ljava/lang/String;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v7    # "utdid":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v3, Lc8/vXe;

    invoke-direct {v3}, Lc8/vXe;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .end local v2    # "registerDO":Lc8/vXe;
    .local v3, "registerDO":Lc8/vXe;
    :try_start_2
    const-string/jumbo v8, "register"

    iput-object v8, v3, Lc8/vXe;->cmd:Ljava/lang/String;

    .line 85
    iput-object p1, v3, Lc8/vXe;->appKey:Ljava/lang/String;

    .line 86
    iput-object v7, v3, Lc8/vXe;->utdid:Ljava/lang/String;

    .line 87
    iput-object v0, v3, Lc8/vXe;->appVersion:Ljava/lang/String;

    .line 88
    iput-object p2, v3, Lc8/vXe;->ttid:Ljava/lang/String;

    .line 89
    iput-object v1, v3, Lc8/vXe;->packageName:Ljava/lang/String;

    .line 90
    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v8, v3, Lc8/vXe;->c0:Ljava/lang/String;

    .line 91
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v8, v3, Lc8/vXe;->c1:Ljava/lang/String;

    .line 92
    invoke-static {p0}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->isNotificationEnabled(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lc8/vXe;->notifyEnable:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/taobao/accs/utl/RomInfoCollecter;->getCollecter()Lcom/taobao/accs/utl/RomInfoCollecter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/taobao/accs/utl/RomInfoCollecter;->collect()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lc8/vXe;->romInfo:Ljava/lang/String;

    .line 94
    const-string/jumbo v8, "phone"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 95
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    :goto_1
    iput-object v8, v3, Lc8/vXe;->c2:Ljava/lang/String;

    .line 96
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v8

    :goto_2
    iput-object v8, v3, Lc8/vXe;->c3:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    if-eqz v3, :cond_7

    .line 103
    invoke-virtual {v3}, Lc8/vXe;->buildData()[B

    move-result-object v4

    move-object v2, v3

    .end local v0    # "appVersion":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v3    # "registerDO":Lc8/vXe;
    .end local v6    # "tm":Landroid/telephony/TelephonyManager;
    .end local v7    # "utdid":Ljava/lang/String;
    .restart local v2    # "registerDO":Lc8/vXe;
    :cond_3
    :goto_3
    move-object v8, v4

    .line 106
    goto :goto_0

    .line 95
    .end local v2    # "registerDO":Lc8/vXe;
    .restart local v0    # "appVersion":Ljava/lang/String;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v3    # "registerDO":Lc8/vXe;
    .restart local v6    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v7    # "utdid":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 96
    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 99
    .end local v0    # "appVersion":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v3    # "registerDO":Lc8/vXe;
    .end local v6    # "tm":Landroid/telephony/TelephonyManager;
    .end local v7    # "utdid":Ljava/lang/String;
    .restart local v2    # "registerDO":Lc8/vXe;
    :catch_0
    move-exception v5

    .line 100
    .local v5, "t":Ljava/lang/Throwable;
    :goto_4
    :try_start_3
    const-string/jumbo v8, "RegisterDO"

    const-string/jumbo v9, "buildRegister"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v5, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    if-eqz v2, :cond_3

    .line 103
    invoke-virtual {v2}, Lc8/vXe;->buildData()[B

    move-result-object v4

    goto :goto_3

    .line 102
    .end local v5    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v2, :cond_6

    .line 103
    invoke-virtual {v2}, Lc8/vXe;->buildData()[B

    :cond_6
    throw v8

    .line 102
    .end local v2    # "registerDO":Lc8/vXe;
    .restart local v0    # "appVersion":Ljava/lang/String;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v3    # "registerDO":Lc8/vXe;
    .restart local v7    # "utdid":Ljava/lang/String;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "registerDO":Lc8/vXe;
    .restart local v2    # "registerDO":Lc8/vXe;
    goto :goto_5

    .line 99
    .end local v2    # "registerDO":Lc8/vXe;
    .restart local v3    # "registerDO":Lc8/vXe;
    :catch_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "registerDO":Lc8/vXe;
    .restart local v2    # "registerDO":Lc8/vXe;
    goto :goto_4

    .end local v2    # "registerDO":Lc8/vXe;
    .restart local v3    # "registerDO":Lc8/vXe;
    .restart local v6    # "tm":Landroid/telephony/TelephonyManager;
    :cond_7
    move-object v2, v3

    .end local v3    # "registerDO":Lc8/vXe;
    .restart local v2    # "registerDO":Lc8/vXe;
    goto :goto_3
.end method


# virtual methods
.method public buildData()[B
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 43
    const/4 v1, 0x0

    .line 45
    .local v1, "result":[B
    :try_start_0
    new-instance v3, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    invoke-direct {v3}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;-><init>()V

    const-string/jumbo v4, "cmd"

    iget-object v5, p0, Lc8/vXe;->cmd:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v3

    const-string/jumbo v4, "appKey"

    iget-object v5, p0, Lc8/vXe;->appKey:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v3

    const-string/jumbo v4, "utdid"

    iget-object v5, p0, Lc8/vXe;->utdid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v3

    const-string/jumbo v4, "appVersion"

    iget-object v5, p0, Lc8/vXe;->appVersion:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v3

    const-string/jumbo v4, "sdkVersion"

    iget-object v5, p0, Lc8/vXe;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v3

    const-string/jumbo v4, "ttid"

    iget-object v5, p0, Lc8/vXe;->ttid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v3

    const-string/jumbo v4, "packageName"

    iget-object v5, p0, Lc8/vXe;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v3

    const-string/jumbo v4, "notifyEnable"

    iget-object v5, p0, Lc8/vXe;->notifyEnable:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v3

    const-string/jumbo v4, "romInfo"

    iget-object v5, p0, Lc8/vXe;->romInfo:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v3

    const-string/jumbo v4, "c0"

    iget-object v5, p0, Lc8/vXe;->c0:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v3

    const-string/jumbo v4, "c1"

    iget-object v5, p0, Lc8/vXe;->c1:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v3

    const-string/jumbo v4, "c2"

    iget-object v5, p0, Lc8/vXe;->c2:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v3

    const-string/jumbo v4, "c3"

    iget-object v5, p0, Lc8/vXe;->c3:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v3

    const-string/jumbo v4, "c4"

    iget-object v5, p0, Lc8/vXe;->c4:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v3

    const-string/jumbo v4, "c5"

    iget-object v5, p0, Lc8/vXe;->c5:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v3

    const-string/jumbo v4, "c6"

    iget-object v5, p0, Lc8/vXe;->c6:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->build()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "data":Ljava/lang/String;
    const-string/jumbo v3, "RegisterDO"

    const-string/jumbo v4, "buildData"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "data"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    const-string/jumbo v3, "utf-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 68
    .end local v0    # "data":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 65
    :catch_0
    move-exception v2

    .line 66
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "RegisterDO"

    const-string/jumbo v4, "buildData"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
