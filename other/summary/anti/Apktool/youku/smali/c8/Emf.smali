.class public Lc8/Emf;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public downloadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Fmf;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public downloadParam:Lcom/taobao/downloader/request/Param;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Emf;->downloadList:Ljava/util/List;

    .line 12
    new-instance v0, Lcom/taobao/downloader/request/Param;

    invoke-direct {v0}, Lcom/taobao/downloader/request/Param;-><init>()V

    iput-object v0, p0, Lc8/Emf;->downloadParam:Lcom/taobao/downloader/request/Param;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Emf;->downloadList:Ljava/util/List;

    .line 12
    new-instance v0, Lcom/taobao/downloader/request/Param;

    invoke-direct {v0}, Lcom/taobao/downloader/request/Param;-><init>()V

    iput-object v0, p0, Lc8/Emf;->downloadParam:Lcom/taobao/downloader/request/Param;

    .line 19
    new-instance v0, Lc8/Fmf;

    invoke-direct {v0}, Lc8/Fmf;-><init>()V

    .line 20
    iput-object p1, v0, Lc8/Fmf;->url:Ljava/lang/String;

    .line 21
    iget-object v1, p0, Lc8/Emf;->downloadList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method


# virtual methods
.method public validate()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 26
    iget-object v0, p0, Lc8/Emf;->downloadParam:Lcom/taobao/downloader/request/Param;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Emf;->downloadList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Emf;->downloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 48
    :goto_0
    return v0

    .line 30
    :cond_1
    iget-object v0, p0, Lc8/Emf;->downloadParam:Lcom/taobao/downloader/request/Param;

    iget-object v0, v0, Lcom/taobao/downloader/request/Param;->fileStorePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 31
    goto :goto_0

    .line 34
    :cond_2
    iget-object v0, p0, Lc8/Emf;->downloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Fmf;

    .line 35
    iget-object v0, v0, Lc8/Fmf;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 36
    goto :goto_0

    .line 41
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iget-object v0, p0, Lc8/Emf;->downloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Fmf;

    .line 43
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 44
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 47
    :cond_6
    iput-object v1, p0, Lc8/Emf;->downloadList:Ljava/util/List;

    .line 48
    const/4 v0, 0x1

    goto :goto_0
.end method
