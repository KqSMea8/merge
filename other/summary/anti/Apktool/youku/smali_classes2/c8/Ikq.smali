.class public final Lc8/Ikq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Llq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Plq;->fromObservable(Lc8/Vlq;)Lc8/Plq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$flowable:Lc8/Vlq;


# direct methods
.method constructor <init>(Lc8/Vlq;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lc8/Ikq;->val$flowable:Lc8/Vlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Nlq;)V
    .locals 2
    .param p1, "cs"    # Lc8/Nlq;

    .prologue
    .line 555
    new-instance v0, Lc8/Hkq;

    invoke-direct {v0, p0, p1}, Lc8/Hkq;-><init>(Lc8/Ikq;Lc8/Nlq;)V

    .line 572
    .local v0, "subscriber":Lc8/Omq;, "Lrx/Subscriber<Ljava/lang/Object;>;"
    invoke-interface {p1, v0}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 573
    iget-object v1, p0, Lc8/Ikq;->val$flowable:Lc8/Vlq;

    invoke-virtual {v1, v0}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 574
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 552
    check-cast p1, Lc8/Nlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Ikq;->call(Lc8/Nlq;)V

    return-void
.end method
