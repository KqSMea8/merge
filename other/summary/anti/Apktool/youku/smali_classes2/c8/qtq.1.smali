.class public final Lc8/qtq;
.super Ljava/lang/Object;
.source "OperatorReplay.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Atq;->multicastSelector(Lc8/Hnq;Lc8/Inq;)Lc8/Vlq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$connectableFactory:Lc8/Hnq;

.field final synthetic val$selector:Lc8/Inq;


# direct methods
.method constructor <init>(Lc8/Hnq;Lc8/Inq;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lc8/qtq;->val$connectableFactory:Lc8/Hnq;

    iput-object p2, p0, Lc8/qtq;->val$selector:Lc8/Inq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    :try_start_0
    iget-object v3, p0, Lc8/qtq;->val$connectableFactory:Lc8/Hnq;

    invoke-interface {v3}, Lc8/Hnq;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Vzq;

    .line 68
    .local v0, "co":Lc8/Vzq;, "Lrx/observables/ConnectableObservable<TU;>;"
    iget-object v3, p0, Lc8/qtq;->val$selector:Lc8/Inq;

    invoke-interface {v3, v0}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Vlq;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .local v2, "observable":Lc8/Vlq;, "Lrx/Observable<TR;>;"
    invoke-virtual {v2, p1}, Lc8/Vlq;->subscribe(Lc8/Omq;)Lc8/Pmq;

    .line 76
    new-instance v3, Lc8/ptq;

    invoke-direct {v3, p0, p1}, Lc8/ptq;-><init>(Lc8/qtq;Lc8/Omq;)V

    invoke-virtual {v0, v3}, Lc8/Vzq;->connect(Lc8/inq;)V

    .line 82
    .end local v0    # "co":Lc8/Vzq;, "Lrx/observables/ConnectableObservable<TU;>;"
    .end local v2    # "observable":Lc8/Vlq;, "Lrx/Observable<TR;>;"
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1, p1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 61
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/qtq;->call(Lc8/Omq;)V

    return-void
.end method
