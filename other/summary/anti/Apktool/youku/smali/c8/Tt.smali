.class public final Lc8/Tt;
.super Lc8/Yt;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/iu;->createSwitchingAlignment(Lc8/Yt;Lc8/Yt;)Lc8/Yt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$ltr:Lc8/Yt;

.field final synthetic val$rtl:Lc8/Yt;


# direct methods
.method constructor <init>(Lc8/Yt;Lc8/Yt;)V
    .locals 0

    .prologue
    .line 2546
    iput-object p1, p0, Lc8/Tt;->val$ltr:Lc8/Yt;

    iput-object p2, p0, Lc8/Tt;->val$rtl:Lc8/Yt;

    invoke-direct {p0}, Lc8/Yt;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;II)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSize"    # I
    .param p3, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 2556
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 2558
    .local v0, "isLayoutRtl":Z
    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lc8/Tt;->val$ltr:Lc8/Yt;

    :goto_1
    invoke-virtual {v1, p1, p2, p3}, Lc8/Yt;->getAlignmentValue(Landroid/view/View;II)I

    move-result v1

    return v1

    .line 2556
    .end local v0    # "isLayoutRtl":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2558
    .restart local v0    # "isLayoutRtl":Z
    :cond_1
    iget-object v1, p0, Lc8/Tt;->val$rtl:Lc8/Yt;

    goto :goto_1
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cellDelta"    # I

    .prologue
    const/4 v0, 0x1

    .line 2549
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 2551
    .local v0, "isLayoutRtl":Z
    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lc8/Tt;->val$ltr:Lc8/Yt;

    :goto_1
    invoke-virtual {v1, p1, p2}, Lc8/Yt;->getGravityOffset(Landroid/view/View;I)I

    move-result v1

    return v1

    .line 2549
    .end local v0    # "isLayoutRtl":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2551
    .restart local v0    # "isLayoutRtl":Z
    :cond_1
    iget-object v1, p0, Lc8/Tt;->val$rtl:Lc8/Yt;

    goto :goto_1
.end method
