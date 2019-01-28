.class public final Lc8/Kkq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Llq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Plq;->fromSingle(Lc8/Mmq;)Lc8/Plq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$single:Lc8/Mmq;


# direct methods
.method constructor <init>(Lc8/Mmq;)V
    .locals 0

    .prologue
    .line 587
    iput-object p1, p0, Lc8/Kkq;->val$single:Lc8/Mmq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Nlq;)V
    .locals 2
    .param p1, "s"    # Lc8/Nlq;

    .prologue
    .line 590
    new-instance v0, Lc8/Jkq;

    invoke-direct {v0, p0, p1}, Lc8/Jkq;-><init>(Lc8/Kkq;Lc8/Nlq;)V

    .line 603
    .local v0, "te":Lc8/Nmq;, "Lrx/SingleSubscriber<Ljava/lang/Object;>;"
    invoke-interface {p1, v0}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 604
    iget-object v1, p0, Lc8/Kkq;->val$single:Lc8/Mmq;

    invoke-virtual {v1, v0}, Lc8/Mmq;->subscribe(Lc8/Nmq;)Lc8/Pmq;

    .line 605
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 587
    check-cast p1, Lc8/Nlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Kkq;->call(Lc8/Nlq;)V

    return-void
.end method
