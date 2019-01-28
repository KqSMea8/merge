.class public interface abstract Lc8/Ku;
.super Ljava/lang/Object;
.source "MenuItemHoverListener.java"


# annotations
.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# virtual methods
.method public abstract onItemHoverEnter(Lc8/Rq;Landroid/view/MenuItem;)V
    .param p1    # Lc8/Rq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onItemHoverExit(Lc8/Rq;Landroid/view/MenuItem;)V
    .param p1    # Lc8/Rq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
