.class public Lc8/vmq;
.super Lc8/Omq;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/xmq;->call(Lc8/Omq;)Lc8/Omq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lc8/xmq;

.field final synthetic val$serial:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/xmq;Lc8/Omq;ZLc8/Omq;)V
    .locals 0
    .param p3, "x1"    # Z

    .prologue
    .line 2131
    .local p0, "this":Lc8/vmq;, "Lrx/Single$22.1;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/vmq;->this$1:Lc8/xmq;

    iput-object p4, p0, Lc8/vmq;->val$serial:Lc8/Omq;

    invoke-direct {p0, p2, p3}, Lc8/Omq;-><init>(Lc8/Omq;Z)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 2147
    .local p0, "this":Lc8/vmq;, "Lrx/Single$22.1;"
    :try_start_0
    iget-object v0, p0, Lc8/vmq;->val$serial:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2149
    iget-object v0, p0, Lc8/vmq;->val$serial:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->unsubscribe()V

    .line 2150
    return-void

    .line 2149
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/vmq;->val$serial:Lc8/Omq;

    invoke-virtual {v1}, Lc8/Omq;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 2139
    .local p0, "this":Lc8/vmq;, "Lrx/Single$22.1;"
    :try_start_0
    iget-object v0, p0, Lc8/vmq;->val$serial:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2141
    iget-object v0, p0, Lc8/vmq;->val$serial:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->unsubscribe()V

    .line 2142
    return-void

    .line 2141
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/vmq;->val$serial:Lc8/Omq;

    invoke-virtual {v1}, Lc8/Omq;->unsubscribe()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 2134
    .local p0, "this":Lc8/vmq;, "Lrx/Single$22.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/vmq;->val$serial:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 2135
    return-void
.end method
