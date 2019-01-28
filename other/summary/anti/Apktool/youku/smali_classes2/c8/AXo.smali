.class public Lc8/AXo;
.super Ljava/lang/Object;
.source "YKWXWVWeb.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/CXo;
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
    .line 29
    iput-object p1, p0, Lc8/AXo;->this$0:Lc8/CXo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 32
    iget-object v1, p0, Lc8/AXo;->this$0:Lc8/CXo;

    iget-object v1, v1, Lc8/CXo;->wvucWebView:Lc8/DD;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/AXo;->this$0:Lc8/CXo;

    invoke-virtual {v1}, Lc8/CXo;->getDomObject()Lc8/qYf;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/AXo;->this$0:Lc8/CXo;

    invoke-virtual {v1}, Lc8/CXo;->getDomObject()Lc8/qYf;

    move-result-object v1

    invoke-interface {v1}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    const-string/jumbo v2, "sizechange"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 34
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "height"

    iget-object v2, p0, Lc8/AXo;->this$0:Lc8/CXo;

    iget-object v2, v2, Lc8/CXo;->wvucWebView:Lc8/DD;

    invoke-virtual {v2}, Lc8/DD;->getContentHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v1, p0, Lc8/AXo;->this$0:Lc8/CXo;

    const-string/jumbo v2, "sizechange"

    invoke-virtual {v1, v2, v0}, Lc8/CXo;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 37
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method
