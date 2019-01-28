.class public Lc8/aC;
.super Ljava/lang/Object;
.source "IResponse.java"


# instance fields
.field private StatusCode:I

.field private data:[B

.field private desc:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private headersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mNetstat:Lc8/bG;

.field private mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lc8/bG;

    invoke-direct {v0}, Lc8/bG;-><init>()V

    iput-object v0, p0, Lc8/aC;->mNetstat:Lc8/bG;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/aC;->headersMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lc8/aC;->data:[B

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lc8/aC;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lc8/aC;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadersMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lc8/aC;->headersMap:Ljava/util/Map;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lc8/aC;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lc8/aC;->StatusCode:I

    return v0
.end method

.method public setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 48
    iput-object p1, p0, Lc8/aC;->data:[B

    .line 49
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lc8/aC;->desc:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setHeadMap(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "headMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p1, :cond_2

    .line 74
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 75
    .local v4, "key":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 76
    .local v1, "headerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 77
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 78
    iget-object v5, p0, Lc8/aC;->headersMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "headerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v4    # "key":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lc8/aC;->headersMap:Ljava/util/Map;

    const-string/jumbo v6, "content-type"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    .local v0, "content_type":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 84
    invoke-static {v0}, Lc8/JH;->parseMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lc8/aC;->mimeType:Ljava/lang/String;

    .line 85
    invoke-static {v0}, Lc8/JH;->parseCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lc8/aC;->encoding:Ljava/lang/String;

    .line 86
    iget-object v5, p0, Lc8/aC;->encoding:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "utf-8"

    :goto_1
    iput-object v5, p0, Lc8/aC;->encoding:Ljava/lang/String;

    .line 89
    .end local v0    # "content_type":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void

    .line 86
    .restart local v0    # "content_type":Ljava/lang/String;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v5, p0, Lc8/aC;->encoding:Ljava/lang/String;

    goto :goto_1
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 56
    iput p1, p0, Lc8/aC;->StatusCode:I

    .line 57
    return-void
.end method
