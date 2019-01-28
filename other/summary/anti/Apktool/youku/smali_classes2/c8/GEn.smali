.class public Lc8/GEn;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/IEn;->showCustomTitle()Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/IEn;


# direct methods
.method constructor <init>(Lc8/IEn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/IEn;

    .prologue
    .line 482
    iput-object p1, p0, Lc8/GEn;->this$0:Lc8/IEn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    const/4 v4, 0x0

    .line 488
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 489
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, p4

    sub-int v1, v2, p2

    .line 490
    .local v1, "margin":I
    iget-object v2, p0, Lc8/GEn;->this$0:Lc8/IEn;

    invoke-static {v2}, Lc8/IEn;->access$000(Lc8/IEn;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 491
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    if-lez v1, :cond_2

    .line 492
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-ne v2, v1, :cond_1

    .line 504
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "margin":I
    :cond_0
    :goto_0
    return-void

    .line 495
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1    # "margin":I
    :cond_1
    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 502
    :goto_1
    iget-object v2, p0, Lc8/GEn;->this$0:Lc8/IEn;

    invoke-static {v2}, Lc8/IEn;->access$000(Lc8/IEn;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 497
    :cond_2
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    neg-int v3, v1

    if-eq v2, v3, :cond_0

    .line 500
    neg-int v2, v1

    invoke-virtual {v0, v4, v4, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1
.end method
