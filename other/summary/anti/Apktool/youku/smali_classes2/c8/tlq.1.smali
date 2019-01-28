.class public final Lc8/tlq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Llq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Plq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Nlq;)V
    .locals 1
    .param p1, "s"    # Lc8/Nlq;

    .prologue
    .line 102
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v0

    invoke-interface {p1, v0}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 103
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 99
    check-cast p1, Lc8/Nlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/tlq;->call(Lc8/Nlq;)V

    return-void
.end method
