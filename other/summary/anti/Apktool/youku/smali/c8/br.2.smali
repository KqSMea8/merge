.class public Lc8/br;
.super Lc8/Wq;
.source "MenuItemWrapperJB.java"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/cr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionProviderWrapperJB"
.end annotation


# instance fields
.field mListener:Landroid/support/v4/view/ActionProvider$VisibilityListener;

.field final synthetic this$0:Lc8/cr;


# direct methods
.method public constructor <init>(Lc8/cr;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 0
    .param p1, "this$0"    # Lc8/cr;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "inner"    # Landroid/view/ActionProvider;

    .prologue
    .line 52
    iput-object p1, p0, Lc8/br;->this$0:Lc8/cr;

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lc8/Wq;-><init>(Lc8/ar;Landroid/content/Context;Landroid/view/ActionProvider;)V

    .line 54
    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lc8/br;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    return v0
.end method

.method public onActionProviderVisibilityChanged(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 84
    iget-object v0, p0, Lc8/br;->mListener:Landroid/support/v4/view/ActionProvider$VisibilityListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lc8/br;->mListener:Landroid/support/v4/view/ActionProvider$VisibilityListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ActionProvider$VisibilityListener;->onActionProviderVisibilityChanged(Z)V

    .line 87
    :cond_0
    return-void
.end method

.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1
    .param p1, "forItem"    # Landroid/view/MenuItem;

    .prologue
    .line 58
    iget-object v0, p0, Lc8/br;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public overridesItemVisibility()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lc8/br;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    return v0
.end method

.method public refreshVisibility()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lc8/br;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->refreshVisibility()V

    .line 74
    return-void
.end method

.method public setVisibilityListener(Landroid/support/v4/view/ActionProvider$VisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/view/ActionProvider$VisibilityListener;

    .prologue
    .line 78
    iput-object p1, p0, Lc8/br;->mListener:Landroid/support/v4/view/ActionProvider$VisibilityListener;

    .line 79
    iget-object v0, p0, Lc8/br;->mInner:Landroid/view/ActionProvider;

    if-eqz p1, :cond_0

    .end local p0    # "this":Lc8/br;
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    .line 80
    return-void

    .line 79
    .restart local p0    # "this":Lc8/br;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method
