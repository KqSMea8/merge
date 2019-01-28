.class public Lc8/Pqb;
.super Lc8/MXf;
.source "WXShareModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    return-void
.end method


# virtual methods
.method public doShare(Ljava/lang/String;Lc8/EWf;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "callback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 13
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Fob;->getShareModuleAdapter()Lc8/Qob;

    move-result-object v0

    .line 14
    .local v0, "share":Lc8/Qob;
    if-eqz v0, :cond_0

    .line 15
    iget-object v1, p0, Lc8/Pqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lc8/Qob;->doShare(Landroid/content/Context;Ljava/lang/String;Lc8/EWf;)V

    .line 17
    :cond_0
    return-void
.end method
