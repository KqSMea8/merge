.class public Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;
.super Ljava/lang/Object;
.source "SelfMonitorEventDispather.java"


# static fields
.field private static testListener:Lc8/KAb;


# instance fields
.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/KAb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->listeners:Ljava/util/List;

    return-void
.end method

.method public static setTestListener(Lc8/KAb;)V
    .locals 0
    .param p0, "testListener"    # Lc8/KAb;

    .prologue
    .line 34
    sput-object p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->testListener:Lc8/KAb;

    .line 35
    return-void
.end method


# virtual methods
.method public onEvent(Lc8/JAb;)V
    .locals 2
    .param p1, "event"    # Lc8/JAb;

    .prologue
    .line 22
    sget-object v1, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->testListener:Lc8/KAb;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->testListener:Lc8/KAb;

    invoke-interface {v1, p1}, Lc8/KAb;->onEvent(Lc8/JAb;)V

    .line 23
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 24
    iget-object v1, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/KAb;

    invoke-interface {v1, p1}, Lc8/KAb;->onEvent(Lc8/JAb;)V

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_1
    return-void
.end method

.method public regiserListener(Lc8/KAb;)V
    .locals 1
    .param p1, "listener"    # Lc8/KAb;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method

.method public unRegisterListener(Lc8/KAb;)V
    .locals 1
    .param p1, "listener"    # Lc8/KAb;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method
