.class public Lc8/Mag;
.super Lc8/MXf;
.source "WXAnimationModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Lag;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public transition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "ref"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "animation"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "callBack"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/Mag;->mWXSDKInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p1, p2, p3}, Lc8/YYf;->getAnimationAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc8/fYf;

    move-result-object v2

    .line 44
    .local v2, "animationActions":Lc8/fYf;
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pVf;->getWXDomManager()Lc8/EYf;

    move-result-object v0

    iget-object v1, p0, Lc8/Mag;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const-wide/16 v4, 0x10

    invoke-virtual/range {v0 .. v5}, Lc8/EYf;->postActionDelay(Ljava/lang/String;Lc8/fYf;ZJ)V

    .line 48
    .end local v2    # "animationActions":Lc8/fYf;
    :cond_0
    return-void
.end method
