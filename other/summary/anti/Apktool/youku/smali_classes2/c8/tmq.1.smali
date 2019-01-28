.class public Lc8/tmq;
.super Lc8/Omq;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/umq;->call(Lc8/Omq;)Lc8/Omq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lc8/umq;

.field final synthetic val$main:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/umq;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 2077
    .local p0, "this":Lc8/tmq;, "Lrx/Single$21.2;"
    iput-object p1, p0, Lc8/tmq;->this$1:Lc8/umq;

    iput-object p2, p0, Lc8/tmq;->val$main:Lc8/Omq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 2081
    .local p0, "this":Lc8/tmq;, "Lrx/Single$21.2;"
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string/jumbo v1, "Stream was canceled before emitting a terminal event."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc8/tmq;->onError(Ljava/lang/Throwable;)V

    .line 2082
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 2086
    .local p0, "this":Lc8/tmq;, "Lrx/Single$21.2;"
    iget-object v0, p0, Lc8/tmq;->val$main:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 2087
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 2091
    .local p0, "this":Lc8/tmq;, "Lrx/Single$21.2;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string/jumbo v1, "Stream was canceled before emitting a terminal event."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc8/tmq;->onError(Ljava/lang/Throwable;)V

    .line 2092
    return-void
.end method
