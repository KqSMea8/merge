.class public Lc8/qq;
.super Landroid/view/ActionMode;
.source "SupportActionModeWrapper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/pq;
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final mWrappedObject:Lc8/lq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/lq;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "supportActionMode"    # Lc8/lq;

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 51
    iput-object p1, p0, Lc8/qq;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lc8/qq;->mWrappedObject:Lc8/lq;

    .line 53
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lc8/qq;->mWrappedObject:Lc8/lq;

    invoke-virtual {v0}, Lc8/lq;->finish()V

    .line 83
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lc8/qq;->mWrappedObject:Lc8/lq;

    invoke-virtual {v0}, Lc8/lq;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 2

    .prologue
    .line 87
    iget-object v1, p0, Lc8/qq;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lc8/qq;->mWrappedObject:Lc8/lq;

    invoke-virtual {v0}, Lc8/lq;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v4/internal/view/SupportMenu;

    invoke-static {v1, v0}, Lc8/kr;->wrapSupportMenu(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenu;)Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lc8/qq;->mWrappedObject:Lc8/lq;

    invoke-virtual {v0}, Lc8/lq;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lc8/qq;->mWrappedObject:Lc8/lq;

    invoke-virtual {v0}, Lc8/lq;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lc8/qq;->mWrappedObject:Lc8/lq;

    invoke-virtual {v0}, Lc8/lq;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lc8/qq;->mWrappedObject:Lc8/lq;

    invoke-virtual {v0}, Lc8/lq;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleOptionalHint()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lc8/qq;->mWrappedObject:Lc8/lq;

    invoke-virtual {v0}, Lc8/lq;->getTitleOptionalHint()Z

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lc8/qq;->mWrappedObject:Lc8/lq;

    invoke-virtual {v0}, Lc8/lq;->invalidate()V

    .line 78
    return-void
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lc8/qq;->mWrappedObject:Lc8/lq;

    invoke-virtual {v0}, Lc8/lq;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 117
    iget-object v0, p0, Lc8/qq;->mWrappedObject:Lc8/lq;

    invoke-virtual {v0, p1}, Lc8/lq;->setCustomView(Landroid/view/View;)V

    .line 118
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lc8/qq;->mWrappedObject:Lc8/lq;

    invoke-virtual {v0, p1}, Lc8/lq;->setSubtitle(I)V

    .line 108
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 72
    iget-object v0, p0, Lc8/qq;->mWrappedObject:Lc8/lq;

    invoke-virtual {v0, p1}, Lc8/lq;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 62
    iget-object v0, p0, Lc8/qq;->mWrappedObject:Lc8/lq;

    invoke-virtual {v0, p1}, Lc8/lq;->setTag(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lc8/qq;->mWrappedObject:Lc8/lq;

    invoke-virtual {v0, p1}, Lc8/lq;->setTitle(I)V

    .line 98
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 67
    iget-object v0, p0, Lc8/qq;->mWrappedObject:Lc8/lq;

    invoke-virtual {v0, p1}, Lc8/lq;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .prologue
    .line 132
    iget-object v0, p0, Lc8/qq;->mWrappedObject:Lc8/lq;

    invoke-virtual {v0, p1}, Lc8/lq;->setTitleOptionalHint(Z)V

    .line 133
    return-void
.end method
