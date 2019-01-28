.class public Lc8/Beo;
.super Lc8/sv;
.source "DividerItemDecoration.java"


# static fields
.field private static final ATTRS:[I

.field public static final HORIZONTAL_LIST:I = 0x0

.field public static final VERTICAL_LIST:I = 0x1


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerWidth:I

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    sput-object v0, Lc8/Beo;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Lc8/sv;-><init>()V

    .line 51
    sget-object v1, Lc8/Beo;->ATTRS:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lc8/Beo;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    invoke-virtual {p0, p2}, Lc8/Beo;->setOrientation(I)V

    .line 55
    iget-object v1, p0, Lc8/Beo;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lc8/Beo;->mDividerWidth:I

    .line 56
    iget-object v1, p0, Lc8/Beo;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lc8/Beo;->mDividerHeight:I

    .line 57
    return-void
.end method


# virtual methods
.method public drawHorizontal(Landroid/graphics/Canvas;Lc8/Rv;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lc8/Rv;

    .prologue
    .line 99
    invoke-virtual {p2}, Lc8/Rv;->getPaddingTop()I

    move-result v7

    .line 100
    .local v7, "top":I
    invoke-virtual {p2}, Lc8/Rv;->getHeight()I

    move-result v8

    invoke-virtual {p2}, Lc8/Rv;->getPaddingBottom()I

    move-result v9

    sub-int v0, v8, v9

    .line 102
    .local v0, "bottom":I
    invoke-virtual {p2}, Lc8/Rv;->getChildCount()I

    move-result v2

    .line 103
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 104
    invoke-virtual {p2, v3}, Lc8/Rv;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 106
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lc8/yv;

    .line 107
    .local v5, "params":Lc8/yv;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v8

    iget v9, v5, Lc8/yv;->rightMargin:I

    add-int/2addr v8, v9

    .line 108
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int v4, v8, v9

    .line 109
    .local v4, "left":I
    iget v8, p0, Lc8/Beo;->mDividerHeight:I

    add-int v6, v4, v8

    .line 110
    .local v6, "right":I
    iget-object v8, p0, Lc8/Beo;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v4, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 111
    iget-object v8, p0, Lc8/Beo;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "left":I
    .end local v5    # "params":Lc8/yv;
    .end local v6    # "right":I
    :cond_0
    return-void
.end method

.method public drawVertical(Landroid/graphics/Canvas;Lc8/Rv;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lc8/Rv;

    .prologue
    .line 82
    invoke-virtual {p2}, Lc8/Rv;->getPaddingLeft()I

    move-result v4

    .line 83
    .local v4, "left":I
    invoke-virtual {p2}, Lc8/Rv;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Lc8/Rv;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .line 85
    .local v6, "right":I
    invoke-virtual {p2}, Lc8/Rv;->getChildCount()I

    move-result v2

    .line 86
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 87
    invoke-virtual {p2, v3}, Lc8/Rv;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 89
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lc8/yv;

    .line 90
    .local v5, "params":Lc8/yv;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v9, v5, Lc8/yv;->bottomMargin:I

    add-int/2addr v8, v9

    .line 91
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int v7, v8, v9

    .line 92
    .local v7, "top":I
    iget v8, p0, Lc8/Beo;->mDividerHeight:I

    add-int v0, v7, v8

    .line 93
    .local v0, "bottom":I
    iget-object v8, p0, Lc8/Beo;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v4, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 94
    iget-object v8, p0, Lc8/Beo;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    .end local v5    # "params":Lc8/yv;
    .end local v7    # "top":I
    :cond_0
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;ILc8/Rv;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "itemPosition"    # I
    .param p3, "parent"    # Lc8/Rv;

    .prologue
    const/4 v2, 0x0

    .line 117
    iget v0, p0, Lc8/Beo;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 118
    iget v0, p0, Lc8/Beo;->mDividerHeight:I

    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget v0, p0, Lc8/Beo;->mDividerWidth:I

    invoke-virtual {p1, v2, v2, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;Lc8/Rv;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lc8/Rv;

    .prologue
    .line 74
    iget v0, p0, Lc8/Beo;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 75
    invoke-virtual {p0, p1, p2}, Lc8/Beo;->drawVertical(Landroid/graphics/Canvas;Lc8/Rv;)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0, p1, p2}, Lc8/Beo;->drawHorizontal(Landroid/graphics/Canvas;Lc8/Rv;)V

    goto :goto_0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "dividerWidth"    # I

    .prologue
    .line 60
    iput-object p1, p0, Lc8/Beo;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 61
    iput p2, p0, Lc8/Beo;->mDividerWidth:I

    .line 62
    iput p2, p0, Lc8/Beo;->mDividerHeight:I

    .line 63
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 66
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iput p1, p0, Lc8/Beo;->mOrientation:I

    .line 70
    return-void
.end method
