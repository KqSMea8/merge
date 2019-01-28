.class public Lc8/VJf;
.super Ljava/lang/Object;
.source "Pipe.java"

# interfaces
.implements Lc8/Wlq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Wlq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private subject:Lc8/yBq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/yBq",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    .local p0, "this":Lc8/VJf;, "Lcom/taobao/tao/messagekit/core/model/Pipe<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lc8/yBq;->create()Lc8/yBq;

    move-result-object v0

    iput-object v0, p0, Lc8/VJf;->subject:Lc8/yBq;

    return-void
.end method


# virtual methods
.method public getObservable()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lc8/VJf;, "Lcom/taobao/tao/messagekit/core/model/Pipe<TT;>;"
    iget-object v0, p0, Lc8/VJf;->subject:Lc8/yBq;

    invoke-virtual {v0}, Lc8/yBq;->onBackpressureBuffer()Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 26
    .local p0, "this":Lc8/VJf;, "Lcom/taobao/tao/messagekit/core/model/Pipe<TT;>;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 30
    .local p0, "this":Lc8/VJf;, "Lcom/taobao/tao/messagekit/core/model/Pipe<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    const-string/jumbo v0, "Pipe"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lc8/ZJf;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lc8/VJf;, "Lcom/taobao/tao/messagekit/core/model/Pipe<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lc8/VJf;->subject:Lc8/yBq;

    invoke-virtual {v1, p1}, Lc8/yBq;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lc8/VJf;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
