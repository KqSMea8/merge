.class public Lc8/SAb;
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
    name = "MonitorDBTask"
.end annotation


# instance fields
.field private min:I

.field final synthetic this$0:Lc8/TAb;


# direct methods
.method constructor <init>(Lc8/TAb;)V
    .locals 1

    .prologue
    .line 219
    iput-object p1, p0, Lc8/SAb;->this$0:Lc8/TAb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lc8/SAb;->min:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 230
    :try_start_0
    iget-object v6, p0, Lc8/SAb;->this$0:Lc8/TAb;

    invoke-static {v6}, Lc8/TAb;->access$100(Lc8/TAb;)Lc8/OAb;

    move-result-object v6

    invoke-interface {v6}, Lc8/OAb;->count()I

    move-result v1

    .line 231
    .local v1, "dbLeft":I
    iget-object v6, p0, Lc8/SAb;->this$0:Lc8/TAb;

    invoke-static {v6}, Lc8/TAb;->access$100(Lc8/TAb;)Lc8/OAb;

    move-result-object v6

    invoke-interface {v6}, Lc8/OAb;->getDbFileSize()D

    move-result-wide v2

    .line 232
    .local v2, "dbFileSize":D
    invoke-static {}, Lc8/cCb;->getSystemFreeSize()D

    move-result-wide v4

    .line 233
    .local v4, "freeSize":D
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 234
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v6, "min"

    iget v7, p0, Lc8/SAb;->min:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string/jumbo v6, "dbLeft"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string/jumbo v6, "dbFileSize"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string/jumbo v6, "freeSize"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v6, Lc8/TAb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    sget v7, Lc8/JAb;->DB_MONITOR:I

    invoke-static {v0}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lc8/JAb;->buildCountEvent(ILjava/lang/String;Ljava/lang/Double;)Lc8/JAb;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->onEvent(Lc8/JAb;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v0    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "dbLeft":I
    .end local v2    # "dbFileSize":D
    .end local v4    # "freeSize":D
    :goto_0
    return-void

    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public setMin(I)Lc8/SAb;
    .locals 0
    .param p1, "min"    # I

    .prologue
    .line 223
    iput p1, p0, Lc8/SAb;->min:I

    .line 224
    return-object p0
.end method
