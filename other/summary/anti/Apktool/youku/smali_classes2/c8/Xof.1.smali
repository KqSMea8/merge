.class public Lc8/Xof;
.super Ljava/lang/Object;
.source "AlibcSecurityGuard.java"


# static fields
.field private static final CLASS_IUMID:Ljava/lang/String; = "com.alibaba.wireless.security.open.umid.IUMIDComponent"

.field private static final CLASS_SGM:Ljava/lang/String; = "com.alibaba.wireless.security.open.SecurityGuardManager"

.field private static final FIELD_ONLINE_ENV:I = 0x0

.field private static final METHOD_GET_INSTANCE:Ljava/lang/String; = "getInstance"

.field private static final METHOD_GET_IUMID:Ljava/lang/String; = "getUMIDComp"

.field private static final METHOD_GET_TOKEN:Ljava/lang/String; = "getSecurityToken"

.field private static final METHOD_INIT_SYNC:Ljava/lang/String; = "initUMIDSync"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getUmid(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const-class v7, Lc8/Xof;

    monitor-enter v7

    if-nez p0, :cond_0

    .line 33
    :try_start_0
    const-string/jumbo v4, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :goto_0
    monitor-exit v7

    return-object v4

    .line 36
    :cond_0
    :try_start_1
    const-string/jumbo v6, "umid"

    const-string/jumbo v8, ""

    invoke-static {p0, v6, v8}, Lc8/lpf;->getVal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, "umid":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 38
    const-string/jumbo v6, "DeviceProbe"

    const-string/jumbo v8, "sp\u4e2d\u6709umid\u4fe1\u606f,\u76f4\u63a5\u8fd4\u56de"

    invoke-static {v6, v8}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 32
    .end local v4    # "umid":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 41
    .restart local v4    # "umid":Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string/jumbo v6, "DeviceProbe"

    const-string/jumbo v8, "sp\u4e2d\u6ca1\u6709umid\u4fe1\u606f,\u901a\u8fc7\u53cd\u5c04\u83b7\u53d6umid"

    invoke-static {v6, v8}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    :try_start_3
    const-string/jumbo v6, "com.alibaba.wireless.security.open.SecurityGuardManager"

    invoke-static {v6}, Lc8/Xof;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 47
    const-string/jumbo v6, "com.alibaba.wireless.security.open.SecurityGuardManager"

    const-string/jumbo v8, "getInstance"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "android.content.Context"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p0, v11, v12

    invoke-static {v6, v8, v9, v10, v11}, Lc8/cpf;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 51
    .local v3, "securityGuardManager":Ljava/lang/Object;
    const-string/jumbo v6, "com.alibaba.wireless.security.open.SecurityGuardManager"

    const-string/jumbo v8, "getUMIDComp"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v8, v9, v3, v10}, Lc8/cpf;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 55
    .local v5, "umidComponent":Ljava/lang/Object;
    const-string/jumbo v6, "com.alibaba.wireless.security.open.umid.IUMIDComponent"

    const-string/jumbo v8, "initUMIDSync"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "int"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v8, v9, v5, v10}, Lc8/cpf;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 59
    .local v2, "initResult":Ljava/lang/Integer;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v8, 0xc8

    if-eq v6, v8, :cond_3

    .line 60
    :cond_2
    const-string/jumbo v4, ""

    goto/16 :goto_0

    .line 64
    :cond_3
    const-string/jumbo v6, "com.alibaba.wireless.security.open.umid.IUMIDComponent"

    const-string/jumbo v8, "getSecurityToken"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "int"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v8, v9, v5, v10}, Lc8/cpf;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 68
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v8, 0x20

    if-ne v6, v8, :cond_4

    .line 70
    const-string/jumbo v6, "umid"

    invoke-static {p0, v6, v4}, Lc8/lpf;->saveVal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 74
    .end local v2    # "initResult":Ljava/lang/Integer;
    .end local v3    # "securityGuardManager":Ljava/lang/Object;
    .end local v5    # "umidComponent":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v6, "AlibcSecurityGuard"

    const-string/jumbo v8, "getUmid error"

    invoke-static {v6, v8, v1}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    const-string/jumbo v4, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public static declared-synchronized hasGetUMIDSuccess(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 87
    const-class v2, Lc8/Xof;

    monitor-enter v2

    if-nez p0, :cond_0

    .line 98
    :goto_0
    monitor-exit v2

    return v1

    .line 91
    :cond_0
    :try_start_0
    const-string/jumbo v3, "umid"

    const-string/jumbo v4, ""

    invoke-static {p0, v3, v4}, Lc8/lpf;->getVal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "umid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 93
    const-string/jumbo v1, "DeviceProbe"

    const-string/jumbo v3, "umid\u4fe1\u606f\u5df2\u7ecf\u5b58\u5728sp\u4e2d"

    invoke-static {v1, v3}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v1, 0x1

    goto :goto_0

    .line 97
    :cond_1
    const-string/jumbo v3, "DeviceProbe"

    const-string/jumbo v4, "umid\u4fe1\u606f\u6ca1\u6709\u5b58\u5728sp\u4e2d"

    invoke-static {v3, v4}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 87
    .end local v0    # "umid":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
