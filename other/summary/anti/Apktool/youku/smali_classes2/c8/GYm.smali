.class public Lc8/GYm;
.super Ljava/lang/Object;
.source "YoukuLogAdapter.java"

# interfaces
.implements Lcom/alibaba/poplayer/norm/ILogAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {}, Lcom/alibaba/poplayerconsole/PopLayerDebugActivity;->isStartDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;->E:Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    invoke-static {p1, v0}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->print(Ljava/lang/String;Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;)V

    .line 26
    :cond_0
    return-void
.end method

.method public varargs Logi(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 16
    invoke-static {}, Lcom/alibaba/poplayerconsole/PopLayerDebugActivity;->isStartDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    array-length v0, p2

    if-nez v0, :cond_1

    .end local p1    # "msg":Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;->I:Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    invoke-static {p1, v0}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->print(Ljava/lang/String;Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;)V

    .line 19
    :cond_0
    return-void

    .line 17
    .restart local p1    # "msg":Ljava/lang/String;
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
