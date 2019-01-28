.class public Lc8/Zdg;
.super Lc8/MXf;
.source "WXWebViewModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/module/WXWebViewModule$Action;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    .line 29
    return-void
.end method

.method private action(Lcom/taobao/weex/ui/module/WXWebViewModule$Action;Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Lcom/taobao/weex/ui/module/WXWebViewModule$Action;
    .param p2, "ref"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/pVf;->getWXRenderManager()Lc8/Cag;

    move-result-object v1

    iget-object v2, p0, Lc8/Zdg;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lc8/Cag;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lc8/tbg;

    move-result-object v0

    .line 56
    .local v0, "webComponent":Lc8/tbg;
    instance-of v1, v0, Lc8/Acg;

    if-eqz v1, :cond_0

    .line 57
    check-cast v0, Lc8/Acg;

    .end local v0    # "webComponent":Lc8/tbg;
    invoke-virtual {p1}, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Acg;->setAction(Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public goBack(Ljava/lang/String;)V
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
        uiThread = true
    .end annotation

    .prologue
    .line 37
    sget-object v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->goBack:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    invoke-direct {p0, v0, p1}, Lc8/Zdg;->action(Lcom/taobao/weex/ui/module/WXWebViewModule$Action;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public goForward(Ljava/lang/String;)V
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
        uiThread = true
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->goForward:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    invoke-direct {p0, v0, p1}, Lc8/Zdg;->action(Lcom/taobao/weex/ui/module/WXWebViewModule$Action;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public reload(Ljava/lang/String;)V
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
        uiThread = true
    .end annotation

    .prologue
    .line 47
    sget-object v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->reload:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    invoke-direct {p0, v0, p1}, Lc8/Zdg;->action(Lcom/taobao/weex/ui/module/WXWebViewModule$Action;Ljava/lang/String;)V

    .line 48
    return-void
.end method
