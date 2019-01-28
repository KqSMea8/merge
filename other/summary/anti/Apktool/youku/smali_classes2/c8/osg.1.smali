.class public interface abstract Lc8/osg;
.super Ljava/lang/Object;
.source "IUploaderManager.java"


# virtual methods
.method public abstract cancelAsync(Lc8/qsg;)Z
    .param p1    # Lc8/qsg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract initialize(Landroid/content/Context;Lc8/jsg;)Z
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lc8/jsg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract uploadAsync(Lc8/qsg;Lc8/hsg;Landroid/os/Handler;)Z
    .param p1    # Lc8/qsg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lc8/hsg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
