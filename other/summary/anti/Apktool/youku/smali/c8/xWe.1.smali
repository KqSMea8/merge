.class public Lc8/xWe;
.super Ljava/lang/Object;
.source "UtUtils.java"


# static fields
.field private static final UTDID_MODULE:Ljava/lang/String; = "UtdidMonitor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 54
    invoke-static {}, Lc8/oVe;->getInstance()Lc8/oVe;

    move-result-object v6

    invoke-virtual {v6}, Lc8/oVe;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 56
    const-string/jumbo v4, ""

    .line 71
    :cond_0
    :goto_0
    return-object v4

    .line 59
    :cond_1
    const-string/jumbo v4, ""

    .line 60
    .local v4, "userid":Ljava/lang/String;
    const-string/jumbo v6, "UTCommon"

    invoke-virtual {v0, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 61
    .local v3, "sp":Landroid/content/SharedPreferences;
    if-eqz v3, :cond_0

    .line 62
    const-string/jumbo v6, "_luid"

    const-string/jumbo v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "luid":Ljava/lang/String;
    invoke-static {v2}, Lc8/JWe;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 65
    :try_start_0
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lc8/FWe;->decode([BI)[B

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "userid":Ljava/lang/String;
    .local v5, "userid":Ljava/lang/String;
    move-object v4, v5

    .line 68
    .end local v5    # "userid":Ljava/lang/String;
    .restart local v4    # "userid":Ljava/lang/String;
    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v6, ""

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getUserNick()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 29
    invoke-static {}, Lc8/oVe;->getInstance()Lc8/oVe;

    move-result-object v6

    invoke-virtual {v6}, Lc8/oVe;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 30
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 31
    const-string/jumbo v4, ""

    .line 46
    :cond_0
    :goto_0
    return-object v4

    .line 34
    :cond_1
    const-string/jumbo v4, ""

    .line 35
    .local v4, "userNick":Ljava/lang/String;
    const-string/jumbo v6, "UTCommon"

    invoke-virtual {v0, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 36
    .local v3, "sp":Landroid/content/SharedPreferences;
    if-eqz v3, :cond_0

    .line 37
    const-string/jumbo v6, "_lun"

    const-string/jumbo v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "lun":Ljava/lang/String;
    invoke-static {v2}, Lc8/JWe;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 40
    :try_start_0
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lc8/FWe;->decode([BI)[B

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "userNick":Ljava/lang/String;
    .local v5, "userNick":Ljava/lang/String;
    move-object v4, v5

    .line 43
    .end local v5    # "userNick":Ljava/lang/String;
    .restart local v4    # "userNick":Ljava/lang/String;
    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, ""

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static sendUtdidMonitorEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 77
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "args":Ljava/lang/String;
    const-string/jumbo v3, "UtdidMonitor"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, p0, v0, v4, v5}, Lc8/zVb;->commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0    # "args":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, ""

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
