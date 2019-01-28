.class public final Lc8/apq;
.super Ljava/lang/Object;
.source "DeferredScalarSubscriber.java"

# interfaces
.implements Lc8/Xlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/bpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InnerProducer"
.end annotation


# instance fields
.field final parent:Lc8/bpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/bpq",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/bpq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/bpq",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "parent":Lc8/bpq;, "Lrx/internal/operators/DeferredScalarSubscriber<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lc8/apq;->parent:Lc8/bpq;

    .line 170
    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 174
    iget-object v0, p0, Lc8/apq;->parent:Lc8/bpq;

    invoke-virtual {v0, p1, p2}, Lc8/bpq;->downstreamRequest(J)V

    .line 175
    return-void
.end method
