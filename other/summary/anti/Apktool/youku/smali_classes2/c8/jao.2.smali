.class public Lc8/jao;
.super Lc8/kao;
.source "CursorPageInfo.java"


# instance fields
.field protected lastId:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "pageNo"    # I
    .param p2, "pageSize"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lc8/kao;-><init>(II)V

    .line 21
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "pageNo"    # I
    .param p2, "pageSize"    # I
    .param p3, "lastId"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lc8/kao;-><init>(II)V

    .line 25
    iput-object p3, p0, Lc8/jao;->lastId:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public assemblePageParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    .local v0, "pageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "lastId"

    iget-object v2, p0, Lc8/jao;->lastId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-object v0
.end method

.method public getLastId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lc8/jao;->lastId:Ljava/lang/String;

    return-object v0
.end method

.method public setLastId(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastId"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lc8/jao;->lastId:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public update(Lc8/iao;)V
    .locals 1
    .param p1, "remotePage"    # Lc8/iao;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lc8/kao;->update(Lc8/iao;)V

    .line 31
    if-eqz p1, :cond_0

    instance-of v0, p1, Lc8/jao;

    if-eqz v0, :cond_0

    .line 32
    check-cast p1, Lc8/jao;

    .end local p1    # "remotePage":Lc8/iao;
    iget-object v0, p1, Lc8/jao;->lastId:Ljava/lang/String;

    iput-object v0, p0, Lc8/jao;->lastId:Ljava/lang/String;

    .line 34
    :cond_0
    return-void
.end method
