.class public interface abstract Lc8/gYf;
.super Ljava/lang/Object;
.source "DOMActionContext.java"


# virtual methods
.method public abstract addAnimationForElement(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addDomInfo(Ljava/lang/String;Lc8/tbg;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAddDOMConsumer()Lc8/GYf;
.end method

.method public abstract getApplyStyleConsumer()Lc8/GYf;
.end method

.method public abstract getCompByRef(Ljava/lang/String;)Lc8/tbg;
.end method

.method public abstract getDomByRef(Ljava/lang/String;)Lc8/HYf;
.end method

.method public abstract getInstance()Lc8/nVf;
.end method

.method public abstract getInstanceId()Ljava/lang/String;
.end method

.method public abstract getRemoveElementConsumer()Lc8/GYf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isDestory()Z
.end method

.method public abstract markDirty()V
.end method

.method public abstract postRenderTask(Lc8/rYf;)V
.end method

.method public abstract registerComponent(Ljava/lang/String;Lc8/tbg;)V
.end method

.method public abstract registerDOMObject(Ljava/lang/String;Lc8/HYf;)V
.end method

.method public abstract unregisterDOMObject(Ljava/lang/String;)V
.end method
