.class public Lc8/gmq;
.super Lc8/Omq;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Mmq;->subscribe()Lc8/Pmq;
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
.field final synthetic this$0:Lc8/Mmq;


# direct methods
.method constructor <init>(Lc8/Mmq;)V
    .locals 0

    .prologue
    .line 1579
    .local p0, "this":Lc8/gmq;, "Lrx/Single.14;"
    iput-object p1, p0, Lc8/gmq;->this$0:Lc8/Mmq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    .prologue
    .line 1584
    .local p0, "this":Lc8/gmq;, "Lrx/Single.14;"
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1588
    .local p0, "this":Lc8/gmq;, "Lrx/Single.14;"
    new-instance v0, Lrx/exceptions/OnErrorNotImplementedException;

    invoke-direct {v0, p1}, Lrx/exceptions/OnErrorNotImplementedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1594
    .local p0, "this":Lc8/gmq;, "Lrx/Single.14;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    return-void
.end method
