.class public Lc8/dPf;
.super Landroid/app/Fragment;
.source "TBackFragment.java"


# instance fields
.field private mImageSaveFeature:Lc8/ZOf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 22
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 23
    iget-object v0, p0, Lc8/dPf;->mImageSaveFeature:Lc8/ZOf;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lc8/dPf;->mImageSaveFeature:Lc8/ZOf;

    invoke-virtual {v0, p1, p2, p3}, Lc8/ZOf;->onActivityResult(IILandroid/content/Intent;)V

    .line 26
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 18
    return-void
.end method

.method public setImageSaveFeature(Lc8/ZOf;)V
    .locals 0
    .param p1, "feature"    # Lc8/ZOf;

    .prologue
    .line 29
    iput-object p1, p0, Lc8/dPf;->mImageSaveFeature:Lc8/ZOf;

    .line 30
    return-void
.end method
