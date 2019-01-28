.class public Lc8/Uwq;
.super Ljava/lang/Object;
.source "EventLoopsScheduler.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Vwq;->schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Vwq;

.field final synthetic val$action:Lc8/hnq;


# direct methods
.method constructor <init>(Lc8/Vwq;Lc8/hnq;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lc8/Uwq;->this$0:Lc8/Vwq;

    iput-object p2, p0, Lc8/Uwq;->val$action:Lc8/hnq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lc8/Uwq;->this$0:Lc8/Vwq;

    invoke-virtual {v0}, Lc8/Vwq;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lc8/Uwq;->val$action:Lc8/hnq;

    invoke-interface {v0}, Lc8/hnq;->call()V

    goto :goto_0
.end method
