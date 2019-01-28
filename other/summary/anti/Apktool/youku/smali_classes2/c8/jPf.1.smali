.class public Lc8/jPf;
.super Lc8/Qv;
.source "TRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qPf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field public final mContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 497
    invoke-direct {p0, p1}, Lc8/Qv;-><init>(Landroid/view/View;)V

    .line 498
    check-cast p1, Landroid/widget/FrameLayout;

    .end local p1    # "view":Landroid/view/View;
    iput-object p1, p0, Lc8/jPf;->mContainer:Landroid/widget/FrameLayout;

    .line 499
    return-void
.end method
