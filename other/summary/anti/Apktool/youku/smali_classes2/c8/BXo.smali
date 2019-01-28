.class public Lc8/BXo;
.super Ljava/lang/Object;
.source "YKWXWVWeb.java"

# interfaces
.implements Lc8/feg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/CXo;->createViewImpl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/CXo;


# direct methods
.method constructor <init>(Lc8/CXo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/CXo;

    .prologue
    .line 57
    iput-object p1, p0, Lc8/BXo;->this$0:Lc8/CXo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinish(Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "canGoBack"    # Z
    .param p3, "canGoForward"    # Z

    .prologue
    .line 77
    iget-object v1, p0, Lc8/BXo;->this$0:Lc8/CXo;

    invoke-virtual {v1}, Lc8/CXo;->getDomObject()Lc8/qYf;

    move-result-object v1

    invoke-interface {v1}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    const-string/jumbo v2, "pagefinish"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "url"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string/jumbo v1, "canGoBack"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v1, "canGoForward"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lc8/BXo;->this$0:Lc8/CXo;

    iget-object v1, v1, Lc8/CXo;->wvucWebView:Lc8/DD;

    if-eqz v1, :cond_0

    .line 83
    const-string/jumbo v1, "height"

    iget-object v2, p0, Lc8/BXo;->this$0:Lc8/CXo;

    iget-object v2, v2, Lc8/CXo;->wvucWebView:Lc8/DD;

    invoke-virtual {v2}, Lc8/DD;->getContentHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v1, p0, Lc8/BXo;->this$0:Lc8/CXo;

    iget-object v1, v1, Lc8/CXo;->wvucWebView:Lc8/DD;

    iget-object v2, p0, Lc8/BXo;->this$0:Lc8/CXo;

    invoke-static {v2}, Lc8/CXo;->access$000(Lc8/CXo;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Lc8/DD;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    iget-object v1, p0, Lc8/BXo;->this$0:Lc8/CXo;

    iget-object v1, v1, Lc8/CXo;->wvucWebView:Lc8/DD;

    iget-object v2, p0, Lc8/BXo;->this$0:Lc8/CXo;

    invoke-static {v2}, Lc8/CXo;->access$000(Lc8/CXo;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Lc8/DD;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    :cond_0
    iget-object v1, p0, Lc8/BXo;->this$0:Lc8/CXo;

    const-string/jumbo v2, "pagefinish"

    invoke-virtual {v1, v2, v0}, Lc8/CXo;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 89
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method public onPageStart(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v1, p0, Lc8/BXo;->this$0:Lc8/CXo;

    invoke-virtual {v1}, Lc8/CXo;->getDomObject()Lc8/qYf;

    move-result-object v1

    invoke-interface {v1}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    const-string/jumbo v2, "pagestart"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "url"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v1, p0, Lc8/BXo;->this$0:Lc8/CXo;

    const-string/jumbo v2, "pagestart"

    invoke-virtual {v1, v2, v0}, Lc8/CXo;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 74
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v1, p0, Lc8/BXo;->this$0:Lc8/CXo;

    invoke-virtual {v1}, Lc8/CXo;->getDomObject()Lc8/qYf;

    move-result-object v1

    invoke-interface {v1}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    const-string/jumbo v2, "receivedtitle"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "title"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v1, p0, Lc8/BXo;->this$0:Lc8/CXo;

    const-string/jumbo v2, "receivedtitle"

    invoke-virtual {v1, v2, v0}, Lc8/CXo;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 65
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method
