.class public Lc8/cnb;
.super Ljava/lang/Object;
.source "ALPCallbackCleaner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/dnb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackCleanTask"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 58
    sget-object v4, Lc8/fnb;->callbackInfo:Lc8/enb;

    if-eqz v4, :cond_0

    .line 59
    sget-object v4, Lc8/fnb;->callbackInfo:Lc8/enb;

    iget-wide v0, v4, Lc8/enb;->timeStamp:J

    .line 60
    .local v0, "createTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 61
    .local v2, "currentTime":J
    sub-long v4, v2, v0

    invoke-static {}, Lc8/dnb;->access$000()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 62
    sget-object v4, Lc8/fnb;->callbackInfo:Lc8/enb;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lc8/enb;->onError(I)V

    .line 63
    const/4 v4, 0x0

    sput-object v4, Lc8/fnb;->callbackInfo:Lc8/enb;

    .line 69
    .end local v0    # "createTime":J
    .end local v2    # "currentTime":J
    :cond_0
    :goto_0
    return-void

    .line 65
    .restart local v0    # "createTime":J
    .restart local v2    # "currentTime":J
    :cond_1
    invoke-static {}, Lc8/dnb;->access$100()Landroid/os/Handler;

    move-result-object v4

    invoke-static {}, Lc8/dnb;->access$000()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
