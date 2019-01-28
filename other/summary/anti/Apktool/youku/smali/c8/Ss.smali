.class public Lc8/Ss;
.super Landroid/widget/Spinner;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Rs;,
        Lc8/Ns;
    }
.end annotation


# static fields
.field private static final ATTRS_ANDROID_SPINNERMODE:[I

.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field private static final MODE_DIALOG:I = 0x0

.field private static final MODE_DROPDOWN:I = 0x1

.field private static final MODE_THEME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AppCompatSpinner"


# instance fields
.field private mBackgroundTintHelper:Lc8/ps;

.field mDropDownWidth:I

.field private mForwardingListener:Lc8/Kt;

.field mPopup:Lc8/Rs;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupSet:Z

.field private mTempAdapter:Landroid/widget/SpinnerAdapter;

.field final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10102f1

    aput v2, v0, v1

    sput-object v0, Lc8/Ss;->ATTRS_ANDROID_SPINNERMODE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/Ss;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 121
    const/4 v0, 0x0

    sget v1, Lcom/youku/phone/R$attr;->spinnerStyle:I

    invoke-direct {p0, p1, v0, v1, p2}, Lc8/Ss;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 132
    sget v0, Lcom/youku/phone/R$attr;->spinnerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lc8/Ss;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 147
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lc8/Ss;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "mode"    # I

    .prologue
    .line 166
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lc8/Ss;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "mode"    # I
    .param p5, "popupTheme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 195
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lc8/Ss;->mTempRect:Landroid/graphics/Rect;

    .line 197
    sget-object v7, Lcom/youku/phone/R$styleable;->Spinner:[I

    const/4 v8, 0x0

    invoke-static {p1, p2, v7, p3, v8}, Lc8/cx;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lc8/cx;

    move-result-object v0

    .line 200
    .local v0, "a":Lc8/cx;
    new-instance v7, Lc8/ps;

    invoke-direct {v7, p0}, Lc8/ps;-><init>(Landroid/view/View;)V

    iput-object v7, p0, Lc8/Ss;->mBackgroundTintHelper:Lc8/ps;

    .line 202
    if-eqz p5, :cond_5

    .line 203
    new-instance v7, Lc8/nq;

    invoke-direct {v7, p1, p5}, Lc8/nq;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iput-object v7, p0, Lc8/Ss;->mPopupContext:Landroid/content/Context;

    .line 215
    :goto_0
    iget-object v7, p0, Lc8/Ss;->mPopupContext:Landroid/content/Context;

    if-eqz v7, :cond_2

    .line 216
    const/4 v7, -0x1

    if-ne p4, v7, :cond_1

    .line 217
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_9

    .line 219
    const/4 v1, 0x0

    .line 221
    .local v1, "aa":Landroid/content/res/TypedArray;
    :try_start_0
    sget-object v7, Lc8/Ss;->ATTRS_ANDROID_SPINNERMODE:[I

    const/4 v8, 0x0

    invoke-virtual {p1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 223
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 224
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p4

    .line 229
    :cond_0
    if-eqz v1, :cond_1

    .line 230
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 239
    .end local v1    # "aa":Landroid/content/res/TypedArray;
    :cond_1
    :goto_1
    const/4 v7, 0x1

    if-ne p4, v7, :cond_2

    .line 240
    new-instance v5, Lc8/Rs;

    iget-object v7, p0, Lc8/Ss;->mPopupContext:Landroid/content/Context;

    invoke-direct {v5, p0, v7, p2, p3}, Lc8/Rs;-><init>(Lc8/Ss;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 241
    .local v5, "popup":Lc8/Rs;
    iget-object v7, p0, Lc8/Ss;->mPopupContext:Landroid/content/Context;

    sget-object v8, Lcom/youku/phone/R$styleable;->Spinner:[I

    const/4 v9, 0x0

    invoke-static {v7, p2, v8, p3, v9}, Lc8/cx;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lc8/cx;

    move-result-object v4

    .line 243
    .local v4, "pa":Lc8/cx;
    sget v7, Lcom/youku/phone/R$styleable;->Spinner_android_dropDownWidth:I

    const/4 v8, -0x2

    invoke-virtual {v4, v7, v8}, Lc8/cx;->getLayoutDimension(II)I

    move-result v7

    iput v7, p0, Lc8/Ss;->mDropDownWidth:I

    .line 245
    sget v7, Lcom/youku/phone/R$styleable;->Spinner_android_popupBackground:I

    .line 246
    invoke-virtual {v4, v7}, Lc8/cx;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 245
    invoke-virtual {v5, v7}, Lc8/Rs;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    sget v7, Lcom/youku/phone/R$styleable;->Spinner_android_prompt:I

    invoke-virtual {v0, v7}, Lc8/cx;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lc8/Rs;->setPromptText(Ljava/lang/CharSequence;)V

    .line 248
    invoke-virtual {v4}, Lc8/cx;->recycle()V

    .line 250
    iput-object v5, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    .line 251
    new-instance v7, Lc8/Ms;

    invoke-direct {v7, p0, p0, v5}, Lc8/Ms;-><init>(Lc8/Ss;Landroid/view/View;Lc8/Rs;)V

    iput-object v7, p0, Lc8/Ss;->mForwardingListener:Lc8/Kt;

    .line 268
    .end local v4    # "pa":Lc8/cx;
    .end local v5    # "popup":Lc8/Rs;
    :cond_2
    sget v7, Lcom/youku/phone/R$styleable;->Spinner_android_entries:I

    invoke-virtual {v0, v7}, Lc8/cx;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 269
    .local v3, "entries":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_3

    .line 270
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v7, 0x1090008

    invoke-direct {v2, p1, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 272
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    sget v7, Lcom/youku/phone/R$layout;->support_simple_spinner_dropdown_item:I

    invoke-virtual {v2, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 273
    invoke-virtual {p0, v2}, Lc8/Ss;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 276
    .end local v2    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_3
    invoke-virtual {v0}, Lc8/cx;->recycle()V

    .line 278
    const/4 v7, 0x1

    iput-boolean v7, p0, Lc8/Ss;->mPopupSet:Z

    .line 282
    iget-object v7, p0, Lc8/Ss;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v7, :cond_4

    .line 283
    iget-object v7, p0, Lc8/Ss;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, v7}, Lc8/Ss;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 284
    const/4 v7, 0x0

    iput-object v7, p0, Lc8/Ss;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    .line 287
    :cond_4
    iget-object v7, p0, Lc8/Ss;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v7, p2, p3}, Lc8/ps;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 288
    return-void

    .line 205
    .end local v3    # "entries":[Ljava/lang/CharSequence;
    :cond_5
    sget v7, Lcom/youku/phone/R$styleable;->Spinner_popupTheme:I

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Lc8/cx;->getResourceId(II)I

    move-result v6

    .line 206
    .local v6, "popupThemeResId":I
    if-eqz v6, :cond_6

    .line 207
    new-instance v7, Lc8/nq;

    invoke-direct {v7, p1, v6}, Lc8/nq;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lc8/Ss;->mPopupContext:Landroid/content/Context;

    goto/16 :goto_0

    .line 211
    :cond_6
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-ge v7, v8, :cond_7

    move-object v7, p1

    :goto_2
    iput-object v7, p0, Lc8/Ss;->mPopupContext:Landroid/content/Context;

    goto/16 :goto_0

    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .line 229
    .end local v6    # "popupThemeResId":I
    .restart local v1    # "aa":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v7

    if-eqz v1, :cond_1

    .line 230
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    .line 229
    :catchall_0
    move-exception v7

    if-eqz v1, :cond_8

    .line 230
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_8
    throw v7

    .line 235
    .end local v1    # "aa":Landroid/content/res/TypedArray;
    :cond_9
    const/4 p4, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 13
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 538
    if-nez p1, :cond_1

    .line 539
    const/4 v8, 0x0

    .line 578
    :cond_0
    :goto_0
    return v8

    .line 542
    :cond_1
    const/4 v8, 0x0

    .line 543
    .local v8, "width":I
    const/4 v5, 0x0

    .line 544
    .local v5, "itemView":Landroid/view/View;
    const/4 v4, 0x0

    .line 546
    .local v4, "itemType":I
    invoke-virtual {p0}, Lc8/Ss;->getMeasuredWidth()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 548
    .local v9, "widthMeasureSpec":I
    invoke-virtual {p0}, Lc8/Ss;->getMeasuredHeight()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 552
    .local v2, "heightMeasureSpec":I
    const/4 v10, 0x0

    invoke-virtual {p0}, Lc8/Ss;->getSelectedItemPosition()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 553
    .local v7, "start":I
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v10

    add-int/lit8 v11, v7, 0xf

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 554
    .local v1, "end":I
    sub-int v0, v1, v7

    .line 555
    .local v0, "count":I
    const/4 v10, 0x0

    rsub-int/lit8 v11, v0, 0xf

    sub-int v11, v7, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 556
    move v3, v7

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 557
    invoke-interface {p1, v3}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v6

    .line 558
    .local v6, "positionType":I
    if-eq v6, v4, :cond_2

    .line 559
    move v4, v6

    .line 560
    const/4 v5, 0x0

    .line 562
    :cond_2
    invoke-interface {p1, v3, v5, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 563
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-nez v10, :cond_3

    .line 564
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    :cond_3
    invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V

    .line 569
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 556
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 573
    .end local v6    # "positionType":I
    :cond_4
    if-eqz p2, :cond_0

    .line 574
    iget-object v10, p0, Lc8/Ss;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 575
    iget-object v10, p0, Lc8/Ss;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lc8/Ss;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 531
    invoke-super {p0}, Landroid/widget/Spinner;->drawableStateChanged()V

    .line 532
    iget-object v0, p0, Lc8/Ss;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lc8/Ss;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v0}, Lc8/ps;->applySupportBackgroundTint()V

    .line 535
    :cond_0
    return-void
.end method

.method public getDropDownHorizontalOffset()I
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    invoke-virtual {v0}, Lc8/Rs;->getHorizontalOffset()I

    move-result v0

    .line 360
    :goto_0
    return v0

    .line 357
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 358
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result v0

    goto :goto_0

    .line 360
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropDownVerticalOffset()I
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    invoke-virtual {v0}, Lc8/Rs;->getVerticalOffset()I

    move-result v0

    .line 337
    :goto_0
    return v0

    .line 334
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 335
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result v0

    goto :goto_0

    .line 337
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropDownWidth()I
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    if-eqz v0, :cond_0

    .line 373
    iget v0, p0, Lc8/Ss;->mDropDownWidth:I

    .line 377
    :goto_0
    return v0

    .line 374
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 375
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result v0

    goto :goto_0

    .line 377
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    invoke-virtual {v0}, Lc8/Rs;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 320
    :goto_0
    return-object v0

    .line 317
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 318
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 320
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPopupContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lc8/Ss;->mPopupContext:Landroid/content/Context;

    .line 299
    :goto_0
    return-object v0

    .line 296
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 297
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 299
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    invoke-virtual {v0}, Lc8/Rs;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 496
    iget-object v0, p0, Lc8/Ss;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Ss;->mBackgroundTintHelper:Lc8/ps;

    .line 497
    invoke-virtual {v0}, Lc8/ps;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 525
    iget-object v0, p0, Lc8/Ss;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Ss;->mBackgroundTintHelper:Lc8/ps;

    .line 526
    invoke-virtual {v0}, Lc8/ps;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 399
    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    .line 401
    iget-object v0, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    invoke-virtual {v0}, Lc8/Rs;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    invoke-virtual {v0}, Lc8/Rs;->dismiss()V

    .line 404
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 416
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    .line 418
    iget-object v1, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 419
    invoke-virtual {p0}, Lc8/Ss;->getMeasuredWidth()I

    move-result v0

    .line 421
    .local v0, "measuredWidth":I
    invoke-virtual {p0}, Lc8/Ss;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lc8/Ss;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lc8/Ss;->compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 420
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 422
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 420
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 423
    invoke-virtual {p0}, Lc8/Ss;->getMeasuredHeight()I

    move-result v2

    .line 420
    invoke-virtual {p0, v1, v2}, Lc8/Ss;->setMeasuredDimension(II)V

    .line 425
    .end local v0    # "measuredWidth":I
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 408
    iget-object v0, p0, Lc8/Ss;->mForwardingListener:Lc8/Kt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Ss;->mForwardingListener:Lc8/Kt;

    invoke-virtual {v0, p0, p1}, Lc8/Kt;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    const/4 v0, 0x1

    .line 411
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    invoke-virtual {v0}, Lc8/Rs;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    invoke-virtual {v0}, Lc8/Rs;->show()V

    .line 434
    :cond_0
    const/4 v0, 0x1

    .line 438
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 68
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lc8/Ss;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .prologue
    .line 384
    iget-boolean v1, p0, Lc8/Ss;->mPopupSet:Z

    if-nez v1, :cond_1

    .line 385
    iput-object p1, p0, Lc8/Ss;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 391
    iget-object v1, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Lc8/Ss;->mPopupContext:Landroid/content/Context;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lc8/Ss;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 393
    .local v0, "popupContext":Landroid/content/Context;
    :goto_1
    iget-object v1, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    new-instance v2, Lc8/Ns;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lc8/Ns;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {v1, v2}, Lc8/Rs;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 392
    .end local v0    # "popupContext":Landroid/content/Context;
    :cond_2
    iget-object v0, p0, Lc8/Ss;->mPopupContext:Landroid/content/Context;

    goto :goto_1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 465
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 466
    iget-object v0, p0, Lc8/Ss;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lc8/Ss;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v0, p1}, Lc8/ps;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 469
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 457
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    .line 458
    iget-object v0, p0, Lc8/Ss;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lc8/Ss;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v0, p1}, Lc8/ps;->onSetBackgroundResource(I)V

    .line 461
    :cond_0
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 2
    .param p1, "pixels"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    invoke-virtual {v0, p1}, Lc8/Rs;->setHorizontalOffset(I)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 344
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    goto :goto_0
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 2
    .param p1, "pixels"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    invoke-virtual {v0, p1}, Lc8/Rs;->setVerticalOffset(I)V

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 327
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    goto :goto_0
.end method

.method public setDropDownWidth(I)V
    .locals 2
    .param p1, "pixels"    # I

    .prologue
    .line 364
    iget-object v0, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    if-eqz v0, :cond_1

    .line 365
    iput p1, p0, Lc8/Ss;->mDropDownWidth:I

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 367
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    goto :goto_0
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 303
    iget-object v0, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    invoke-virtual {v0, p1}, Lc8/Rs;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 306
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setPopupBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 311
    invoke-virtual {p0}, Lc8/Ss;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/kp;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Ss;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "prompt"    # Ljava/lang/CharSequence;

    .prologue
    .line 443
    iget-object v0, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lc8/Ss;->mPopup:Lc8/Rs;

    invoke-virtual {v0, p1}, Lc8/Rs;->setPromptText(Ljava/lang/CharSequence;)V

    .line 448
    :goto_0
    return-void

    .line 446
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Lc8/Ss;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lc8/Ss;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v0, p1}, Lc8/ps;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 484
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 510
    iget-object v0, p0, Lc8/Ss;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lc8/Ss;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v0, p1}, Lc8/ps;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 513
    :cond_0
    return-void
.end method
