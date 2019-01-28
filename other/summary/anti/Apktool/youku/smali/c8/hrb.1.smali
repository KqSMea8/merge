.class public Lc8/hrb;
.super Lc8/MXf;
.source "WXActionSheetModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    return-void
.end method


# virtual methods
.method public show(Ljava/lang/String;Lc8/EWf;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "callback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
        uiThread = true
    .end annotation

    .prologue
    .line 17
    iget-object v1, p0, Lc8/hrb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 18
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 21
    :goto_0
    return-void

    .line 19
    :cond_0
    invoke-static {v0, p1, p2}, Lc8/erb;->showActionSheet(Landroid/content/Context;Ljava/lang/String;Lc8/EWf;)V

    goto :goto_0
.end method
