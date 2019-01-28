.class public Lc8/UPp;
.super Ljava/lang/Object;
.source "NetworkListenerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/WPp;->callFinish(Lc8/nM;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/WPp;

.field final synthetic val$context:Ljava/lang/Object;

.field final synthetic val$finishEvent:Lc8/nM;


# direct methods
.method constructor <init>(Lc8/WPp;Lc8/nM;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lc8/UPp;->this$0:Lc8/WPp;

    iput-object p2, p0, Lc8/UPp;->val$finishEvent:Lc8/nM;

    iput-object p3, p0, Lc8/UPp;->val$context:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 152
    .local v0, "start":J
    iget-object v2, p0, Lc8/UPp;->this$0:Lc8/WPp;

    iget-object v3, p0, Lc8/UPp;->val$finishEvent:Lc8/nM;

    iget-object v4, p0, Lc8/UPp;->val$context:Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lc8/WPp;->access$600(Lc8/WPp;Lc8/nM;Ljava/lang/Object;)V

    .line 153
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    const-string/jumbo v2, "mtopsdk.NetworkListenerAdapter"

    iget-object v3, p0, Lc8/UPp;->this$0:Lc8/WPp;

    invoke-static {v3}, Lc8/WPp;->access$000(Lc8/WPp;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[onFinished] execute time[ms] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    return-void
.end method
