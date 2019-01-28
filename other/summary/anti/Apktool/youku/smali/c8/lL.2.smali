.class public Lc8/lL;
.super Ljava/lang/Object;
.source "AmdcTaskExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/mL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AmdcTask"
.end annotation


# instance fields
.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lc8/mL;


# direct methods
.method constructor <init>(Lc8/mL;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lc8/lL;->this$0:Lc8/mL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lc8/mL;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lc8/lL;->this$0:Lc8/mL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lc8/lL;->params:Ljava/util/Map;

    .line 49
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 56
    :try_start_0
    iget-object v2, p0, Lc8/lL;->params:Ljava/util/Map;

    .line 57
    .local v2, "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v2, :cond_0

    .line 58
    const-class v4, Lc8/mL;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :try_start_1
    iget-object v3, p0, Lc8/lL;->this$0:Lc8/mL;

    invoke-static {v3}, Lc8/mL;->access$000(Lc8/mL;)Ljava/util/Map;

    move-result-object v2

    .line 60
    iget-object v3, p0, Lc8/lL;->this$0:Lc8/mL;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lc8/mL;->access$002(Lc8/mL;Ljava/util/Map;)Ljava/util/Map;

    .line 61
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :cond_0
    :try_start_2
    invoke-static {}, Lc8/FK;->isConnected()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-nez v3, :cond_1

    .line 78
    .end local v2    # "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 61
    .restart local v2    # "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 75
    .end local v2    # "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "awcn.AmdcThreadPoolExecutor"

    const-string/jumbo v4, "exec amdc task failed."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v7, v0, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :try_start_5
    invoke-static {}, Lc8/TI;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v3

    const-string/jumbo v4, "Env"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 69
    const-string/jumbo v3, "awcn.AmdcThreadPoolExecutor"

    const-string/jumbo v4, "task\'s env changed"

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 73
    :cond_2
    invoke-static {v2}, Lc8/qL;->buildParamMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 74
    .local v1, "map":Ljava/util/Map;
    invoke-static {v1}, Lc8/pL;->sendRequest(Ljava/util/Map;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0
.end method
