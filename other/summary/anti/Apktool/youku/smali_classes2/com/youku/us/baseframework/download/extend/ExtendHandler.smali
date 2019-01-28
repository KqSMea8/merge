.class public Lcom/youku/us/baseframework/download/extend/ExtendHandler;
.super Ljava/lang/Object;
.source "ExtendHandler.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/us/baseframework/download/extend/ExtendHandler$ExtendListener;
    }
.end annotation


# instance fields
.field protected downloadEntry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

.field protected extendExecuters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/nZn;",
            ">;"
        }
    .end annotation
.end field

.field protected extendListener:Lcom/youku/us/baseframework/download/extend/ExtendHandler$ExtendListener;


# direct methods
.method public constructor <init>(Lcom/youku/us/baseframework/download/entity/DownloadEntry;Ljava/util/List;)V
    .locals 0
    .param p1, "downloadEntry"    # Lcom/youku/us/baseframework/download/entity/DownloadEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youku/us/baseframework/download/entity/DownloadEntry;",
            "Ljava/util/List",
            "<",
            "Lc8/nZn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "extendExecuters":Ljava/util/List;, "Ljava/util/List<Lcom/youku/us/baseframework/download/extend/ExtendExecuter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/youku/us/baseframework/download/extend/ExtendHandler;->downloadEntry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .line 24
    iput-object p2, p0, Lcom/youku/us/baseframework/download/extend/ExtendHandler;->extendExecuters:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public getExtendListener()Lcom/youku/us/baseframework/download/extend/ExtendHandler$ExtendListener;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/youku/us/baseframework/download/extend/ExtendHandler;->extendListener:Lcom/youku/us/baseframework/download/extend/ExtendHandler$ExtendListener;

    return-object v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 30
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/youku/us/baseframework/download/extend/ExtendHandler;->extendExecuters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 31
    iget-object v3, p0, Lcom/youku/us/baseframework/download/extend/ExtendHandler;->extendExecuters:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/nZn;

    .line 32
    .local v1, "extendExecuter":Lc8/nZn;
    if-eqz v1, :cond_2

    .line 33
    iget-object v3, p0, Lcom/youku/us/baseframework/download/extend/ExtendHandler;->extendListener:Lcom/youku/us/baseframework/download/extend/ExtendHandler$ExtendListener;

    if-eqz v3, :cond_0

    .line 34
    iget-object v3, p0, Lcom/youku/us/baseframework/download/extend/ExtendHandler;->extendListener:Lcom/youku/us/baseframework/download/extend/ExtendHandler$ExtendListener;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/youku/us/baseframework/download/extend/ExtendHandler$ExtendListener;->onProgressChanged(II)V

    .line 36
    :cond_0
    iget-object v3, p0, Lcom/youku/us/baseframework/download/extend/ExtendHandler;->downloadEntry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    invoke-interface {v1, v3}, Lc8/nZn;->execute(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 37
    iget-object v3, p0, Lcom/youku/us/baseframework/download/extend/ExtendHandler;->extendListener:Lcom/youku/us/baseframework/download/extend/ExtendHandler$ExtendListener;

    if-eqz v3, :cond_1

    .line 38
    iget-object v3, p0, Lcom/youku/us/baseframework/download/extend/ExtendHandler;->extendListener:Lcom/youku/us/baseframework/download/extend/ExtendHandler$ExtendListener;

    const/16 v4, 0x64

    invoke-interface {v3, v2, v4}, Lcom/youku/us/baseframework/download/extend/ExtendHandler$ExtendListener;->onProgressChanged(II)V

    .line 40
    :cond_1
    iget-object v3, p0, Lcom/youku/us/baseframework/download/extend/ExtendHandler;->extendListener:Lcom/youku/us/baseframework/download/extend/ExtendHandler$ExtendListener;

    invoke-interface {v3, v2}, Lcom/youku/us/baseframework/download/extend/ExtendHandler$ExtendListener;->onCompleted(I)V

    .line 30
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_3
    iget-object v3, p0, Lcom/youku/us/baseframework/download/extend/ExtendHandler;->extendListener:Lcom/youku/us/baseframework/download/extend/ExtendHandler$ExtendListener;

    const-string/jumbo v4, "\u6269\u5c55\u5904\u7406\u6267\u884c\u5931\u8d25..."

    invoke-interface {v3, v2, v4}, Lcom/youku/us/baseframework/download/extend/ExtendHandler$ExtendListener;->onExtendError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v1    # "extendExecuter":Lc8/nZn;
    :cond_4
    :goto_1
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    iget-object v3, p0, Lcom/youku/us/baseframework/download/extend/ExtendHandler;->extendListener:Lcom/youku/us/baseframework/download/extend/ExtendHandler$ExtendListener;

    if-eqz v3, :cond_4

    .line 50
    iget-object v3, p0, Lcom/youku/us/baseframework/download/extend/ExtendHandler;->extendListener:Lcom/youku/us/baseframework/download/extend/ExtendHandler$ExtendListener;

    iget-object v4, p0, Lcom/youku/us/baseframework/download/extend/ExtendHandler;->extendExecuters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/youku/us/baseframework/download/extend/ExtendHandler$ExtendListener;->onExtendError(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public setExtendListener(Lcom/youku/us/baseframework/download/extend/ExtendHandler$ExtendListener;)V
    .locals 0
    .param p1, "extendListener"    # Lcom/youku/us/baseframework/download/extend/ExtendHandler$ExtendListener;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/youku/us/baseframework/download/extend/ExtendHandler;->extendListener:Lcom/youku/us/baseframework/download/extend/ExtendHandler$ExtendListener;

    .line 86
    return-void
.end method
