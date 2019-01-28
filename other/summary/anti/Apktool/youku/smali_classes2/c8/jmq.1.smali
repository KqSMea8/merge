.class public Lc8/jmq;
.super Lc8/Nmq;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Mmq;->subscribe(Lc8/Wlq;)Lc8/Pmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Nmq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Mmq;

.field final synthetic val$observer:Lc8/Wlq;


# direct methods
.method constructor <init>(Lc8/Mmq;Lc8/Wlq;)V
    .locals 0

    .prologue
    .line 1739
    .local p0, "this":Lc8/jmq;, "Lrx/Single.17;"
    iput-object p1, p0, Lc8/jmq;->this$0:Lc8/Mmq;

    iput-object p2, p0, Lc8/jmq;->val$observer:Lc8/Wlq;

    invoke-direct {p0}, Lc8/Nmq;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 1747
    .local p0, "this":Lc8/jmq;, "Lrx/Single.17;"
    iget-object v0, p0, Lc8/jmq;->val$observer:Lc8/Wlq;

    invoke-interface {v0, p1}, Lc8/Wlq;->onError(Ljava/lang/Throwable;)V

    .line 1748
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1742
    .local p0, "this":Lc8/jmq;, "Lrx/Single.17;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/jmq;->val$observer:Lc8/Wlq;

    invoke-interface {v0, p1}, Lc8/Wlq;->onNext(Ljava/lang/Object;)V

    .line 1743
    iget-object v0, p0, Lc8/jmq;->val$observer:Lc8/Wlq;

    invoke-interface {v0}, Lc8/Wlq;->onCompleted()V

    .line 1744
    return-void
.end method
