.class public Lc8/FN;
.super Ljava/lang/Object;
.source "Repeater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/GN;->onFinish(Lanetwork/channel/aidl/DefaultFinishEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/GN;

.field final synthetic val$event:Lanetwork/channel/aidl/DefaultFinishEvent;

.field final synthetic val$l:Lc8/SM;


# direct methods
.method constructor <init>(Lc8/GN;Lanetwork/channel/aidl/DefaultFinishEvent;Lc8/SM;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lc8/FN;->this$0:Lc8/GN;

    iput-object p2, p0, Lc8/FN;->val$event:Lanetwork/channel/aidl/DefaultFinishEvent;

    iput-object p3, p0, Lc8/FN;->val$l:Lc8/SM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 110
    invoke-static {v9}, Lc8/KL;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const-string/jumbo v1, "anet.Repeater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[onFinish]on Finish waitTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lc8/FN;->this$0:Lc8/GN;

    invoke-static {v3}, Lc8/GN;->access$300(Lc8/GN;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/FN;->this$0:Lc8/GN;

    invoke-static {v3}, Lc8/GN;->access$400(Lc8/GN;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    :cond_0
    iget-object v1, p0, Lc8/FN;->this$0:Lc8/GN;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lc8/GN;->access$302(Lc8/GN;J)J

    .line 114
    iget-object v1, p0, Lc8/FN;->val$event:Lanetwork/channel/aidl/DefaultFinishEvent;

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lc8/FN;->val$event:Lanetwork/channel/aidl/DefaultFinishEvent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lanetwork/channel/aidl/DefaultFinishEvent;->setContext(Ljava/lang/Object;)V

    .line 118
    :cond_1
    :try_start_0
    iget-object v1, p0, Lc8/FN;->val$l:Lc8/SM;

    iget-object v2, p0, Lc8/FN;->val$event:Lanetwork/channel/aidl/DefaultFinishEvent;

    invoke-interface {v1, v2}, Lc8/SM;->onFinished(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    .line 120
    iget-object v1, p0, Lc8/FN;->this$0:Lc8/GN;

    invoke-static {v1}, Lc8/GN;->access$100(Lc8/GN;)Lc8/eN;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 121
    iget-object v1, p0, Lc8/FN;->this$0:Lc8/GN;

    invoke-static {v1}, Lc8/GN;->access$100(Lc8/GN;)Lc8/eN;

    move-result-object v1

    invoke-virtual {v1}, Lc8/eN;->writeEnd()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_2
    :goto_0
    invoke-static {v9}, Lc8/KL;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    const-string/jumbo v1, "anet.Repeater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[onFinish]on Finish process time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lc8/FN;->this$0:Lc8/GN;

    invoke-static {v3}, Lc8/GN;->access$300(Lc8/GN;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/FN;->this$0:Lc8/GN;

    invoke-static {v3}, Lc8/GN;->access$400(Lc8/GN;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :cond_3
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
