.class public Lc8/wZm;
.super Ljava/lang/Object;
.source "MotuReportSendThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static lock:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private context:Landroid/content/Context;

.field private filter:Lc8/uZm;

.field private sendModule:Lc8/rSb;

.field private sendModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/BZm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lc8/wZm;->lock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>(Lc8/rSb;Landroid/content/Context;)V
    .locals 1
    .param p1, "sendModule"    # Lc8/rSb;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lc8/AZm;

    invoke-direct {v0}, Lc8/AZm;-><init>()V

    iput-object v0, p0, Lc8/wZm;->filter:Lc8/uZm;

    .line 29
    iput-object p1, p0, Lc8/wZm;->sendModule:Lc8/rSb;

    .line 30
    iput-object p2, p0, Lc8/wZm;->context:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private beforeProcess()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lc8/wZm;->sendModule:Lc8/rSb;

    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Lc8/yZm;->getInstance()Lc8/yZm;

    move-result-object v0

    iget-object v1, p0, Lc8/wZm;->sendModule:Lc8/rSb;

    invoke-static {v1}, Lc8/BZm;->build(Lc8/rSb;)Lc8/BZm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/yZm;->insertUploadModule(Lc8/BZm;)V

    .line 50
    :cond_0
    invoke-static {}, Lc8/yZm;->getInstance()Lc8/yZm;

    move-result-object v0

    invoke-virtual {v0}, Lc8/yZm;->getSendModules()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/wZm;->sendModules:Ljava/util/List;

    .line 51
    iget-object v0, p0, Lc8/wZm;->filter:Lc8/uZm;

    iget-object v1, p0, Lc8/wZm;->sendModules:Ljava/util/List;

    invoke-interface {v0, v1}, Lc8/uZm;->filter(Ljava/util/List;)V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Process size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/wZm;->sendModules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    return-void
.end method

.method private executeProcess()V
    .locals 12

    .prologue
    .line 56
    iget-object v1, p0, Lc8/wZm;->sendModules:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/wZm;->sendModules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    iget-object v1, p0, Lc8/wZm;->sendModules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc8/BZm;

    .line 59
    .local v10, "sendModule":Lc8/BZm;
    iget-object v1, p0, Lc8/wZm;->context:Landroid/content/Context;

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v10, Lc8/BZm;->businessType:Ljava/lang/String;

    iget-object v5, v10, Lc8/BZm;->eventId:Ljava/lang/Integer;

    .line 63
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v10, Lc8/BZm;->sendFlag:Ljava/lang/String;

    iget-object v7, v10, Lc8/BZm;->sendContent:Ljava/lang/String;

    iget-object v8, v10, Lc8/BZm;->aggregationType:Ljava/lang/String;

    const/4 v9, 0x0

    check-cast v9, Ljava/util/Map;

    .line 59
    invoke-static/range {v1 .. v9}, Lc8/eUb;->sendLog(Landroid/content/Context;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Z

    move-result v0

    .line 69
    .local v0, "isSuccess":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ExecuteProcess id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lc8/BZm;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lc8/yZm;->getInstance()Lc8/yZm;

    move-result-object v1

    invoke-virtual {v1, v10}, Lc8/yZm;->deleteUploadModule(Lc8/BZm;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {}, Lc8/yZm;->getInstance()Lc8/yZm;

    move-result-object v1

    invoke-virtual {v10}, Lc8/BZm;->update()Lc8/BZm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/yZm;->updateUploadModule(Lc8/BZm;)V

    goto :goto_0

    .line 78
    .end local v0    # "isSuccess":Z
    .end local v10    # "sendModule":Lc8/BZm;
    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 35
    sget-object v1, Lc8/wZm;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 37
    :try_start_0
    invoke-direct {p0}, Lc8/wZm;->beforeProcess()V

    .line 38
    invoke-direct {p0}, Lc8/wZm;->executeProcess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    sget-object v1, Lc8/wZm;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 43
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    sget-object v1, Lc8/wZm;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    sget-object v2, Lc8/wZm;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
