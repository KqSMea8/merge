.class public interface abstract Lc8/hr;
.super Ljava/lang/Object;
.source "MenuPresenter.java"


# annotations
.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/gr;
    }
.end annotation


# virtual methods
.method public abstract collapseItemActionView(Lc8/Rq;Lc8/Vq;)Z
.end method

.method public abstract expandItemActionView(Lc8/Rq;Lc8/Vq;)Z
.end method

.method public abstract flagActionItems()Z
.end method

.method public abstract getId()I
.end method

.method public abstract getMenuView(Landroid/view/ViewGroup;)Lc8/jr;
.end method

.method public abstract initForMenu(Landroid/content/Context;Lc8/Rq;)V
.end method

.method public abstract onCloseMenu(Lc8/Rq;Z)V
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Parcelable;)V
.end method

.method public abstract onSaveInstanceState()Landroid/os/Parcelable;
.end method

.method public abstract onSubMenuSelected(Lc8/pr;)Z
.end method

.method public abstract setCallback(Lc8/gr;)V
.end method

.method public abstract updateMenuView(Z)V
.end method
