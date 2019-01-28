.class public Lc8/job;
.super Ljava/lang/Object;
.source "ALPOpenParam.java"


# static fields
.field private static final CLASS_SDSC:Ljava/lang/String; = "com.alibaba.wireless.security.open.staticdatastore.IStaticDataStoreComponent"

.field private static final CLASS_SGM:Ljava/lang/String; = "com.alibaba.wireless.security.open.SecurityGuardManager"

.field private static final METHOD_GET_APPKEY_BY_INDEX:Ljava/lang/String; = "getAppKeyByIndex"

.field private static final METHOD_GET_INSTANCE:Ljava/lang/String; = "getInstance"

.field private static final METHOD_GET_SDSC:Ljava/lang/String; = "getStaticDataStoreComp"

.field public static tempVal:Ljava/lang/String;


# instance fields
.field public volatile TTID:Ljava/lang/String;

.field public volatile appkey:Ljava/lang/String;

.field public volatile utdid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appkey"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 50
    iput-object p2, p0, Lc8/job;->appkey:Ljava/lang/String;

    .line 55
    :goto_0
    iget-object v0, p0, Lc8/job;->appkey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/job;->appkey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    const-string/jumbo v0, "0000000"

    iput-object v0, p0, Lc8/job;->appkey:Ljava/lang/String;

    .line 59
    :cond_1
    sget-object v0, Lc8/job;->tempVal:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 60
    sget-object v0, Lc8/job;->tempVal:Ljava/lang/String;

    iput-object v0, p0, Lc8/job;->TTID:Ljava/lang/String;

    .line 66
    :goto_1
    invoke-direct {p0, p1}, Lc8/job;->setUtdid(Landroid/content/Context;)V

    .line 67
    return-void

    .line 52
    :cond_2
    invoke-direct {p0, p1}, Lc8/job;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/job;->appkey:Ljava/lang/String;

    goto :goto_0

    .line 63
    :cond_3
    iget-object v0, p0, Lc8/job;->appkey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lc8/job;->setDefaultTTID(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private getAppkey(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 97
    if-nez p1, :cond_0

    move-object v3, v4

    .line 120
    :goto_0
    return-object v3

    .line 102
    :cond_0
    :try_start_0
    const-string/jumbo v3, "com.alibaba.wireless.security.open.SecurityGuardManager"

    invoke-static {v3}, Lc8/job;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 104
    const-string/jumbo v3, "com.alibaba.wireless.security.open.SecurityGuardManager"

    const-string/jumbo v5, "getInstance"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "android.content.Context"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v3, v5, v6, v7, v8}, Lc8/uob;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 107
    .local v1, "securityGuardManager":Ljava/lang/Object;
    const-string/jumbo v3, "com.alibaba.wireless.security.open.SecurityGuardManager"

    const-string/jumbo v5, "getStaticDataStoreComp"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v1, v7}, Lc8/uob;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 110
    .local v2, "staticDataStoreComp":Ljava/lang/Object;
    const-string/jumbo v3, "com.alibaba.wireless.security.open.staticdatastore.IStaticDataStoreComponent"

    const-string/jumbo v5, "getAppKeyByIndex"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "int"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "java.lang.String"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-object v9, v7, v8

    invoke-static {v3, v5, v6, v2, v7}, Lc8/uob;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    .end local v1    # "securityGuardManager":Ljava/lang/Object;
    .end local v2    # "staticDataStoreComp":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ALPOpenParam"

    const-string/jumbo v5, "getAppkey"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getappkey fail , errmsg ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 117
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v3, v4

    .line 120
    goto/16 :goto_0
.end method

.method private setDefaultTTID(Ljava/lang/String;)V
    .locals 4
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    .line 82
    if-eqz p1, :cond_0

    iget-object v1, p0, Lc8/job;->appkey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const-string/jumbo v0, "2014_0_%s@baichuan_android_%s_linkout"

    .line 87
    .local v0, "ttid":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lc8/Ymb;->getSDKVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 88
    iput-object v0, p0, Lc8/job;->TTID:Ljava/lang/String;

    goto :goto_0
.end method

.method private setUtdid(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-static {p1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/job;->utdid:Ljava/lang/String;

    .line 75
    return-void
.end method
