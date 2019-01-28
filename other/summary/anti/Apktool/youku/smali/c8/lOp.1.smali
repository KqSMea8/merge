.class public Lc8/lOp;
.super Ljava/lang/Object;
.source "MtopSDK.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMtopSDKInit()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-virtual {v0}, Lc8/AOp;->checkMtopSDKInit()Z

    .line 18
    return-void
.end method

.method public static setLogSwitch(Z)V
    .locals 1
    .param p0, "open"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/AOp;->logSwitch(Z)Lc8/AOp;

    .line 29
    return-void
.end method
