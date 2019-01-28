.class public Lc8/HZo;
.super Landroid/widget/FrameLayout;
.source "HeaderGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/JZo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FullWidthFixedViewLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/JZo;


# direct methods
.method public constructor <init>(Lc8/JZo;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 239
    iput-object p1, p0, Lc8/HZo;->this$0:Lc8/JZo;

    .line 240
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 241
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 244
    iget-object v1, p0, Lc8/HZo;->this$0:Lc8/JZo;

    invoke-virtual {v1}, Lc8/JZo;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lc8/HZo;->this$0:Lc8/JZo;

    .line 245
    invoke-virtual {v2}, Lc8/JZo;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lc8/HZo;->this$0:Lc8/JZo;

    .line 246
    invoke-virtual {v2}, Lc8/JZo;->getPaddingRight()I

    move-result v2

    sub-int v0, v1, v2

    .line 248
    .local v0, "targetWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 247
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 249
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 250
    return-void
.end method
