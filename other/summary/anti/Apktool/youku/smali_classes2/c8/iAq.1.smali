.class public final Lc8/iAq;
.super Ljava/lang/Object;
.source "Observers.java"

# interfaces
.implements Lc8/Wlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/lAq;->create(Lc8/inq;)Lc8/Wlq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Wlq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$onNext:Lc8/inq;


# direct methods
.method constructor <init>(Lc8/inq;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lc8/iAq;->val$onNext:Lc8/inq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 88
    new-instance v0, Lrx/exceptions/OnErrorNotImplementedException;

    invoke-direct {v0, p1}, Lrx/exceptions/OnErrorNotImplementedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/iAq;->val$onNext:Lc8/inq;

    invoke-interface {v0, p1}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 94
    return-void
.end method
