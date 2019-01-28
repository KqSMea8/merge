.class public final Lc8/ktq;
.super Ljava/lang/Object;
.source "OperatorPublish.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ntq;->create(Lc8/Vlq;Lc8/Inq;Z)Lc8/Vlq;
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
.field final synthetic val$delayError:Z

.field final synthetic val$selector:Lc8/Inq;

.field final synthetic val$source:Lc8/Vlq;


# direct methods
.method constructor <init>(ZLc8/Inq;Lc8/Vlq;)V
    .locals 0

    .prologue
    .line 126
    iput-boolean p1, p0, Lc8/ktq;->val$delayError:Z

    iput-object p2, p0, Lc8/ktq;->val$selector:Lc8/Inq;

    iput-object p3, p0, Lc8/ktq;->val$source:Lc8/Vlq;

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
    .line 129
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribePublishMulticast;

    sget v2, Lc8/fyq;->SIZE:I

    iget-boolean v3, p0, Lc8/ktq;->val$delayError:Z

    invoke-direct {v0, v2, v3}, Lrx/internal/operators/OnSubscribePublishMulticast;-><init>(IZ)V

    .line 131
    .local v0, "op":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    new-instance v1, Lc8/jtq;

    invoke-direct {v1, p0, p1, v0}, Lc8/jtq;-><init>(Lc8/ktq;Lc8/Omq;Lrx/internal/operators/OnSubscribePublishMulticast;)V

    .line 155
    .local v1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<TR;>;"
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 156
    invoke-virtual {p1, v1}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 158
    iget-object v2, p0, Lc8/ktq;->val$selector:Lc8/Inq;

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v3

    invoke-interface {v2, v3}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Vlq;

    invoke-virtual {v2, v1}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 160
    iget-object v2, p0, Lc8/ktq;->val$source:Lc8/Vlq;

    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribePublishMulticast;->subscriber()Lc8/Omq;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 161
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 126
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/ktq;->call(Lc8/Omq;)V

    return-void
.end method
