.class public Lc8/nI;
.super Landroid/widget/RelativeLayout;
.source "WebWaitingView.java"


# static fields
.field private static final LOADING_BG_ID:I = 0x65

.field private static final LOADING_PGBAR_ID:I = 0x66


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0, p1}, Lc8/nI;->init(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0, p1}, Lc8/nI;->init(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0, p1}, Lc8/nI;->init(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v8, v11, Landroid/util/DisplayMetrics;->density:F

    .line 47
    .local v8, "scale":F
    const/high16 v11, 0x41a00000    # 20.0f

    mul-float v1, v8, v11

    .line 48
    .local v1, "cradius":F
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, "bgView":Landroid/view/View;
    const/16 v11, 0x65

    invoke-virtual {v0, v11}, Landroid/view/View;->setId(I)V

    .line 50
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 51
    .local v2, "gd":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 52
    const v11, -0xbbbbbc

    invoke-virtual {v2, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 53
    const/16 v11, 0x96

    invoke-virtual {v2, v11}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 54
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x10

    if-lt v11, v12, :cond_0

    .line 55
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 60
    :goto_0
    const/high16 v11, 0x42f00000    # 120.0f

    mul-float/2addr v11, v8

    float-to-int v9, v11

    .line 61
    .local v9, "size":I
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 62
    .local v4, "param1":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0xd

    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 63
    invoke-virtual {p0, v0, v4}, Lc8/nI;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance v7, Landroid/widget/ProgressBar;

    invoke-direct {v7, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 68
    .local v7, "progressBar":Landroid/widget/ProgressBar;
    const/16 v11, 0x66

    invoke-virtual {v7, v11}, Landroid/widget/ProgressBar;->setId(I)V

    .line 69
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v6, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 70
    .local v6, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0xe

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 71
    const/4 v11, 0x6

    const/16 v12, 0x65

    invoke-virtual {v6, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 72
    const/high16 v11, 0x41a00000    # 20.0f

    mul-float/2addr v11, v8

    float-to-int v11, v11

    add-int/lit8 v11, v11, 0xa

    iput v11, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 73
    invoke-virtual {p0, v7, v6}, Lc8/nI;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 76
    .local v10, "txt":Landroid/widget/TextView;
    invoke-static {}, Lc8/OH;->isCN()Z

    move-result v11

    if-eqz v11, :cond_1

    const-string/jumbo v3, "\u6b63\u5728\u52a0\u8f7d"

    .line 77
    .local v3, "msg":Ljava/lang/String;
    :goto_1
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v5, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 80
    .local v5, "paramTxt":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0xe

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 81
    const/4 v11, 0x3

    const/16 v12, 0x66

    invoke-virtual {v5, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 82
    invoke-virtual {p0, v10, v5}, Lc8/nI;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    return-void

    .line 57
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "param1":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "paramTxt":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "progressBar":Landroid/widget/ProgressBar;
    .end local v9    # "size":I
    .end local v10    # "txt":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 76
    .restart local v4    # "param1":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v6    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v7    # "progressBar":Landroid/widget/ProgressBar;
    .restart local v9    # "size":I
    .restart local v10    # "txt":Landroid/widget/TextView;
    :cond_1
    const-string/jumbo v3, "Loading"

    goto :goto_1
.end method
