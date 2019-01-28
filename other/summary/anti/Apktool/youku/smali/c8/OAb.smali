.class public interface abstract Lc8/OAb;
.super Ljava/lang/Object;
.source "ILogStore.java"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract clearOldLogByCount(I)I
.end method

.method public abstract clearOldLogByField(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract count()I
.end method

.method public abstract delete(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/tAb;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract get(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lc8/tAb;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDbFileSize()D
.end method

.method public abstract insert(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/tAb;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract update(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/tAb;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateLogPriority(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/tAb;",
            ">;)V"
        }
    .end annotation
.end method
