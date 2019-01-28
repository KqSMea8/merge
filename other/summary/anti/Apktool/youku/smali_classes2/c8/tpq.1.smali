.class public Lc8/tpq;
.super Ljava/lang/Object;
.source "OnSubscribeDelaySubscription.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/upq;->call(Lc8/Omq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/upq;

.field final synthetic val$s:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/upq;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 49
    .local p0, "this":Lc8/tpq;, "Lrx/internal/operators/OnSubscribeDelaySubscription.1;"
    iput-object p1, p0, Lc8/tpq;->this$0:Lc8/upq;

    iput-object p2, p0, Lc8/tpq;->val$s:Lc8/Omq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 52
    .local p0, "this":Lc8/tpq;, "Lrx/internal/operators/OnSubscribeDelaySubscription.1;"
    iget-object v0, p0, Lc8/tpq;->val$s:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lc8/tpq;->this$0:Lc8/upq;

    iget-object v0, v0, Lc8/upq;->source:Lc8/Vlq;

    iget-object v1, p0, Lc8/tpq;->val$s:Lc8/Omq;

    invoke-static {v1}, Lc8/wAq;->wrap(Lc8/Omq;)Lc8/Omq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 55
    :cond_0
    return-void
.end method
