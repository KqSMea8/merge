.class public final Lc8/Uyb;
.super Ljava/lang/Object;
.source "AnalyticsMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/gzb;->createInitTask()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 278
    const-string/jumbo v2, "call Remote init start..."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    :try_start_0
    sget-object v2, Lc8/gzb;->iAnalytics:Lc8/kzb;

    invoke-interface {v2}, Lc8/kzb;->initUT()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    const-string/jumbo v2, "call Remote init end"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "initut error"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 283
    invoke-static {}, Lc8/gzb;->access$300()V

    .line 285
    :try_start_1
    sget-object v2, Lc8/gzb;->iAnalytics:Lc8/kzb;

    invoke-interface {v2}, Lc8/kzb;->initUT()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 286
    :catch_1
    move-exception v1

    .line 287
    .local v1, "e2":Ljava/lang/Throwable;
    const-string/jumbo v2, "initut error"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
