.class public Lc8/cw;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/fw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/fw;


# direct methods
.method constructor <init>(Lc8/fw;)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Lc8/cw;->this$0:Lc8/fw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 585
    move-object v3, p1

    check-cast v3, Lc8/dw;

    .line 586
    .local v3, "tabView":Lc8/dw;
    invoke-virtual {v3}, Lc8/dw;->getTab()Lc8/kn;

    move-result-object v4

    invoke-virtual {v4}, Lc8/kn;->select()V

    .line 587
    iget-object v4, p0, Lc8/cw;->this$0:Lc8/fw;

    iget-object v4, v4, Lc8/fw;->mTabLayout:Lc8/ru;

    invoke-virtual {v4}, Lc8/ru;->getChildCount()I

    move-result v2

    .line 588
    .local v2, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 589
    iget-object v4, p0, Lc8/cw;->this$0:Lc8/fw;

    iget-object v4, v4, Lc8/fw;->mTabLayout:Lc8/ru;

    invoke-virtual {v4, v1}, Lc8/ru;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 590
    .local v0, "child":Landroid/view/View;
    if-ne v0, p1, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 588
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 590
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 592
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method
