.class public final Lc8/mwq;
.super Lc8/Omq;
.source "OperatorWithLatestFromMany.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/nwq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WithLatestOtherSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final index:I

.field final parent:Lc8/lwq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/lwq",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/lwq;I)V
    .locals 0
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/lwq",
            "<**>;I)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "parent":Lc8/lwq;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<**>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 195
    iput-object p1, p0, Lc8/mwq;->parent:Lc8/lwq;

    .line 196
    iput p2, p0, Lc8/mwq;->index:I

    .line 197
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lc8/mwq;->parent:Lc8/lwq;

    iget v1, p0, Lc8/mwq;->index:I

    invoke-virtual {v0, v1}, Lc8/lwq;->innerComplete(I)V

    .line 212
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 206
    iget-object v0, p0, Lc8/mwq;->parent:Lc8/lwq;

    iget v1, p0, Lc8/mwq;->index:I

    invoke-virtual {v0, v1, p1}, Lc8/lwq;->innerError(ILjava/lang/Throwable;)V

    .line 207
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    .line 201
    iget-object v0, p0, Lc8/mwq;->parent:Lc8/lwq;

    iget v1, p0, Lc8/mwq;->index:I

    invoke-virtual {v0, v1, p1}, Lc8/lwq;->innerNext(ILjava/lang/Object;)V

    .line 202
    return-void
.end method
