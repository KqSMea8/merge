.class public final Lc8/zpq;
.super Ljava/lang/Object;
.source "OnSubscribeDetach.java"

# interfaces
.implements Lc8/Pmq;
.implements Lc8/Xlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Bpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DetachProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Xlq;",
        "Lc8/Pmq;"
    }
.end annotation


# instance fields
.field final parent:Lc8/Apq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Apq",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Apq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Apq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lc8/zpq;, "Lrx/internal/operators/OnSubscribeDetach$DetachProducer<TT;>;"
    .local p1, "parent":Lc8/Apq;, "Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lc8/zpq;->parent:Lc8/Apq;

    .line 144
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 153
    .local p0, "this":Lc8/zpq;, "Lrx/internal/operators/OnSubscribeDetach$DetachProducer<TT;>;"
    iget-object v0, p0, Lc8/zpq;->parent:Lc8/Apq;

    invoke-virtual {v0}, Lc8/Apq;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 148
    .local p0, "this":Lc8/zpq;, "Lrx/internal/operators/OnSubscribeDetach$DetachProducer<TT;>;"
    iget-object v0, p0, Lc8/zpq;->parent:Lc8/Apq;

    invoke-virtual {v0, p1, p2}, Lc8/Apq;->innerRequest(J)V

    .line 149
    return-void
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 158
    .local p0, "this":Lc8/zpq;, "Lrx/internal/operators/OnSubscribeDetach$DetachProducer<TT;>;"
    iget-object v0, p0, Lc8/zpq;->parent:Lc8/Apq;

    invoke-virtual {v0}, Lc8/Apq;->innerUnsubscribe()V

    .line 159
    return-void
.end method
