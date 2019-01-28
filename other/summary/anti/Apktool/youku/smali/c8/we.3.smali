.class public final Lc8/we;
.super Landroid/view/View;
.source "TabItem.java"


# instance fields
.field final mCustomLayout:I

.field final mIcon:Landroid/graphics/drawable/Drawable;

.field final mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/we;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    sget-object v1, Lcom/youku/phone/R$styleable;->TabItem:[I

    invoke-static {p1, p2, v1}, Lc8/cx;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lc8/cx;

    move-result-object v0

    .line 52
    .local v0, "a":Lc8/cx;
    sget v1, Lcom/youku/phone/R$styleable;->TabItem_android_text:I

    invoke-virtual {v0, v1}, Lc8/cx;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lc8/we;->mText:Ljava/lang/CharSequence;

    .line 53
    sget v1, Lcom/youku/phone/R$styleable;->TabItem_android_icon:I

    invoke-virtual {v0, v1}, Lc8/cx;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lc8/we;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 54
    sget v1, Lcom/youku/phone/R$styleable;->TabItem_android_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lc8/cx;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lc8/we;->mCustomLayout:I

    .line 55
    invoke-virtual {v0}, Lc8/cx;->recycle()V

    .line 56
    return-void
.end method
