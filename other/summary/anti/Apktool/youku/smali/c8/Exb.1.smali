.class public Lc8/Exb;
.super Lc8/RD;
.source "SimpleAudioPlayer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lc8/RD;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "wvCallBackContext"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 31
    const-string/jumbo v0, "SimpleAudioPlayer has been removed, use weex audio module instead."

    invoke-static {v0}, Lc8/xgg;->e(Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    return v0
.end method
