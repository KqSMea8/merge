.class public interface abstract Lc8/Sg;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Lc8/ah;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Tg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TransitionListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/ah",
        "<",
        "Lc8/Tg;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onTransitionCancel(Lc8/Tg;)V
    .param p1    # Lc8/Tg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onTransitionEnd(Lc8/Tg;)V
    .param p1    # Lc8/Tg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onTransitionPause(Lc8/Tg;)V
    .param p1    # Lc8/Tg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onTransitionResume(Lc8/Tg;)V
    .param p1    # Lc8/Tg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onTransitionStart(Lc8/Tg;)V
    .param p1    # Lc8/Tg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
