.class public Lc8/YVc;
.super Lc8/sv;
.source "DividerItemDecoration.java"


# static fields
.field private static final ATTRS:[I

.field public static final HORIZONTAL_LIST:I = 0x0

.field public static final VERTICAL_LIST:I = 0x1


# instance fields
.field private inset:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    sput-object v0, Lc8/YVc;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Lc8/sv;-><init>()V

    .line 39
    sget-object v1, Lc8/YVc;->ATTRS:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lc8/YVc;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lc8/YVc;->paint:Landroid/graphics/Paint;

    .line 43
    iget-object v1, p0, Lc8/YVc;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$color;->white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v1, p0, Lc8/YVc;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object v1, p0, Lc8/YVc;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$dimen;->detail_subscribe_subbtn_right_margin_v5:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lc8/YVc;->inset:I

    .line 47
    invoke-virtual {p0, p2}, Lc8/YVc;->setOrientation(I)V

    .line 48
    return-void
.end method


# virtual methods
.method public drawVertical(Landroid/graphics/Canvas;Lc8/Rv;)V
    .locals 15
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lc8/Rv;

    .prologue
    .line 70
    invoke-virtual/range {p2 .. p2}, Lc8/Rv;->getPaddingLeft()I

    move-result v11

    .line 71
    .local v11, "left":I
    invoke-virtual/range {p2 .. p2}, Lc8/Rv;->getWidth()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lc8/Rv;->getPaddingRight()I

    move-result v2

    sub-int v13, v1, v2

    .line 72
    .local v13, "right":I
    invoke-virtual/range {p2 .. p2}, Lc8/Rv;->getChildCount()I

    move-result v9

    .line 73
    .local v9, "childCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_1

    .line 74
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lc8/Rv;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 76
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lc8/yv;

    .line 77
    .local v12, "params":Lc8/yv;
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, v12, Lc8/yv;->bottomMargin:I

    add-int v14, v1, v2

    .line 78
    .local v14, "top":I
    iget-object v1, p0, Lc8/YVc;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int v7, v14, v1

    .line 79
    .local v7, "bottom":I
    iget v1, p0, Lc8/YVc;->inset:I

    if-lez v1, :cond_0

    .line 81
    iget-object v1, p0, Lc8/YVc;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lc8/YVc;->inset:I

    add-int/2addr v2, v11

    iget v3, p0, Lc8/YVc;->inset:I

    sub-int v3, v13, v3

    invoke-virtual {v1, v2, v14, v3, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 85
    :goto_1
    iget-object v1, p0, Lc8/YVc;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 86
    const/4 v2, 0x0

    int-to-float v3, v14

    iget v1, p0, Lc8/YVc;->inset:I

    int-to-float v4, v1

    int-to-float v5, v7

    iget-object v6, p0, Lc8/YVc;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 87
    iget v1, p0, Lc8/YVc;->inset:I

    sub-int v1, v13, v1

    int-to-float v2, v1

    int-to-float v3, v14

    int-to-float v4, v13

    int-to-float v5, v7

    iget-object v6, p0, Lc8/YVc;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 73
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 83
    :cond_0
    iget-object v1, p0, Lc8/YVc;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v11, v14, v13, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 89
    .end local v7    # "bottom":I
    .end local v8    # "child":Landroid/view/View;
    .end local v12    # "params":Lc8/yv;
    .end local v14    # "top":I
    :cond_1
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;ILc8/Rv;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "itemPosition"    # I
    .param p3, "parent"    # Lc8/Rv;

    .prologue
    const/4 v2, 0x0

    .line 107
    iget-object v0, p0, Lc8/YVc;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 108
    iget v0, p0, Lc8/YVc;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 109
    iget-object v0, p0, Lc8/YVc;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lc8/YVc;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1, v2, v2, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;Lc8/Rv;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lc8/Rv;

    .prologue
    .line 60
    iget v0, p0, Lc8/YVc;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p0, p1, p2}, Lc8/YVc;->drawVertical(Landroid/graphics/Canvas;Lc8/Rv;)V

    .line 66
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 51
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iput p1, p0, Lc8/YVc;->mOrientation:I

    .line 55
    return-void
.end method
