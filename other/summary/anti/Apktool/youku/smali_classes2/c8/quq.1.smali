.class public Lc8/quq;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ruq;->call(Lc8/Omq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ruq;

.field final synthetic val$inner:Lc8/Zlq;

.field final synthetic val$subscriber:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/ruq;Lc8/Omq;Lc8/Zlq;)V
    .locals 0

    .prologue
    .line 45
    .local p0, "this":Lc8/quq;, "Lrx/internal/operators/OperatorSubscribeOn.1;"
    iput-object p1, p0, Lc8/quq;->this$0:Lc8/ruq;

    iput-object p2, p0, Lc8/quq;->val$subscriber:Lc8/Omq;

    iput-object p3, p0, Lc8/quq;->val$inner:Lc8/Zlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 48
    .local p0, "this":Lc8/quq;, "Lrx/internal/operators/OperatorSubscribeOn.1;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 50
    .local v1, "t":Ljava/lang/Thread;
    new-instance v0, Lc8/puq;

    iget-object v2, p0, Lc8/quq;->val$subscriber:Lc8/Omq;

    invoke-direct {v0, p0, v2, v1}, Lc8/puq;-><init>(Lc8/quq;Lc8/Omq;Ljava/lang/Thread;)V

    .line 94
    .local v0, "s":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    iget-object v2, p0, Lc8/quq;->this$0:Lc8/ruq;

    iget-object v2, v2, Lc8/ruq;->source:Lc8/Vlq;

    invoke-virtual {v2, v0}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 95
    return-void
.end method
