.class public Lc8/kSb;
.super Ljava/lang/Object;
.source "MotuReportAdapteHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/jSb;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public adapter(Landroid/content/Context;Lc8/pSb;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "base"    # Lc8/pSb;

    .prologue
    .line 24
    :try_start_0
    invoke-static {}, Lc8/iSb;->getInstance()Lc8/iSb;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lc8/iSb;->build(Landroid/content/Context;Lc8/pSb;)Lc8/rSb;

    move-result-object v2

    .line 25
    .local v2, "result":Lc8/rSb;
    if-eqz v2, :cond_0

    .line 26
    new-instance v0, Lc8/jSb;

    invoke-direct {v0, p0, v2, p1}, Lc8/jSb;-><init>(Lc8/kSb;Lc8/rSb;Landroid/content/Context;)V

    .line 29
    .local v0, "adapterSendThread":Lc8/jSb;
    invoke-static {}, Lc8/tSb;->getInstance()Lc8/tSb;

    move-result-object v3

    invoke-virtual {v3, v0}, Lc8/tSb;->submit(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v0    # "adapterSendThread":Lc8/jSb;
    .end local v2    # "result":Lc8/rSb;
    :cond_0
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MotuCrashAdapter"

    const-string/jumbo v4, "adapter err"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
