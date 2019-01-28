.class public Lc8/Gqb;
.super Lc8/MXf;
.source "WXEventModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    return-void
.end method


# virtual methods
.method public openURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 12
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Fob;->getEventModuleAdapter()Lc8/Lob;

    move-result-object v0

    .line 13
    .local v0, "event":Lc8/Lob;
    if-eqz v0, :cond_0

    .line 14
    iget-object v1, p0, Lc8/Gqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lc8/Lob;->openURL(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    :cond_0
    return-void
.end method
