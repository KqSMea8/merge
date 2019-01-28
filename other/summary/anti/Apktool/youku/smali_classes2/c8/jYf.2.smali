.class public Lc8/jYf;
.super Ljava/lang/Object;
.source "DOMActionContextImpl.java"

# interfaces
.implements Lc8/GYf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oYf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddDOMConsumer"
.end annotation


# instance fields
.field final mRegistry:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/HYf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/HYf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p1, "r":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/taobao/weex/dom/WXDomObject;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput-object p1, p0, Lc8/jYf;->mRegistry:Ljava/util/concurrent/ConcurrentHashMap;

    .line 441
    return-void
.end method


# virtual methods
.method public accept(Lc8/HYf;)V
    .locals 3
    .param p1, "dom"    # Lc8/HYf;

    .prologue
    .line 446
    invoke-virtual {p1}, Lc8/HYf;->young()V

    .line 447
    iget-object v1, p0, Lc8/jYf;->mRegistry:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lc8/HYf;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object v1, p0, Lc8/jYf;->mRegistry:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v2, "_root"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/HYf;

    .line 451
    .local v0, "rootDom":Lc8/HYf;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lc8/HYf;->isFixed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    invoke-virtual {p1}, Lc8/HYf;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/HYf;->add2FixedDomList(Ljava/lang/String;)V

    .line 454
    :cond_0
    return-void
.end method
