.class public Lc8/vn;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Lc8/pn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/wn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToolbarCompatDelegate"
.end annotation


# instance fields
.field final mDefaultContentDescription:Ljava/lang/CharSequence;

.field final mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

.field final mToolbar:Lc8/kx;


# direct methods
.method constructor <init>(Lc8/kx;)V
    .locals 1
    .param p1, "toolbar"    # Lc8/kx;

    .prologue
    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    iput-object p1, p0, Lc8/vn;->mToolbar:Lc8/kx;

    .line 665
    invoke-virtual {p1}, Lc8/kx;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lc8/vn;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 666
    invoke-virtual {p1}, Lc8/kx;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lc8/vn;->mDefaultContentDescription:Ljava/lang/CharSequence;

    .line 667
    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lc8/vn;->mToolbar:Lc8/kx;

    invoke-virtual {v0}, Lc8/kx;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lc8/vn;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isNavigationVisible()Z
    .locals 1

    .prologue
    .line 696
    const/4 v0, 0x1

    return v0
.end method

.method public setActionBarDescription(I)V
    .locals 2
    .param p1, "contentDescRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 677
    if-nez p1, :cond_0

    .line 678
    iget-object v0, p0, Lc8/vn;->mToolbar:Lc8/kx;

    iget-object v1, p0, Lc8/vn;->mDefaultContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lc8/kx;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 682
    :goto_0
    return-void

    .line 680
    :cond_0
    iget-object v0, p0, Lc8/vn;->mToolbar:Lc8/kx;

    invoke-virtual {v0, p1}, Lc8/kx;->setNavigationContentDescription(I)V

    goto :goto_0
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 671
    iget-object v0, p0, Lc8/vn;->mToolbar:Lc8/kx;

    invoke-virtual {v0, p1}, Lc8/kx;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 672
    invoke-virtual {p0, p2}, Lc8/vn;->setActionBarDescription(I)V

    .line 673
    return-void
.end method
