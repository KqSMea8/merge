.class public interface abstract Lc8/Mub;
.super Ljava/lang/Object;
.source "IRemoteConfig.java"


# virtual methods
.method public abstract getDelay()J
.end method

.method public abstract getIgnoreParamsBlackList()Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxCacheNum()I
.end method

.method public abstract isSwitchOn()Z
.end method
