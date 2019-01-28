.class public Lc8/Cnb;
.super Ljava/lang/Object;
.source "ALPConfigService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Dnb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PollConfigTask"
.end annotation


# instance fields
.field private callback:Lc8/Bnb;

.field final synthetic this$0:Lc8/Dnb;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc8/Dnb;Ljava/lang/String;Lc8/Bnb;)V
    .locals 0
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "callback"    # Lc8/Bnb;

    .prologue
    .line 30
    iput-object p1, p0, Lc8/Cnb;->this$0:Lc8/Dnb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p3, p0, Lc8/Cnb;->callback:Lc8/Bnb;

    .line 32
    iput-object p2, p0, Lc8/Cnb;->url:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private getAndSaveEtag(Lc8/Xnb;)V
    .locals 5
    .param p1, "response"    # Lc8/Xnb;

    .prologue
    .line 79
    if-eqz p1, :cond_0

    iget-object v2, p1, Lc8/Xnb;->rspHeaders:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lc8/Xnb;->rspHeaders:Ljava/util/Map;

    const-string/jumbo v3, "Etag"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 80
    :cond_0
    const-string/jumbo v2, "PollConfigTask"

    const-string/jumbo v3, "getAndSaveEtag"

    const-string/jumbo v4, "response/header is null"

    invoke-static {v2, v3, v4}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v2, p1, Lc8/Xnb;->rspHeaders:Ljava/util/Map;

    const-string/jumbo v3, "Etag"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 87
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 88
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    .local v0, "eTag":Ljava/lang/String;
    const-string/jumbo v2, "Etag"

    invoke-static {v2, v0}, Lc8/Gnb;->saveVal(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 93
    .end local v0    # "eTag":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "PollConfigTask"

    const-string/jumbo v3, "getAndSaveEtag"

    const-string/jumbo v4, "eTag is null"

    invoke-static {v2, v3, v4}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setIfNoneMatch(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "additions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "Etag"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lc8/Gnb;->getVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "eTag":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 70
    const-string/jumbo v1, "If-None-Match"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 37
    iget-object v3, p0, Lc8/Cnb;->url:Ljava/lang/String;

    .line 38
    .local v3, "url":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v0, "additionHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lc8/Cnb;->setIfNoneMatch(Ljava/util/Map;)V

    .line 44
    invoke-static {v3, v0}, Lc8/Wnb;->get(Ljava/lang/String;Ljava/util/Map;)Lc8/Xnb;

    move-result-object v2

    .line 47
    .local v2, "response":Lc8/Xnb;
    if-eqz v2, :cond_1

    iget v4, v2, Lc8/Xnb;->responseCode:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    iget-object v4, v2, Lc8/Xnb;->result:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 49
    invoke-direct {p0, v2}, Lc8/Cnb;->getAndSaveEtag(Lc8/Xnb;)V

    .line 50
    iget-object v1, v2, Lc8/Xnb;->result:Ljava/lang/String;

    .line 51
    .local v1, "config":Ljava/lang/String;
    iget-object v4, p0, Lc8/Cnb;->callback:Lc8/Bnb;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc8/Cnb;->callback:Lc8/Bnb;

    invoke-interface {v4, v1}, Lc8/Bnb;->onSuccess(Ljava/lang/String;)V

    .line 63
    .end local v1    # "config":Ljava/lang/String;
    :goto_0
    return-void

    .line 52
    .restart local v1    # "config":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "PollConfigTask"

    const-string/jumbo v5, "run"

    const-string/jumbo v6, "callback is null"

    invoke-static {v4, v5, v6}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    .end local v1    # "config":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 56
    iget-object v4, p0, Lc8/Cnb;->callback:Lc8/Bnb;

    iget v5, v2, Lc8/Xnb;->responseCode:I

    invoke-interface {v4, v5}, Lc8/Bnb;->onFailure(I)V

    .line 57
    const-string/jumbo v4, "PollConfigTask"

    const-string/jumbo v5, "run"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "config http request fail,response code ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lc8/Xnb;->responseCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_2
    iget-object v4, p0, Lc8/Cnb;->callback:Lc8/Bnb;

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Lc8/Bnb;->onFailure(I)V

    .line 60
    const-string/jumbo v4, "PollConfigTask"

    const-string/jumbo v5, "run"

    const-string/jumbo v6, "config http response is null"

    invoke-static {v4, v5, v6}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
