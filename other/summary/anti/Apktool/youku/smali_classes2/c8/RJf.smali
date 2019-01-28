.class public Lc8/RJf;
.super Ljava/lang/Object;
.source "Package.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/taobao/tao/messagekit/core/model/IProtocol;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lc8/RJf",
        "<TM;>;>;"
    }
.end annotation


# instance fields
.field public alongTime:J

.field public connectionType:I

.field public context:Ljava/lang/Object;

.field public dataId:Ljava/lang/String;

.field public dataSourceType:I

.field public msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field public netTime:J

.field public offset:J

.field public packTime:J

.field public sysCode:I

.field public tag:Ljava/lang/String;

.field public timeout:I


# direct methods
.method public constructor <init>(Lc8/RJf;)V
    .locals 1
    .param p1    # Lc8/RJf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/RJf",
            "<TM;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lc8/RJf;, "Lcom/taobao/tao/messagekit/core/model/Package<TM;>;"
    .local p1, "from":Lc8/RJf;, "Lcom/taobao/tao/messagekit/core/model/Package<TM;>;"
    iget-object v0, p1, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-direct {p0, v0}, Lc8/RJf;-><init>(Lcom/taobao/tao/messagekit/core/model/IProtocol;)V

    .line 34
    iget-object v0, p1, Lc8/RJf;->dataId:Ljava/lang/String;

    iput-object v0, p0, Lc8/RJf;->dataId:Ljava/lang/String;

    .line 35
    iget v0, p1, Lc8/RJf;->dataSourceType:I

    iput v0, p0, Lc8/RJf;->dataSourceType:I

    .line 36
    iget-object v0, p1, Lc8/RJf;->tag:Ljava/lang/String;

    iput-object v0, p0, Lc8/RJf;->tag:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lc8/RJf;->context:Ljava/lang/Object;

    iput-object v0, p0, Lc8/RJf;->context:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/taobao/tao/messagekit/core/model/IProtocol;)V
    .locals 1
    .param p1    # Lcom/taobao/tao/messagekit/core/model/IProtocol;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lc8/RJf;, "Lcom/taobao/tao/messagekit/core/model/Package<TM;>;"
    .local p1, "msg":Lcom/taobao/tao/messagekit/core/model/IProtocol;, "TM;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lc8/RJf;->connectionType:I

    .line 24
    const/16 v0, 0x3c

    iput v0, p0, Lc8/RJf;->timeout:I

    .line 28
    iput-object p1, p0, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    .line 29
    invoke-interface {p1}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->sysCode()I

    move-result v0

    iput v0, p0, Lc8/RJf;->sysCode:I

    .line 30
    return-void
.end method


# virtual methods
.method public compareTo(Lc8/RJf;)I
    .locals 3
    .param p1, "another"    # Lc8/RJf;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lc8/RJf;, "Lcom/taobao/tao/messagekit/core/model/Package<TM;>;"
    const/4 v0, 0x1

    .line 42
    if-eqz p1, :cond_0

    iget-object v1, p1, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    if-nez v1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    iget-object v1, p0, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-interface {v1}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->getID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-interface {v2}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 13
    .local p0, "this":Lc8/RJf;, "Lcom/taobao/tao/messagekit/core/model/Package<TM;>;"
    check-cast p1, Lc8/RJf;

    invoke-virtual {p0, p1}, Lc8/RJf;->compareTo(Lc8/RJf;)I

    move-result v0

    return v0
.end method
