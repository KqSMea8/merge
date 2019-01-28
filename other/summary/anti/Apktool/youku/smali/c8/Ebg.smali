.class public Lc8/Ebg;
.super Lc8/jdg;
.source "WXHeader.java"


# annotations
.annotation runtime Lc8/JVf;
    lazyload = false
.end annotation


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "instanceId"    # Ljava/lang/String;
    .param p5, "isLazy"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p5}, Lc8/Ebg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V
    .locals 2
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "lazy"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/jdg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V

    .line 40
    invoke-virtual {p3}, Lc8/scg;->getDomObject()Lc8/qYf;

    move-result-object v1

    invoke-interface {v1}, Lc8/qYf;->getType()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "parantType":Ljava/lang/String;
    const-string/jumbo v1, "list"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "recycle-list"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    :cond_0
    const-string/jumbo v1, "sticky"

    invoke-virtual {p0, v1}, Lc8/Ebg;->setSticky(Ljava/lang/String;)V

    .line 45
    :cond_1
    return-void
.end method


# virtual methods
.method public canRecycled()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public isLazy()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public isSticky()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method
