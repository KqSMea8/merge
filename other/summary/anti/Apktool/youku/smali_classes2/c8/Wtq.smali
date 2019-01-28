.class public final Lc8/Wtq;
.super Lc8/Omq;
.source "OperatorSingle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Xtq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParentSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final child:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final hasDefaultValue:Z

.field private hasTooManyElements:Z

.field private isNonEmpty:Z

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc8/Omq;ZLjava/lang/Object;)V
    .locals 2
    .param p2, "hasDefaultValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;ZTT;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lc8/Wtq;, "Lrx/internal/operators/OperatorSingle$ParentSubscriber<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 86
    iput-object p1, p0, Lc8/Wtq;->child:Lc8/Omq;

    .line 87
    iput-boolean p2, p0, Lc8/Wtq;->hasDefaultValue:Z

    .line 88
    iput-object p3, p0, Lc8/Wtq;->defaultValue:Ljava/lang/Object;

    .line 89
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lc8/Wtq;->request(J)V

    .line 90
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .prologue
    .line 109
    .local p0, "this":Lc8/Wtq;, "Lrx/internal/operators/OperatorSingle$ParentSubscriber<TT;>;"
    iget-boolean v0, p0, Lc8/Wtq;->hasTooManyElements:Z

    if-nez v0, :cond_0

    .line 112
    iget-boolean v0, p0, Lc8/Wtq;->isNonEmpty:Z

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lc8/Wtq;->child:Lc8/Omq;

    new-instance v1, Lrx/internal/producers/SingleProducer;

    iget-object v2, p0, Lc8/Wtq;->child:Lc8/Omq;

    iget-object v3, p0, Lc8/Wtq;->value:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lrx/internal/producers/SingleProducer;-><init>(Lc8/Omq;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-boolean v0, p0, Lc8/Wtq;->hasDefaultValue:Z

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lc8/Wtq;->child:Lc8/Omq;

    new-instance v1, Lrx/internal/producers/SingleProducer;

    iget-object v2, p0, Lc8/Wtq;->child:Lc8/Omq;

    iget-object v3, p0, Lc8/Wtq;->defaultValue:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lrx/internal/producers/SingleProducer;-><init>(Lc8/Omq;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lc8/Wtq;->child:Lc8/Omq;

    new-instance v1, Ljava/util/NoSuchElementException;

    const-string/jumbo v2, "Sequence contains no elements"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 126
    .local p0, "this":Lc8/Wtq;, "Lrx/internal/operators/OperatorSingle$ParentSubscriber<TT;>;"
    iget-boolean v0, p0, Lc8/Wtq;->hasTooManyElements:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-static {p1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lc8/Wtq;->child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/Wtq;, "Lrx/internal/operators/OperatorSingle$ParentSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    .line 94
    iget-boolean v0, p0, Lc8/Wtq;->hasTooManyElements:Z

    if-eqz v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-boolean v0, p0, Lc8/Wtq;->isNonEmpty:Z

    if-eqz v0, :cond_1

    .line 98
    iput-boolean v1, p0, Lc8/Wtq;->hasTooManyElements:Z

    .line 99
    iget-object v0, p0, Lc8/Wtq;->child:Lc8/Omq;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Sequence contains too many elements"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 100
    invoke-virtual {p0}, Lc8/Wtq;->unsubscribe()V

    goto :goto_0

    .line 102
    :cond_1
    iput-object p1, p0, Lc8/Wtq;->value:Ljava/lang/Object;

    .line 103
    iput-boolean v1, p0, Lc8/Wtq;->isNonEmpty:Z

    goto :goto_0
.end method
