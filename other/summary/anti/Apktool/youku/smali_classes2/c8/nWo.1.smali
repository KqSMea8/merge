.class public Lc8/nWo;
.super Lc8/xbg;
.source "YKDiv.java"


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lc8/xbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "instanceId"    # Ljava/lang/String;
    .param p5, "isLazy"    # Z

    .prologue
    .line 29
    invoke-direct/range {p0 .. p5}, Lc8/xbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Ljava/lang/String;Z)V

    .line 30
    return-void
.end method


# virtual methods
.method public updateProperties(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super {p0, p1}, Lc8/xbg;->updateProperties(Ljava/util/Map;)V

    .line 39
    invoke-virtual {p0}, Lc8/nWo;->getHostView()Landroid/view/View;

    move-result-object v1

    .line 40
    .local v1, "host":Landroid/view/View;
    if-nez v1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    new-instance v6, Lc8/mWo;

    invoke-direct {v6, p0, p1}, Lc8/mWo;-><init>(Lc8/nWo;Ljava/util/Map;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 69
    if-eqz p1, :cond_0

    const-string/jumbo v6, "track"

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 70
    const-string/jumbo v6, "track"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 71
    .local v5, "track":Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 72
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 73
    .local v2, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "str":Ljava/lang/String;
    :try_start_0
    const-class v6, Lcom/youku/weex/utils/ReportExtend;

    invoke-static {v4, v6}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/weex/utils/ReportExtend;

    .line 76
    .local v3, "report":Lcom/youku/weex/utils/ReportExtend;
    const-string/jumbo v6, "spm"

    iget-object v7, v3, Lcom/youku/weex/utils/ReportExtend;->spm:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string/jumbo v6, "scm"

    iget-object v7, v3, Lcom/youku/weex/utils/ReportExtend;->scm:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string/jumbo v6, "track_info"

    iget-object v7, v3, Lcom/youku/weex/utils/ReportExtend;->trackInfo:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string/jumbo v6, "utparam"

    iget-object v7, v3, Lcom/youku/weex/utils/ReportExtend;->utParam:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v3    # "report":Lcom/youku/weex/utils/ReportExtend;
    :goto_1
    const-string/jumbo v6, "Weex"

    invoke-static {v1, v2, v6}, Lc8/RMg;->setTrackerTagParam(Landroid/view/View;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
