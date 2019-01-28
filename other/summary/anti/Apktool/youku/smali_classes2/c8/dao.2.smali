.class public Lc8/dao;
.super Ljava/lang/Object;
.source "Ok1ResponseWrapper.java"

# interfaces
.implements Lc8/eao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lc8/sao;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/eao",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mData:Lc8/sao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private response:Lc8/Whq;


# direct methods
.method public constructor <init>(Lc8/Whq;Lc8/sao;)V
    .locals 0
    .param p1, "response"    # Lc8/Whq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Whq;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lc8/dao;, "Lcom/youku/us/baseframework/server/api/Ok1ResponseWrapper<TT;>;"
    .local p2, "t":Lc8/sao;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lc8/dao;->response:Lc8/Whq;

    .line 23
    iput-object p2, p0, Lc8/dao;->mData:Lc8/sao;

    .line 24
    return-void
.end method


# virtual methods
.method public body()Lc8/sao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lc8/dao;, "Lcom/youku/us/baseframework/server/api/Ok1ResponseWrapper<TT;>;"
    iget-object v0, p0, Lc8/dao;->mData:Lc8/sao;

    return-object v0
.end method

.method public bridge synthetic body()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    .local p0, "this":Lc8/dao;, "Lcom/youku/us/baseframework/server/api/Ok1ResponseWrapper<TT;>;"
    invoke-virtual {p0}, Lc8/dao;->body()Lc8/sao;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/Rhq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lc8/dao;, "Lcom/youku/us/baseframework/server/api/Ok1ResponseWrapper<TT;>;"
    iget-object v0, p0, Lc8/dao;->response:Lc8/Whq;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lc8/dao;->response:Lc8/Whq;

    invoke-virtual {v0}, Lc8/Whq;->getHeaders()Ljava/util/List;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lc8/dao;, "Lcom/youku/us/baseframework/server/api/Ok1ResponseWrapper<TT;>;"
    iget-object v0, p0, Lc8/dao;->response:Lc8/Whq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/dao;->response:Lc8/Whq;

    invoke-virtual {v0}, Lc8/Whq;->getStatus()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccessful()Z
    .locals 2

    .prologue
    .line 33
    .local p0, "this":Lc8/dao;, "Lcom/youku/us/baseframework/server/api/Ok1ResponseWrapper<TT;>;"
    iget-object v0, p0, Lc8/dao;->response:Lc8/Whq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/dao;->response:Lc8/Whq;

    invoke-virtual {v0}, Lc8/Whq;->getStatus()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lc8/dao;->response:Lc8/Whq;

    invoke-virtual {v0}, Lc8/Whq;->getStatus()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
