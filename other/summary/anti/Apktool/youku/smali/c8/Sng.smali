.class public interface abstract Lc8/Sng;
.super Ljava/lang/Object;
.source "AntLifecycle.java"


# virtual methods
.method public abstract appEnterForeground()V
.end method

.method public abstract clearExperiments()V
.end method

.method public abstract enableExperiment(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract getAllExperimentInfo()Ljava/lang/String;
.end method

.method public abstract getBucketsByComponent(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentVersion()I
.end method

.method public abstract getExperiments(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getExperimentsByPageName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getModuleBucketsByComponent(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRunningPoolExperiments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/Vng;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSyncEnable()Z
.end method

.method public abstract getSyncPoolExperiments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/Vng;",
            ">;"
        }
    .end annotation
.end method

.method public abstract init(Landroid/app/Application;Lcom/tmall/wireless/ant/lifecycle/FetchModel;)V
.end method

.method public abstract init(Landroid/app/Application;Lcom/tmall/wireless/ant/lifecycle/FetchModel;Lc8/Rng;)V
.end method

.method public abstract mockExperiment(Lc8/Vng;)Z
.end method

.method public abstract toggleSyncEnable()V
.end method

.method public abstract updateAntData()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract updateAntData(Ljava/lang/String;)V
.end method
