.class public final Lcom/alibaba/poplayer/utils/PopLayerLog;
.super Ljava/lang/Object;
.source "PopLayerLog.java"


# static fields
.field public static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PopLayer"

.field public static THROW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/poplayer/utils/PopLayerLog;->DEBUG:Z

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/poplayer/utils/PopLayerLog;->THROW:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static Loge(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 42
    :try_start_0
    sget-boolean v2, Lcom/alibaba/poplayer/utils/PopLayerLog;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 43
    const-string/jumbo v2, "PopLayer"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/poplayer/PopLayer;->getLogAdapter()Lcom/alibaba/poplayer/norm/ILogAdapter;

    move-result-object v1

    .line 45
    .local v1, "logProxy":Lcom/alibaba/poplayer/norm/ILogAdapter;
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v2

    iget-boolean v2, v2, Lcom/alibaba/poplayer/PopLayer;->isLogOutputMode:Z

    if-eqz v2, :cond_1

    .line 46
    invoke-interface {v1, p0}, Lcom/alibaba/poplayer/norm/ILogAdapter;->Loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v1    # "logProxy":Lcom/alibaba/poplayer/norm/ILogAdapter;
    :cond_1
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static varargs Logi(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 30
    :try_start_0
    sget-boolean v2, Lcom/alibaba/poplayer/utils/PopLayerLog;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 31
    array-length v2, p1

    if-eqz v2, :cond_0

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    :cond_0
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/poplayer/PopLayer;->getLogAdapter()Lcom/alibaba/poplayer/norm/ILogAdapter;

    move-result-object v1

    .line 33
    .local v1, "logProxy":Lcom/alibaba/poplayer/norm/ILogAdapter;
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v2

    iget-boolean v2, v2, Lcom/alibaba/poplayer/PopLayer;->isLogOutputMode:Z

    if-eqz v2, :cond_1

    .line 34
    invoke-interface {v1, p0, p1}, Lcom/alibaba/poplayer/norm/ILogAdapter;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v1    # "logProxy":Lcom/alibaba/poplayer/norm/ILogAdapter;
    :cond_1
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "log.error.e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static dealException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nstack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Loge(Ljava/lang/String;)V

    .line 54
    sget-boolean v0, Lcom/alibaba/poplayer/utils/PopLayerLog;->THROW:Z

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 56
    :cond_0
    return-void
.end method
