.class public Lc8/wmq;
.super Lc8/Nmq;
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
        "Lc8/Nmq",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lc8/xmq;

.field final synthetic val$main:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/xmq;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 2154
    .local p0, "this":Lc8/wmq;, "Lrx/Single$22.2;"
    iput-object p1, p0, Lc8/wmq;->this$1:Lc8/xmq;

    iput-object p2, p0, Lc8/wmq;->val$main:Lc8/Omq;

    invoke-direct {p0}, Lc8/Nmq;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 2162
    .local p0, "this":Lc8/wmq;, "Lrx/Single$22.2;"
    iget-object v0, p0, Lc8/wmq;->val$main:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 2163
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 2157
    .local p0, "this":Lc8/wmq;, "Lrx/Single$22.2;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string/jumbo v1, "Stream was canceled before emitting a terminal event."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc8/wmq;->onError(Ljava/lang/Throwable;)V

    .line 2158
    return-void
.end method
