.class public interface abstract Lc8/sJ;
.super Ljava/lang/Object;
.source "IAppMonitor.java"


# virtual methods
.method public abstract commitAlarm(Lc8/yK;)V
.end method

.method public abstract commitCount(Lc8/zK;)V
.end method

.method public abstract commitStat(Lanet/channel/statist/StatObject;)V
.end method

.method public abstract register()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract register(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
