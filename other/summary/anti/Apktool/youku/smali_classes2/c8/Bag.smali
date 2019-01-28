.class public Lc8/Bag;
.super Ljava/lang/Object;
.source "WXRenderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Cag;->runOnThread(Ljava/lang/String;Lc8/rYf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Cag;

.field final synthetic val$action:Lc8/rYf;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lc8/Cag;Ljava/lang/String;Lc8/rYf;J)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lc8/Bag;->this$0:Lc8/Cag;

    iput-object p2, p0, Lc8/Bag;->val$instanceId:Ljava/lang/String;

    iput-object p3, p0, Lc8/Bag;->val$action:Lc8/rYf;

    iput-wide p4, p0, Lc8/Bag;->val$start:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 114
    iget-object v3, p0, Lc8/Bag;->this$0:Lc8/Cag;

    invoke-static {v3}, Lc8/Cag;->access$000(Lc8/Cag;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iget-object v6, p0, Lc8/Bag;->val$instanceId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lc8/Bag;->val$action:Lc8/rYf;

    instance-of v3, v3, Lc8/sZf;

    if-eqz v3, :cond_2

    .line 118
    iget-object v3, p0, Lc8/Bag;->val$action:Lc8/rYf;

    check-cast v3, Lc8/sZf;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lc8/Bag;->val$start:J

    sub-long/2addr v6, v8

    iput-wide v6, v3, Lc8/sZf;->mUIQueueTime:J

    .line 121
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 122
    .local v0, "start":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 123
    .local v4, "uiNanos":J
    iget-object v3, p0, Lc8/Bag;->val$action:Lc8/rYf;

    iget-object v6, p0, Lc8/Bag;->this$0:Lc8/Cag;

    iget-object v7, p0, Lc8/Bag;->val$instanceId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lc8/Cag;->getRenderContext(Ljava/lang/String;)Lc8/sYf;

    move-result-object v6

    invoke-interface {v3, v6}, Lc8/rYf;->executeRender(Lc8/sYf;)V

    .line 125
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v4, v6, v4

    .line 127
    iget-object v3, p0, Lc8/Bag;->val$action:Lc8/rYf;

    instance-of v3, v3, Lc8/sZf;

    if-eqz v3, :cond_0

    .line 128
    iget-object v3, p0, Lc8/Bag;->val$action:Lc8/rYf;

    instance-of v3, v3, Lc8/VYf;

    if-nez v3, :cond_3

    .line 129
    const-string/jumbo v6, "UIExecute"

    iget-object v7, p0, Lc8/Bag;->val$instanceId:Ljava/lang/String;

    iget-object v3, p0, Lc8/Bag;->val$action:Lc8/rYf;

    check-cast v3, Lc8/sZf;

    iget v3, v3, Lc8/sZf;->mTracingEventId:I

    invoke-static {v6, v7, v3}, Lc8/mag;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lc8/kag;

    move-result-object v2

    .line 130
    .local v2, "uiExecuteEvent":Lc8/kag;
    invoke-static {v4, v5}, Lc8/jag;->nanosToMillis(J)D

    move-result-wide v6

    iput-wide v6, v2, Lc8/kag;->duration:D

    .line 131
    iput-wide v0, v2, Lc8/kag;->ts:J

    .line 132
    invoke-virtual {v2}, Lc8/kag;->submit()V

    .line 134
    .end local v2    # "uiExecuteEvent":Lc8/kag;
    :cond_3
    iget-object v3, p0, Lc8/Bag;->val$action:Lc8/rYf;

    check-cast v3, Lc8/sZf;

    invoke-virtual {v3}, Lc8/sZf;->onFinishUIExecute()V

    goto :goto_0
.end method
