.class public Lc8/Ceo;
.super Lc8/Deo;
.source "TranslateItemDecoration.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "size"    # I
    .param p3, "orientation"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p3}, Lc8/Deo;-><init>(Landroid/content/Context;I)V

    .line 18
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 19
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0, p2}, Lc8/Ceo;->setDivider(Landroid/graphics/drawable/Drawable;I)V

    .line 20
    return-void
.end method
