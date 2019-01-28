.class public Lc8/RAb;
.super Ljava/lang/Object;
.source "LogStoreMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/TAb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CleanDbTask"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/TAb;


# direct methods
.method constructor <init>(Lc8/TAb;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lc8/RAb;->this$0:Lc8/TAb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 202
    invoke-static {}, Lc8/NBb;->d()V

    .line 203
    iget-object v3, p0, Lc8/RAb;->this$0:Lc8/TAb;

    invoke-static {v3}, Lc8/TAb;->access$000(Lc8/TAb;)I

    move-result v1

    .line 204
    .local v1, "deleteCount":I
    if-lez v1, :cond_0

    .line 205
    sget-object v3, Lc8/TAb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    sget v4, Lc8/JAb;->CLEAN_DB:I

    const-string/jumbo v5, "time_ex"

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lc8/JAb;->buildCountEvent(ILjava/lang/String;Ljava/lang/Double;)Lc8/JAb;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->onEvent(Lc8/JAb;)V

    .line 208
    :cond_0
    iget-object v3, p0, Lc8/RAb;->this$0:Lc8/TAb;

    invoke-static {v3}, Lc8/TAb;->access$100(Lc8/TAb;)Lc8/OAb;

    move-result-object v3

    invoke-interface {v3}, Lc8/OAb;->count()I

    move-result v0

    .line 209
    .local v0, "count":I
    const/16 v3, 0x2328

    if-le v0, v3, :cond_1

    .line 210
    iget-object v3, p0, Lc8/RAb;->this$0:Lc8/TAb;

    invoke-static {v3}, Lc8/TAb;->access$200(Lc8/TAb;)I

    move-result v2

    .line 211
    .local v2, "ret":I
    if-lez v2, :cond_1

    .line 212
    sget-object v3, Lc8/TAb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    sget v4, Lc8/JAb;->CLEAN_DB:I

    const-string/jumbo v5, "count_ex"

    int-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lc8/JAb;->buildCountEvent(ILjava/lang/String;Ljava/lang/Double;)Lc8/JAb;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->onEvent(Lc8/JAb;)V

    .line 216
    .end local v2    # "ret":I
    :cond_1
    return-void
.end method
