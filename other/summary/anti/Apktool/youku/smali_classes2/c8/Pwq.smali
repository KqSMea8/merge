.class public Lc8/Pwq;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Qwq;->schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Qwq;

.field final synthetic val$action:Lc8/hnq;


# direct methods
.method constructor <init>(Lc8/Qwq;Lc8/hnq;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lc8/Pwq;->this$0:Lc8/Qwq;

    iput-object p2, p0, Lc8/Pwq;->val$action:Lc8/hnq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lc8/Pwq;->this$0:Lc8/Qwq;

    invoke-virtual {v0}, Lc8/Qwq;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lc8/Pwq;->val$action:Lc8/hnq;

    invoke-interface {v0}, Lc8/hnq;->call()V

    goto :goto_0
.end method
