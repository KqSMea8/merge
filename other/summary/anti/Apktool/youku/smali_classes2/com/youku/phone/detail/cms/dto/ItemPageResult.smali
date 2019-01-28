.class public Lcom/youku/phone/detail/cms/dto/ItemPageResult;
.super Ljava/lang/Object;
.source "ItemPageResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field protected className:Ljava/lang/String;

.field private downloadStatus:Z

.field public hasNext:Z

.field public item:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation
.end field

.field public results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    .local p0, "this":Lcom/youku/phone/detail/cms/dto/ItemPageResult;, "Lcom/youku/phone/detail/cms/dto/ItemPageResult<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string/jumbo v0, "com.youku.haibao.client.common.ItemPageResult"

    iput-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemPageResult;->className:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getItemValues()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/youku/phone/detail/cms/dto/ItemPageResult;, "Lcom/youku/phone/detail/cms/dto/ItemPageResult<TT;>;"
    iget-object v3, p0, Lcom/youku/phone/detail/cms/dto/ItemPageResult;->item:Ljava/util/TreeMap;

    if-eqz v3, :cond_0

    .line 51
    iget-object v3, p0, Lcom/youku/phone/detail/cms/dto/ItemPageResult;->item:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 52
    .local v2, "values":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 54
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    .end local v0    # "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .end local v2    # "values":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public isDownloadStatus()Z
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lcom/youku/phone/detail/cms/dto/ItemPageResult;, "Lcom/youku/phone/detail/cms/dto/ItemPageResult<TT;>;"
    iget-boolean v0, p0, Lcom/youku/phone/detail/cms/dto/ItemPageResult;->downloadStatus:Z

    return v0
.end method

.method public setDownloadStatus(Z)V
    .locals 0
    .param p1, "downloadStatus"    # Z

    .prologue
    .line 43
    .local p0, "this":Lcom/youku/phone/detail/cms/dto/ItemPageResult;, "Lcom/youku/phone/detail/cms/dto/ItemPageResult<TT;>;"
    iput-boolean p1, p0, Lcom/youku/phone/detail/cms/dto/ItemPageResult;->downloadStatus:Z

    .line 44
    return-void
.end method
