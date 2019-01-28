.class public Lc8/zmq;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lc8/Wlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Mmq;->doOnSuccess(Lc8/inq;)Lc8/Mmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.field final synthetic this$0:Lc8/Mmq;

.field final synthetic val$onSuccess:Lc8/inq;


# direct methods
.method constructor <init>(Lc8/Mmq;Lc8/inq;)V
    .locals 0

    .prologue
    .line 2412
    .local p0, "this":Lc8/zmq;, "Lrx/Single.24;"
    iput-object p1, p0, Lc8/zmq;->this$0:Lc8/Mmq;

    iput-object p2, p0, Lc8/zmq;->val$onSuccess:Lc8/inq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 2416
    .local p0, "this":Lc8/zmq;, "Lrx/Single.24;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 2421
    .local p0, "this":Lc8/zmq;, "Lrx/Single.24;"
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 2425
    .local p0, "this":Lc8/zmq;, "Lrx/Single.24;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/zmq;->val$onSuccess:Lc8/inq;

    invoke-interface {v0, p1}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 2426
    return-void
.end method
