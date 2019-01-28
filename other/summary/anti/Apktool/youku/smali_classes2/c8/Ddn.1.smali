.class public Lc8/Ddn;
.super Ljava/lang/Object;
.source "ServiceDispatcher.java"


# instance fields
.field private commonService:Lc8/Edn;

.field private handle:Z

.field private serviceList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/Fdn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lc8/Edn;

    invoke-direct {v0}, Lc8/Edn;-><init>()V

    iput-object v0, p0, Lc8/Ddn;->commonService:Lc8/Edn;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Ddn;->serviceList:Ljava/util/Map;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Ddn;->handle:Z

    .line 26
    return-void
.end method

.method private commonHandle(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 40
    iget-object v0, p0, Lc8/Ddn;->commonService:Lc8/Edn;

    invoke-virtual {v0, p1}, Lc8/Edn;->handle(Landroid/net/Uri;)Z

    .line 41
    return-void
.end method

.method private dispatchImpl(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "host":Ljava/lang/String;
    iget-object v2, p0, Lc8/Ddn;->serviceList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Fdn;

    .line 46
    .local v1, "service":Lc8/Fdn;
    invoke-interface {v1, v0}, Lc8/Fdn;->accept(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    invoke-interface {v1, p1}, Lc8/Fdn;->handle(Landroid/net/Uri;)Z

    move-result v2

    iput-boolean v2, p0, Lc8/Ddn;->handle:Z

    .line 51
    .end local v1    # "service":Lc8/Fdn;
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatch(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lc8/Ddn;->commonHandle(Landroid/net/Uri;)V

    .line 35
    invoke-direct {p0, p1}, Lc8/Ddn;->dispatchImpl(Landroid/net/Uri;)V

    .line 37
    return-void
.end method

.method public getService(Ljava/lang/String;)Lc8/Fdn;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    const-string/jumbo v0, "common_service"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lc8/Ddn;->commonService:Lc8/Edn;

    .line 57
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/Ddn;->serviceList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Fdn;

    goto :goto_0
.end method

.method public isHandle()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lc8/Ddn;->handle:Z

    return v0
.end method

.method public register(Ljava/lang/String;Lc8/Fdn;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Lc8/Fdn;

    .prologue
    .line 29
    iget-object v0, p0, Lc8/Ddn;->serviceList:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method
