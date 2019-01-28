.class public Lc8/Odc;
.super Landroid/view/View;
.source "ALiLoadingView.java"


# instance fields
.field private final ROTATE_STEP:I

.field private mClockwise:Z

.field private mContext:Landroid/content/Context;

.field private mForeBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mIsAnimation:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mType:I

.field private mWidth:I

.field private rotate:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    const/16 v0, 0xa

    iput v0, p0, Lc8/Odc;->ROTATE_STEP:I

    .line 30
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/Odc;->mMatrix:Landroid/graphics/Matrix;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Odc;->mClockwise:Z

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lc8/Odc;->mType:I

    .line 43
    iput-object p1, p0, Lc8/Odc;->mContext:Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Lc8/Odc;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    const/16 v0, 0xa

    iput v0, p0, Lc8/Odc;->ROTATE_STEP:I

    .line 30
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/Odc;->mMatrix:Landroid/graphics/Matrix;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Odc;->mClockwise:Z

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lc8/Odc;->mType:I

    .line 51
    iput-object p1, p0, Lc8/Odc;->mContext:Landroid/content/Context;

    .line 52
    iput p2, p0, Lc8/Odc;->mType:I

    .line 53
    invoke-direct {p0}, Lc8/Odc;->init()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/16 v0, 0xa

    iput v0, p0, Lc8/Odc;->ROTATE_STEP:I

    .line 30
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/Odc;->mMatrix:Landroid/graphics/Matrix;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Odc;->mClockwise:Z

    .line 34
    iput v1, p0, Lc8/Odc;->mType:I

    .line 58
    iput-object p1, p0, Lc8/Odc;->mContext:Landroid/content/Context;

    .line 59
    iput v1, p0, Lc8/Odc;->mType:I

    .line 60
    invoke-direct {p0}, Lc8/Odc;->init()V

    .line 61
    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private getResID()I
    .locals 4

    .prologue
    .line 125
    iget v0, p0, Lc8/Odc;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 131
    invoke-virtual {p0}, Lc8/Odc;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "ali_vsdk_shadu_icon_dengdai"

    const-string/jumbo v2, "drawable"

    iget-object v3, p0, Lc8/Odc;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    .line 127
    :pswitch_0
    invoke-virtual {p0}, Lc8/Odc;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "ali_vsdk_shadu_icon_dengdai"

    const-string/jumbo v2, "drawable"

    iget-object v3, p0, Lc8/Odc;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 129
    :pswitch_1
    invoke-virtual {p0}, Lc8/Odc;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "ali_vsdk_button_icon_dengdai"

    const-string/jumbo v2, "drawable"

    iget-object v3, p0, Lc8/Odc;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 136
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".R"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Lc8/Odc;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 139
    .local v5, "cls":Ljava/lang/Class;
    invoke-virtual {v5}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/Class;
    array-length v11, v1

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    move v10, v9

    .end local v1    # "arr$":[Ljava/lang/Class;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_2

    aget-object v3, v1, v10

    .line 140
    .local v3, "childClass":Ljava/lang/Class;
    invoke-static {v3}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    .line 141
    .local v13, "simple":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 142
    invoke-virtual {v3}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/reflect/Field;
    array-length v12, v2

    .local v12, "len$":I
    const/4 v9, 0x0

    .end local v10    # "i$":I
    .restart local v9    # "i$":I
    :goto_1
    if-ge v9, v12, :cond_1

    aget-object v7, v2, v9

    .line 143
    .local v7, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    .line 144
    .local v8, "fieldName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 145
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v14, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 154
    .end local v2    # "arr$":[Ljava/lang/reflect/Field;
    .end local v3    # "childClass":Ljava/lang/Class;
    .end local v5    # "cls":Ljava/lang/Class;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "fieldName":Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "simple":Ljava/lang/String;
    :goto_2
    return-object v14

    .line 142
    .restart local v2    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v3    # "childClass":Ljava/lang/Class;
    .restart local v5    # "cls":Ljava/lang/Class;
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    .restart local v8    # "fieldName":Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v12    # "len$":I
    .restart local v13    # "simple":Ljava/lang/String;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 139
    .end local v2    # "arr$":[Ljava/lang/reflect/Field;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "fieldName":Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    :cond_1
    add-int/lit8 v9, v10, 0x1

    .restart local v9    # "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto :goto_0

    .line 151
    .end local v3    # "childClass":Ljava/lang/Class;
    .end local v5    # "cls":Ljava/lang/Class;
    .end local v10    # "i$":I
    .end local v13    # "simple":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 152
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v14, 0x0

    goto :goto_2
.end method

.method public static getStyleable(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 162
    const-string/jumbo v0, "styleable"

    invoke-static {p0, p1, v0}, Lc8/Odc;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getStyleableArray(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 158
    const-string/jumbo v0, "styleable"

    invoke-static {p0, p1, v0}, Lc8/Odc;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 118
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lc8/Odc;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 120
    iget-object v0, p0, Lc8/Odc;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lc8/Odc;->getResID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lc8/Odc;->mForeBitmap:Landroid/graphics/Bitmap;

    .line 121
    invoke-virtual {p0}, Lc8/Odc;->invalidate()V

    .line 122
    return-void
.end method


# virtual methods
.method protected onDeAttachedToWindow()V
    .locals 0

    .prologue
    .line 113
    invoke-virtual {p0}, Lc8/Odc;->stopRotationAnimation()V

    .line 114
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 115
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 78
    iget-object v0, p0, Lc8/Odc;->mForeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc8/Odc;->mIsAnimation:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lc8/Odc;->init()V

    .line 83
    :cond_0
    iget-object v0, p0, Lc8/Odc;->mForeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lc8/Odc;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lc8/Odc;->rotate:I

    int-to-float v1, v1

    iget-object v2, p0, Lc8/Odc;->mForeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lc8/Odc;->mForeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 87
    iget-object v0, p0, Lc8/Odc;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 88
    iget-object v0, p0, Lc8/Odc;->mForeBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lc8/Odc;->mMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 89
    iget-boolean v0, p0, Lc8/Odc;->mIsAnimation:Z

    if-eqz v0, :cond_1

    .line 90
    iget v0, p0, Lc8/Odc;->rotate:I

    add-int/lit8 v0, v0, 0xa

    const/16 v1, 0x168

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lc8/Odc;->rotate:I

    .line 91
    iget-boolean v0, p0, Lc8/Odc;->mClockwise:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lc8/Odc;->rotate:I

    :goto_1
    iput v0, p0, Lc8/Odc;->rotate:I

    .line 92
    invoke-virtual {p0}, Lc8/Odc;->postInvalidate()V

    .line 96
    :cond_1
    return-void

    .line 90
    :cond_2
    iget v0, p0, Lc8/Odc;->rotate:I

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 91
    :cond_3
    iget v0, p0, Lc8/Odc;->rotate:I

    neg-int v0, v0

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 69
    iget-object v0, p0, Lc8/Odc;->mForeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lc8/Odc;->mWidth:I

    .line 70
    iget-object v0, p0, Lc8/Odc;->mForeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lc8/Odc;->mHeight:I

    .line 71
    iget v0, p0, Lc8/Odc;->mWidth:I

    iget v1, p0, Lc8/Odc;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lc8/Odc;->setMeasuredDimension(II)V

    .line 72
    return-void
.end method

.method public startRotationAnimation()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Odc;->mIsAnimation:Z

    .line 101
    invoke-virtual {p0}, Lc8/Odc;->invalidate()V

    .line 102
    return-void
.end method

.method public stopRotationAnimation()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Odc;->mIsAnimation:Z

    .line 107
    return-void
.end method
