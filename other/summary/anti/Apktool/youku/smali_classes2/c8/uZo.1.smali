.class public Lc8/uZo;
.super Ljava/lang/Object;
.source "FlowLimit.java"


# static fields
.field private static TIP_TIME_INTERVAL:J

.field private static handler:Landroid/os/Handler;

.field public static volatile isForeGround:Z

.field private static previousToastShow:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lc8/uZo;->isForeGround:Z

    .line 17
    const-wide/16 v0, 0x0

    sput-wide v0, Lc8/uZo;->previousToastShow:J

    .line 18
    const-wide/16 v0, 0x7d0

    sput-wide v0, Lc8/uZo;->TIP_TIME_INTERVAL:J

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lc8/uZo;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showFlotLimitTip(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const-string/jumbo v0, "\u88ab\u6324\u7206\u4e86\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5"

    invoke-static {p0, v0}, Lc8/uZo;->showTips(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method private static showTips(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tipsString"    # Ljava/lang/String;

    .prologue
    .line 28
    if-eqz p0, :cond_0

    sget-boolean v2, Lc8/uZo;->isForeGround:Z

    if-eqz v2, :cond_0

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 30
    .local v0, "thisTime":J
    sget-wide v2, Lc8/uZo;->previousToastShow:J

    sub-long v2, v0, v2

    sget-wide v4, Lc8/uZo;->TIP_TIME_INTERVAL:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 41
    .end local v0    # "thisTime":J
    :cond_0
    :goto_0
    return-void

    .line 33
    .restart local v0    # "thisTime":J
    :cond_1
    sget-object v2, Lc8/uZo;->handler:Landroid/os/Handler;

    new-instance v3, Lc8/tZo;

    invoke-direct {v3, p1}, Lc8/tZo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    sput-wide v0, Lc8/uZo;->previousToastShow:J

    goto :goto_0
.end method
