.class public Lc8/ouq;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lc8/Xlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/puq;->setProducer(Lc8/Xlq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lc8/puq;

.field final synthetic val$p:Lc8/Xlq;


# direct methods
.method constructor <init>(Lc8/puq;Lc8/Xlq;)V
    .locals 0

    .prologue
    .line 76
    .local p0, "this":Lc8/ouq;, "Lrx/internal/operators/OperatorSubscribeOn$1$1.1;"
    iput-object p1, p0, Lc8/ouq;->this$2:Lc8/puq;

    iput-object p2, p0, Lc8/ouq;->val$p:Lc8/Xlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 3
    .param p1, "n"    # J

    .prologue
    .line 79
    .local p0, "this":Lc8/ouq;, "Lrx/internal/operators/OperatorSubscribeOn$1$1.1;"
    iget-object v0, p0, Lc8/ouq;->this$2:Lc8/puq;

    iget-object v0, v0, Lc8/puq;->val$t:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lc8/ouq;->val$p:Lc8/Xlq;

    invoke-interface {v0, p1, p2}, Lc8/Xlq;->request(J)V

    .line 89
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lc8/ouq;->this$2:Lc8/puq;

    iget-object v0, v0, Lc8/puq;->this$1:Lc8/quq;

    iget-object v0, v0, Lc8/quq;->val$inner:Lc8/Zlq;

    new-instance v1, Lc8/nuq;

    invoke-direct {v1, p0, p1, p2}, Lc8/nuq;-><init>(Lc8/ouq;J)V

    invoke-virtual {v0, v1}, Lc8/Zlq;->schedule(Lc8/hnq;)Lc8/Pmq;

    goto :goto_0
.end method
