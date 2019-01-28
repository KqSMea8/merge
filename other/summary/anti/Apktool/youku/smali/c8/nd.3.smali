.class public Lc8/nd;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Lc8/rc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/od;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OffsetUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/od;


# direct methods
.method constructor <init>(Lc8/od;)V
    .locals 0

    .prologue
    .line 1258
    iput-object p1, p0, Lc8/nd;->this$0:Lc8/od;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1259
    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lc8/tc;I)V
    .locals 10
    .param p1, "layout"    # Lc8/tc;
    .param p2, "verticalOffset"    # I

    .prologue
    const/4 v7, 0x0

    .line 1263
    iget-object v8, p0, Lc8/nd;->this$0:Lc8/od;

    iput p2, v8, Lc8/od;->mCurrentOffset:I

    .line 1265
    iget-object v8, p0, Lc8/nd;->this$0:Lc8/od;

    iget-object v8, v8, Lc8/od;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lc8/nd;->this$0:Lc8/od;

    iget-object v8, v8, Lc8/od;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v8}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    .line 1267
    .local v3, "insetTop":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v8, p0, Lc8/nd;->this$0:Lc8/od;

    invoke-virtual {v8}, Lc8/od;->getChildCount()I

    move-result v6

    .local v6, "z":I
    :goto_1
    if-ge v2, v6, :cond_1

    .line 1268
    iget-object v8, p0, Lc8/nd;->this$0:Lc8/od;

    invoke-virtual {v8, v2}, Lc8/od;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1269
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lc8/md;

    .line 1270
    .local v4, "lp":Lc8/md;
    invoke-static {v0}, Lc8/od;->getViewOffsetHelper(Landroid/view/View;)Lc8/qf;

    move-result-object v5

    .line 1272
    .local v5, "offsetHelper":Lc8/qf;
    iget v8, v4, Lc8/md;->mCollapseMode:I

    packed-switch v8, :pswitch_data_0

    .line 1267
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "insetTop":I
    .end local v4    # "lp":Lc8/md;
    .end local v5    # "offsetHelper":Lc8/qf;
    .end local v6    # "z":I
    :cond_0
    move v3, v7

    .line 1265
    goto :goto_0

    .line 1274
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v3    # "insetTop":I
    .restart local v4    # "lp":Lc8/md;
    .restart local v5    # "offsetHelper":Lc8/qf;
    .restart local v6    # "z":I
    :pswitch_0
    neg-int v8, p2

    iget-object v9, p0, Lc8/nd;->this$0:Lc8/od;

    .line 1275
    invoke-virtual {v9, v0}, Lc8/od;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v9

    invoke-static {v8, v7, v9}, Lc8/ae;->constrain(III)I

    move-result v8

    .line 1274
    invoke-virtual {v5, v8}, Lc8/qf;->setTopAndBottomOffset(I)Z

    goto :goto_2

    .line 1278
    :pswitch_1
    neg-int v8, p2

    int-to-float v8, v8

    iget v9, v4, Lc8/md;->mParallaxMult:F

    mul-float/2addr v8, v9

    .line 1279
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1278
    invoke-virtual {v5, v8}, Lc8/qf;->setTopAndBottomOffset(I)Z

    goto :goto_2

    .line 1285
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Lc8/md;
    .end local v5    # "offsetHelper":Lc8/qf;
    :cond_1
    iget-object v7, p0, Lc8/nd;->this$0:Lc8/od;

    invoke-virtual {v7}, Lc8/od;->updateScrimVisibility()V

    .line 1287
    iget-object v7, p0, Lc8/nd;->this$0:Lc8/od;

    iget-object v7, v7, Lc8/od;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2

    if-lez v3, :cond_2

    .line 1288
    iget-object v7, p0, Lc8/nd;->this$0:Lc8/od;

    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1292
    :cond_2
    iget-object v7, p0, Lc8/nd;->this$0:Lc8/od;

    invoke-virtual {v7}, Lc8/od;->getHeight()I

    move-result v7

    iget-object v8, p0, Lc8/nd;->this$0:Lc8/od;

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v1, v7, v3

    .line 1294
    .local v1, "expandRange":I
    iget-object v7, p0, Lc8/nd;->this$0:Lc8/od;

    iget-object v7, v7, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    .line 1295
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v1

    div-float/2addr v8, v9

    .line 1294
    invoke-virtual {v7, v8}, Lc8/jd;->setExpansionFraction(F)V

    .line 1296
    return-void

    .line 1272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
