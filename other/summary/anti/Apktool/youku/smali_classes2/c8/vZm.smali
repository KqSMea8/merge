.class public Lc8/vZm;
.super Ljava/lang/Object;
.source "MotuReportDelegate.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "YKMotuReport"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static upload()V
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lc8/KWc;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/vZm;->uploadImpl(Landroid/content/Context;Lc8/dSb;)V

    .line 22
    return-void
.end method

.method public static upload(Lc8/dSb;)V
    .locals 1
    .param p0, "base"    # Lc8/dSb;

    .prologue
    .line 25
    sget-object v0, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lc8/vZm;->uploadImpl(Landroid/content/Context;Lc8/dSb;)V

    .line 26
    return-void
.end method

.method private static declared-synchronized uploadImpl(Landroid/content/Context;Lc8/dSb;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "base"    # Lc8/dSb;

    .prologue
    .line 30
    const-class v2, Lc8/vZm;

    monitor-enter v2

    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Lc8/zZm;->canReport()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 43
    :goto_0
    monitor-exit v2

    return-void

    .line 37
    :cond_0
    :try_start_1
    invoke-static {}, Lc8/iSb;->getInstance()Lc8/iSb;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lc8/iSb;->build(Landroid/content/Context;Lc8/pSb;)Lc8/rSb;

    move-result-object v0

    .line 38
    .local v0, "e":Lc8/rSb;
    invoke-static {}, Lc8/tSb;->getInstance()Lc8/tSb;

    move-result-object v1

    new-instance v3, Lc8/wZm;

    invoke-direct {v3, v0, p0}, Lc8/wZm;-><init>(Lc8/rSb;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Lc8/tSb;->submit(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 39
    .end local v0    # "e":Lc8/rSb;
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "upload exception"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 30
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
