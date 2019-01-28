.class public Lc8/Mcg;
.super Ljava/lang/Object;
.source "WXStickyHelper.java"


# instance fields
.field private scrollable:Lc8/ebg;


# direct methods
.method public constructor <init>(Lc8/ebg;)V
    .locals 0
    .param p1, "scrollable"    # Lc8/ebg;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lc8/Mcg;->scrollable:Lc8/ebg;

    .line 37
    return-void
.end method


# virtual methods
.method public bindStickStyle(Lc8/tbg;Ljava/util/Map;)V
    .locals 3
    .param p1, "component"    # Lc8/tbg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/tbg;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/tbg;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "mStickyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;>;>;"
    invoke-virtual {p1}, Lc8/tbg;->getParentScroller()Lc8/ebg;

    move-result-object v0

    .line 41
    .local v0, "scroller":Lc8/ebg;
    if-nez v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-interface {v0}, Lc8/ebg;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 46
    .local v1, "stickyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;>;"
    if-nez v1, :cond_2

    .line 47
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .end local v1    # "stickyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;>;"
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 49
    .restart local v1    # "stickyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;>;"
    :cond_2
    invoke-virtual {p1}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    invoke-virtual {p1}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-interface {v0}, Lc8/ebg;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public unbindStickStyle(Lc8/tbg;Ljava/util/Map;)V
    .locals 3
    .param p1, "component"    # Lc8/tbg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/tbg;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/tbg;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, "mStickyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;>;>;"
    invoke-virtual {p1}, Lc8/tbg;->getParentScroller()Lc8/ebg;

    move-result-object v0

    .line 58
    .local v0, "scroller":Lc8/ebg;
    if-nez v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-interface {v0}, Lc8/ebg;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 63
    .local v1, "stickyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;>;"
    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p1}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
