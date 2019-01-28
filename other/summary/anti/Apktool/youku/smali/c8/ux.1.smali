.class public interface abstract Lc8/ux;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/vx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProcessCallback"
.end annotation


# virtual methods
.method public abstract processAppeared(Lc8/Qv;Lc8/pv;Lc8/pv;)V
    .param p2    # Lc8/pv;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract processDisappeared(Lc8/Qv;Lc8/pv;Lc8/pv;)V
    .param p2    # Lc8/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lc8/pv;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract processPersistent(Lc8/Qv;Lc8/pv;Lc8/pv;)V
    .param p2    # Lc8/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lc8/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract unused(Lc8/Qv;)V
.end method
