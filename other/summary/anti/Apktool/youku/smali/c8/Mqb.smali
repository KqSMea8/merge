.class public Lc8/Mqb;
.super Lc8/MXf;
.source "WXNavigationBarModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Lqb;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    .line 140
    return-void
.end method

.method private getResultData(Lc8/Iob;)Lcom/alibaba/fastjson/JSONObject;
    .locals 5
    .param p1, "error"    # Lc8/Iob;

    .prologue
    .line 87
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 88
    .local v1, "obj":Lcom/alibaba/fastjson/JSONObject;
    if-eqz p1, :cond_0

    .line 89
    const-string/jumbo v3, "message"

    iget-object v4, p1, Lc8/Iob;->message:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string/jumbo v3, "result"

    iget-object v4, p1, Lc8/Iob;->result:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v3, p1, Lc8/Iob;->options:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 92
    iget-object v3, p1, Lc8/Iob;->options:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p1, Lc8/Iob;->options:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 94
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 98
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private notSupported(Lc8/EWf;)V
    .locals 3
    .param p1, "failure"    # Lc8/EWf;

    .prologue
    .line 102
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 103
    .local v0, "msg":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "result"

    const-string/jumbo v2, "WX_NOT_SUPPORTED"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-interface {p1, v0}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method private setMenuItem(Lc8/Lqb;Z)V
    .locals 6
    .param p1, "item"    # Lc8/Lqb;
    .param p2, "left"    # Z

    .prologue
    .line 108
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Fob;->getNavigationBarModuleAdapter()Lc8/Oob;

    move-result-object v1

    .line 109
    .local v1, "navbar":Lc8/Oob;
    if-eqz v1, :cond_3

    .line 110
    if-eqz p1, :cond_0

    .line 111
    if-eqz p2, :cond_1

    iget-object v3, p0, Lc8/Mqb;->mWXSDKInstance:Lc8/nVf;

    iget-object v4, p1, Lc8/Lqb;->options:Lcom/alibaba/fastjson/JSONObject;

    new-instance v5, Lc8/Jqb;

    invoke-direct {v5, p0, p1}, Lc8/Jqb;-><init>(Lc8/Mqb;Lc8/Lqb;)V

    invoke-virtual {v1, v3, v4, v5}, Lc8/Oob;->setLeftItem(Lc8/nVf;Lcom/alibaba/fastjson/JSONObject;Lc8/Nob;)Lc8/Iob;

    move-result-object v0

    .line 126
    .local v0, "error":Lc8/Iob;
    :goto_0
    invoke-direct {p0, v0}, Lc8/Mqb;->getResultData(Lc8/Iob;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 127
    .local v2, "result":Lcom/alibaba/fastjson/JSONObject;
    if-nez v0, :cond_2

    .line 128
    iget-object v3, p1, Lc8/Lqb;->success:Lc8/EWf;

    invoke-interface {v3, v2}, Lc8/EWf;->invokeAndKeepAlive(Ljava/lang/Object;)V

    .line 138
    .end local v0    # "error":Lc8/Iob;
    .end local v2    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    :goto_1
    return-void

    .line 111
    :cond_1
    iget-object v3, p0, Lc8/Mqb;->mWXSDKInstance:Lc8/nVf;

    iget-object v4, p1, Lc8/Lqb;->options:Lcom/alibaba/fastjson/JSONObject;

    new-instance v5, Lc8/Kqb;

    invoke-direct {v5, p0, p1}, Lc8/Kqb;-><init>(Lc8/Mqb;Lc8/Lqb;)V

    .line 118
    invoke-virtual {v1, v3, v4, v5}, Lc8/Oob;->setRightItem(Lc8/nVf;Lcom/alibaba/fastjson/JSONObject;Lc8/Nob;)Lc8/Iob;

    move-result-object v0

    goto :goto_0

    .line 130
    .restart local v0    # "error":Lc8/Iob;
    .restart local v2    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    iget-object v3, p1, Lc8/Lqb;->failure:Lc8/EWf;

    invoke-interface {v3, v2}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    goto :goto_1

    .line 134
    .end local v0    # "error":Lc8/Iob;
    .end local v2    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    if-eqz p1, :cond_0

    .line 135
    iget-object v3, p1, Lc8/Lqb;->failure:Lc8/EWf;

    invoke-direct {p0, v3}, Lc8/Mqb;->notSupported(Lc8/EWf;)V

    goto :goto_1
.end method


# virtual methods
.method public hide(Lcom/alibaba/fastjson/JSONObject;Lc8/EWf;Lc8/EWf;)V
    .locals 4
    .param p1, "options"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "success"    # Lc8/EWf;
    .param p3, "failure"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 42
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Fob;->getNavigationBarModuleAdapter()Lc8/Oob;

    move-result-object v2

    .line 43
    .local v2, "navbar":Lc8/Oob;
    if-eqz v2, :cond_1

    .line 44
    iget-object v3, p0, Lc8/Mqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2, v3, p1}, Lc8/Oob;->hide(Lc8/nVf;Lcom/alibaba/fastjson/JSONObject;)Lc8/Iob;

    move-result-object v1

    .line 45
    .local v1, "error":Lc8/Iob;
    if-nez v1, :cond_0

    move-object v0, p2

    .line 46
    .local v0, "cb":Lc8/EWf;
    :goto_0
    invoke-direct {p0, v1}, Lc8/Mqb;->getResultData(Lc8/Iob;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    invoke-interface {v0, v3}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 50
    .end local v0    # "cb":Lc8/EWf;
    .end local v1    # "error":Lc8/Iob;
    :goto_1
    return-void

    .restart local v1    # "error":Lc8/Iob;
    :cond_0
    move-object v0, p3

    .line 45
    goto :goto_0

    .line 48
    .end local v1    # "error":Lc8/Iob;
    :cond_1
    invoke-direct {p0, p3}, Lc8/Mqb;->notSupported(Lc8/EWf;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 21
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Fob;->getNavigationBarModuleAdapter()Lc8/Oob;

    move-result-object v0

    .line 22
    .local v0, "navbar":Lc8/Oob;
    if-eqz v0, :cond_0

    .line 23
    iget-object v1, p0, Lc8/Mqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0, v1, p1}, Lc8/Oob;->onCreateOptionsMenu(Lc8/nVf;Landroid/view/Menu;)Z

    .line 25
    :cond_0
    invoke-super {p0, p1}, Lc8/MXf;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public setLeftItem(Lcom/alibaba/fastjson/JSONObject;Lc8/EWf;Lc8/EWf;)V
    .locals 2
    .param p1, "options"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "success"    # Lc8/EWf;
    .param p3, "failure"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lc8/Lqb;

    invoke-direct {v0, p1, p2, p3}, Lc8/Lqb;-><init>(Lcom/alibaba/fastjson/JSONObject;Lc8/EWf;Lc8/EWf;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lc8/Mqb;->setMenuItem(Lc8/Lqb;Z)V

    .line 67
    return-void
.end method

.method public setRightItem(Lcom/alibaba/fastjson/JSONObject;Lc8/EWf;Lc8/EWf;)V
    .locals 2
    .param p1, "options"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "success"    # Lc8/EWf;
    .param p3, "failure"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lc8/Lqb;

    invoke-direct {v0, p1, p2, p3}, Lc8/Lqb;-><init>(Lcom/alibaba/fastjson/JSONObject;Lc8/EWf;Lc8/EWf;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lc8/Mqb;->setMenuItem(Lc8/Lqb;Z)V

    .line 72
    return-void
.end method

.method public setStyle(Lcom/alibaba/fastjson/JSONObject;Lc8/EWf;Lc8/EWf;)V
    .locals 4
    .param p1, "options"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "success"    # Lc8/EWf;
    .param p3, "failure"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Fob;->getNavigationBarModuleAdapter()Lc8/Oob;

    move-result-object v2

    .line 77
    .local v2, "navbar":Lc8/Oob;
    if-eqz v2, :cond_1

    .line 78
    iget-object v3, p0, Lc8/Mqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2, v3, p1}, Lc8/Oob;->setStyle(Lc8/nVf;Lcom/alibaba/fastjson/JSONObject;)Lc8/Iob;

    move-result-object v1

    .line 79
    .local v1, "error":Lc8/Iob;
    if-nez v1, :cond_0

    move-object v0, p2

    .line 80
    .local v0, "cb":Lc8/EWf;
    :goto_0
    invoke-direct {p0, v1}, Lc8/Mqb;->getResultData(Lc8/Iob;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    invoke-interface {v0, v3}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 84
    .end local v0    # "cb":Lc8/EWf;
    .end local v1    # "error":Lc8/Iob;
    :goto_1
    return-void

    .restart local v1    # "error":Lc8/Iob;
    :cond_0
    move-object v0, p3

    .line 79
    goto :goto_0

    .line 82
    .end local v1    # "error":Lc8/Iob;
    :cond_1
    invoke-direct {p0, p3}, Lc8/Mqb;->notSupported(Lc8/EWf;)V

    goto :goto_1
.end method

.method public setTitle(Lcom/alibaba/fastjson/JSONObject;Lc8/EWf;Lc8/EWf;)V
    .locals 4
    .param p1, "options"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "success"    # Lc8/EWf;
    .param p3, "failure"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 54
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Fob;->getNavigationBarModuleAdapter()Lc8/Oob;

    move-result-object v2

    .line 55
    .local v2, "navbar":Lc8/Oob;
    if-eqz v2, :cond_1

    .line 56
    iget-object v3, p0, Lc8/Mqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2, v3, p1}, Lc8/Oob;->setTitle(Lc8/nVf;Lcom/alibaba/fastjson/JSONObject;)Lc8/Iob;

    move-result-object v1

    .line 57
    .local v1, "error":Lc8/Iob;
    if-nez v1, :cond_0

    move-object v0, p2

    .line 58
    .local v0, "cb":Lc8/EWf;
    :goto_0
    invoke-direct {p0, v1}, Lc8/Mqb;->getResultData(Lc8/Iob;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    invoke-interface {v0, v3}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 62
    .end local v0    # "cb":Lc8/EWf;
    .end local v1    # "error":Lc8/Iob;
    :goto_1
    return-void

    .restart local v1    # "error":Lc8/Iob;
    :cond_0
    move-object v0, p3

    .line 57
    goto :goto_0

    .line 60
    .end local v1    # "error":Lc8/Iob;
    :cond_1
    invoke-direct {p0, p3}, Lc8/Mqb;->notSupported(Lc8/EWf;)V

    goto :goto_1
.end method

.method public show(Lcom/alibaba/fastjson/JSONObject;Lc8/EWf;Lc8/EWf;)V
    .locals 4
    .param p1, "options"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "success"    # Lc8/EWf;
    .param p3, "failure"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 30
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Fob;->getNavigationBarModuleAdapter()Lc8/Oob;

    move-result-object v2

    .line 31
    .local v2, "navbar":Lc8/Oob;
    if-eqz v2, :cond_1

    .line 32
    iget-object v3, p0, Lc8/Mqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2, v3, p1}, Lc8/Oob;->show(Lc8/nVf;Lcom/alibaba/fastjson/JSONObject;)Lc8/Iob;

    move-result-object v1

    .line 33
    .local v1, "error":Lc8/Iob;
    if-nez v1, :cond_0

    move-object v0, p2

    .line 34
    .local v0, "cb":Lc8/EWf;
    :goto_0
    invoke-direct {p0, v1}, Lc8/Mqb;->getResultData(Lc8/Iob;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    invoke-interface {v0, v3}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 38
    .end local v0    # "cb":Lc8/EWf;
    .end local v1    # "error":Lc8/Iob;
    :goto_1
    return-void

    .restart local v1    # "error":Lc8/Iob;
    :cond_0
    move-object v0, p3

    .line 33
    goto :goto_0

    .line 36
    .end local v1    # "error":Lc8/Iob;
    :cond_1
    invoke-direct {p0, p3}, Lc8/Mqb;->notSupported(Lc8/EWf;)V

    goto :goto_1
.end method
