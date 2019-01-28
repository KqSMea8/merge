.class public final Lc8/lZb;
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
    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lc8/lZb;->DEBUG:Z

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lc8/lZb;->THROW:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static Loge(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 38
    :try_start_0
    sget-boolean v1, Lc8/lZb;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 39
    const-string/jumbo v1, "PopLayer"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    invoke-static {}, Lcom/alibaba/poplayerconsole/PopLayerDebugActivity;->isStartDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    sget-object v1, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;->E:Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    invoke-static {p0, v1}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->print(Ljava/lang/String;Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_1
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static varargs Logi(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 27
    :try_start_0
    sget-boolean v1, Lc8/lZb;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 28
    array-length v1, p1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    :cond_0
    invoke-static {}, Lcom/alibaba/poplayerconsole/PopLayerDebugActivity;->isStartDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    array-length v1, p1

    if-nez v1, :cond_2

    .end local p0    # "msg":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;->I:Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    invoke-static {p0, v1}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->print(Ljava/lang/String;Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;)V

    .line 34
    :cond_1
    :goto_1
    return-void

    .line 30
    .restart local p0    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 31
    .end local p0    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "log.error.e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/lZb;->Loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static dealException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 48
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

    invoke-static {v0}, Lc8/lZb;->Loge(Ljava/lang/String;)V

    .line 49
    sget-boolean v0, Lc8/lZb;->THROW:Z

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 51
    :cond_0
    return-void
.end method
