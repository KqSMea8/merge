.class public Lc8/Kfg;
.super Ljava/lang/Object;
.source "ATagUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "widget"    # Landroid/view/View;
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v3

    invoke-virtual {v3, p1}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v2

    .line 33
    .local v2, "instance":Lc8/nVf;
    if-nez v2, :cond_0

    .line 41
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "link"

    invoke-virtual {v2, v3, v4}, Lc8/nVf;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "href":Ljava/lang/String;
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 38
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/pVf;->getWXBridgeManager()Lc8/ZWf;

    move-result-object v3

    const-string/jumbo v4, "event"

    const-string/jumbo v5, "openURL"

    invoke-virtual {v3, p1, v4, v5, v0}, Lc8/ZWf;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    goto :goto_0
.end method
