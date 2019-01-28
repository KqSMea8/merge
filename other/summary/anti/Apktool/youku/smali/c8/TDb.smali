.class public Lc8/TDb;
.super Ljava/lang/Object;
.source "SdkMeta.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SdkMeta"

.field private static final meta:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    sput-object v0, Lc8/TDb;->meta:Ljava/util/Map;

    const-string/jumbo v1, "sdk-version"

    invoke-static {}, Lc8/jCb;->getInstance()Lc8/jCb;

    move-result-object v2

    invoke-virtual {v2}, Lc8/jCb;->getFullSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getHotPatchVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 67
    .local v1, "ret":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "com.taobao.updatecenter.hotpatch.HotPatchManager"

    const-string/jumbo v4, "getInstance"

    invoke-static {v3, v4}, Lc8/XBb;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    .local v0, "instance":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 69
    const-string/jumbo v3, "getPatchSuccessedVersion"

    invoke-static {v0, v3}, Lc8/XBb;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 70
    .local v2, "retValue":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 76
    .end local v0    # "instance":Ljava/lang/Object;
    .end local v2    # "retValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getSDKMetaData()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v6

    invoke-virtual {v6}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 21
    .local v2, "context":Landroid/content/Context;
    if-eqz v2, :cond_3

    .line 22
    sget-object v6, Lc8/TDb;->meta:Ljava/util/Map;

    const-string/jumbo v7, "pt"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 23
    const-string/jumbo v6, "package_type"

    invoke-static {v2, v6}, Lc8/TDb;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 24
    .local v5, "pt":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 25
    sget-object v6, Lc8/TDb;->meta:Ljava/util/Map;

    const-string/jumbo v7, "pt"

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .end local v5    # "pt":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v6, Lc8/TDb;->meta:Ljava/util/Map;

    const-string/jumbo v7, "pid"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 31
    const-string/jumbo v6, "project_id"

    invoke-static {v2, v6}, Lc8/TDb;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 32
    .local v4, "pid":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 33
    sget-object v6, Lc8/TDb;->meta:Ljava/util/Map;

    const-string/jumbo v7, "pid"

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .end local v4    # "pid":Ljava/lang/String;
    :cond_1
    :goto_1
    sget-object v6, Lc8/TDb;->meta:Ljava/util/Map;

    const-string/jumbo v7, "bid"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 39
    const-string/jumbo v6, "build_id"

    invoke-static {v2, v6}, Lc8/TDb;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "bid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 41
    sget-object v6, Lc8/TDb;->meta:Ljava/util/Map;

    const-string/jumbo v7, "bid"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .end local v0    # "bid":Ljava/lang/String;
    :cond_2
    :goto_2
    sget-object v6, Lc8/TDb;->meta:Ljava/util/Map;

    const-string/jumbo v7, "bv"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 47
    const-string/jumbo v6, "base_version"

    invoke-static {v2, v6}, Lc8/TDb;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "bv":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 49
    sget-object v6, Lc8/TDb;->meta:Ljava/util/Map;

    const-string/jumbo v7, "bv"

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .end local v1    # "bv":Ljava/lang/String;
    :cond_3
    :goto_3
    invoke-static {}, Lc8/TDb;->getHotPatchVersion()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "hv":Ljava/lang/String;
    sget-object v6, Lc8/TDb;->meta:Ljava/util/Map;

    const-string/jumbo v7, "hv"

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v6, Lc8/TDb;->meta:Ljava/util/Map;

    const-string/jumbo v7, "sdk-version"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 59
    sget-object v6, Lc8/TDb;->meta:Ljava/util/Map;

    const-string/jumbo v7, "sdk-version"

    invoke-static {}, Lc8/jCb;->getInstance()Lc8/jCb;

    move-result-object v8

    invoke-virtual {v8}, Lc8/jCb;->getFullSDKVersion()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_4
    sget-object v6, Lc8/TDb;->meta:Ljava/util/Map;

    return-object v6

    .line 27
    .end local v3    # "hv":Ljava/lang/String;
    .restart local v5    # "pt":Ljava/lang/String;
    :cond_5
    sget-object v6, Lc8/TDb;->meta:Ljava/util/Map;

    const-string/jumbo v7, "pt"

    const-string/jumbo v8, ""

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 35
    .end local v5    # "pt":Ljava/lang/String;
    .restart local v4    # "pid":Ljava/lang/String;
    :cond_6
    sget-object v6, Lc8/TDb;->meta:Ljava/util/Map;

    const-string/jumbo v7, "pid"

    const-string/jumbo v8, ""

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 43
    .end local v4    # "pid":Ljava/lang/String;
    .restart local v0    # "bid":Ljava/lang/String;
    :cond_7
    sget-object v6, Lc8/TDb;->meta:Ljava/util/Map;

    const-string/jumbo v7, "bid"

    const-string/jumbo v8, ""

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 51
    .end local v0    # "bid":Ljava/lang/String;
    .restart local v1    # "bv":Ljava/lang/String;
    :cond_8
    sget-object v6, Lc8/TDb;->meta:Ljava/util/Map;

    const-string/jumbo v7, "bv"

    const-string/jumbo v8, ""

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 91
    if-nez p0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-object v2

    .line 94
    :cond_1
    const/4 v1, 0x0

    .line 96
    .local v1, "id":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 101
    :goto_1
    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "SdkMeta"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "getString Id error"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static setExtra(Ljava/util/Map;)V
    .locals 1
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
    .line 85
    .local p0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 86
    sget-object v0, Lc8/TDb;->meta:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 88
    :cond_0
    return-void
.end method
