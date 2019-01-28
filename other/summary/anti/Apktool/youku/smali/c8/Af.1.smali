.class public interface abstract Lc8/Af;
.super Ljava/lang/Object;
.source "Animatable2Compat.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/zf;
    }
.end annotation


# virtual methods
.method public abstract clearAnimationCallbacks()V
.end method

.method public abstract registerAnimationCallback(Lc8/zf;)V
    .param p1    # Lc8/zf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract unregisterAnimationCallback(Lc8/zf;)Z
    .param p1    # Lc8/zf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
