.class public Lc8/hmq;
.super Lc8/Omq;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Mmq;->subscribe(Lc8/inq;)Lc8/Pmq;
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

.field final synthetic val$onSuccess:Lc8/inq;


# direct methods
.method constructor <init>(Lc8/Mmq;Lc8/inq;)V
    .locals 0

    .prologue
    .line 1620
    .local p0, "this":Lc8/hmq;, "Lrx/Single.15;"
    iput-object p1, p0, Lc8/hmq;->this$0:Lc8/Mmq;

    iput-object p2, p0, Lc8/hmq;->val$onSuccess:Lc8/inq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    .prologue
    .line 1625
    .local p0, "this":Lc8/hmq;, "Lrx/Single.15;"
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1629
    .local p0, "this":Lc8/hmq;, "Lrx/Single.15;"
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
    .line 1634
    .local p0, "this":Lc8/hmq;, "Lrx/Single.15;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/hmq;->val$onSuccess:Lc8/inq;

    invoke-interface {v0, p1}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 1635
    return-void
.end method
