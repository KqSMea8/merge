.class public final Lc8/Enq;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lc8/inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Gnq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Action1CallsAction0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/inq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final action:Lc8/hnq;


# direct methods
.method public constructor <init>(Lc8/hnq;)V
    .locals 0
    .param p1, "action"    # Lc8/hnq;

    .prologue
    .line 560
    .local p0, "this":Lc8/Enq;, "Lrx/functions/Actions$Action1CallsAction0<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    iput-object p1, p0, Lc8/Enq;->action:Lc8/hnq;

    .line 562
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 566
    .local p0, "this":Lc8/Enq;, "Lrx/functions/Actions$Action1CallsAction0<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/Enq;->action:Lc8/hnq;

    invoke-interface {v0}, Lc8/hnq;->call()V

    .line 567
    return-void
.end method
