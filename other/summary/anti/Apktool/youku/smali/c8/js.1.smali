.class public Lc8/js;
.super Landroid/view/ViewGroup;
.source "ActivityChooserView.java"

# interfaces
.implements Lc8/Ur;


# annotations
.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/is;,
        Lc8/gs;,
        Lc8/hs;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActivityChooserView"


# instance fields
.field private final mActivityChooserContent:Lc8/ru;

.field private final mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

.field final mAdapter:Lc8/gs;

.field private final mCallbacks:Lc8/hs;

.field private mDefaultActionButtonContentDescription:I

.field final mDefaultActivityButton:Landroid/widget/FrameLayout;

.field private final mDefaultActivityButtonImage:Landroid/widget/ImageView;

.field final mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

.field private final mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

.field mInitialActivityCount:I

.field private mIsAttachedToWindow:Z

.field mIsSelectingDefaultActivity:Z

.field private final mListPopupMaxWidth:I

.field private mListPopupWindow:Lc8/Hu;

.field final mModelDataSetObserver:Landroid/database/DataSetObserver;

.field mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field mProvider:Landroid/support/v4/view/ActionProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/js;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/js;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x4

    .line 216
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    new-instance v5, Lc8/cs;

    invoke-direct {v5, p0}, Lc8/cs;-><init>(Lc8/js;)V

    iput-object v5, p0, Lc8/js;->mModelDataSetObserver:Landroid/database/DataSetObserver;

    .line 143
    new-instance v5, Lc8/ds;

    invoke-direct {v5, p0}, Lc8/ds;-><init>(Lc8/js;)V

    iput-object v5, p0, Lc8/js;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 177
    iput v7, p0, Lc8/js;->mInitialActivityCount:I

    .line 218
    sget-object v5, Lcom/youku/phone/R$styleable;->ActivityChooserView:[I

    const/4 v6, 0x0

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 221
    .local v0, "attributesArray":Landroid/content/res/TypedArray;
    sget v5, Lcom/youku/phone/R$styleable;->ActivityChooserView_initialActivityCount:I

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lc8/js;->mInitialActivityCount:I

    .line 225
    sget v5, Lcom/youku/phone/R$styleable;->ActivityChooserView_expandActivityOverflowButtonDrawable:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 228
    .local v1, "expandActivityOverflowButtonDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 230
    invoke-virtual {p0}, Lc8/js;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 231
    .local v3, "inflater":Landroid/view/LayoutInflater;
    sget v5, Lcom/youku/phone/R$layout;->abc_activity_chooser_view:I

    const/4 v6, 0x1

    invoke-virtual {v3, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 233
    new-instance v5, Lc8/hs;

    invoke-direct {v5, p0}, Lc8/hs;-><init>(Lc8/js;)V

    iput-object v5, p0, Lc8/js;->mCallbacks:Lc8/hs;

    .line 235
    sget v5, Lcom/youku/phone/R$id;->activity_chooser_view_content:I

    invoke-virtual {p0, v5}, Lc8/js;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lc8/ru;

    iput-object v5, p0, Lc8/js;->mActivityChooserContent:Lc8/ru;

    .line 236
    iget-object v5, p0, Lc8/js;->mActivityChooserContent:Lc8/ru;

    invoke-virtual {v5}, Lc8/ru;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lc8/js;->mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

    .line 238
    sget v5, Lcom/youku/phone/R$id;->default_activity_button:I

    invoke-virtual {p0, v5}, Lc8/js;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lc8/js;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    .line 239
    iget-object v5, p0, Lc8/js;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lc8/js;->mCallbacks:Lc8/hs;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v5, p0, Lc8/js;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lc8/js;->mCallbacks:Lc8/hs;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 241
    iget-object v5, p0, Lc8/js;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    sget v6, Lcom/youku/phone/R$id;->image:I

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lc8/js;->mDefaultActivityButtonImage:Landroid/widget/ImageView;

    .line 243
    sget v5, Lcom/youku/phone/R$id;->expand_activities_button:I

    invoke-virtual {p0, v5}, Lc8/js;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 244
    .local v2, "expandButton":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lc8/js;->mCallbacks:Lc8/hs;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    new-instance v5, Lc8/es;

    invoke-direct {v5, p0, v2}, Lc8/es;-><init>(Lc8/js;Landroid/view/View;)V

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 263
    iput-object v2, p0, Lc8/js;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    .line 264
    sget v5, Lcom/youku/phone/R$id;->image:I

    .line 265
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lc8/js;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    .line 266
    iget-object v5, p0, Lc8/js;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    new-instance v5, Lc8/gs;

    invoke-direct {v5, p0}, Lc8/gs;-><init>(Lc8/js;)V

    iput-object v5, p0, Lc8/js;->mAdapter:Lc8/gs;

    .line 269
    iget-object v5, p0, Lc8/js;->mAdapter:Lc8/gs;

    new-instance v6, Lc8/fs;

    invoke-direct {v6, p0}, Lc8/fs;-><init>(Lc8/js;)V

    invoke-virtual {v5, v6}, Lc8/gs;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 277
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 278
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v5, v5, 0x2

    sget v6, Lcom/youku/phone/R$dimen;->abc_config_prefDialogWidth:I

    .line 279
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 278
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lc8/js;->mListPopupMaxWidth:I

    .line 280
    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 2

    .prologue
    .line 397
    invoke-virtual {p0}, Lc8/js;->isShowingPopup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    invoke-virtual {p0}, Lc8/js;->getListPopupWindow()Lc8/Hu;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Hu;->dismiss()V

    .line 399
    invoke-virtual {p0}, Lc8/js;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 400
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    iget-object v1, p0, Lc8/js;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 404
    .end local v0    # "viewTreeObserver":Landroid/view/ViewTreeObserver;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getDataModel()Lc8/bs;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lc8/js;->mAdapter:Lc8/gs;

    invoke-virtual {v0}, Lc8/gs;->getDataModel()Lc8/bs;

    move-result-object v0

    return-object v0
.end method

.method getListPopupWindow()Lc8/Hu;
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lc8/js;->mListPopupWindow:Lc8/Hu;

    if-nez v0, :cond_0

    .line 511
    new-instance v0, Lc8/Hu;

    invoke-virtual {p0}, Lc8/js;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/Hu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/js;->mListPopupWindow:Lc8/Hu;

    .line 512
    iget-object v0, p0, Lc8/js;->mListPopupWindow:Lc8/Hu;

    iget-object v1, p0, Lc8/js;->mAdapter:Lc8/gs;

    invoke-virtual {v0, v1}, Lc8/Hu;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 513
    iget-object v0, p0, Lc8/js;->mListPopupWindow:Lc8/Hu;

    invoke-virtual {v0, p0}, Lc8/Hu;->setAnchorView(Landroid/view/View;)V

    .line 514
    iget-object v0, p0, Lc8/js;->mListPopupWindow:Lc8/Hu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/Hu;->setModal(Z)V

    .line 515
    iget-object v0, p0, Lc8/js;->mListPopupWindow:Lc8/Hu;

    iget-object v1, p0, Lc8/js;->mCallbacks:Lc8/hs;

    invoke-virtual {v0, v1}, Lc8/Hu;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 516
    iget-object v0, p0, Lc8/js;->mListPopupWindow:Lc8/Hu;

    iget-object v1, p0, Lc8/js;->mCallbacks:Lc8/hs;

    invoke-virtual {v0, v1}, Lc8/Hu;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 518
    :cond_0
    iget-object v0, p0, Lc8/js;->mListPopupWindow:Lc8/Hu;

    return-object v0
.end method

.method public isShowingPopup()Z
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lc8/js;->getListPopupWindow()Lc8/Hu;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Hu;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 418
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 419
    iget-object v1, p0, Lc8/js;->mAdapter:Lc8/gs;

    invoke-virtual {v1}, Lc8/gs;->getDataModel()Lc8/bs;

    move-result-object v0

    .line 420
    .local v0, "dataModel":Lc8/bs;
    if-eqz v0, :cond_0

    .line 421
    iget-object v1, p0, Lc8/js;->mModelDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lc8/bs;->registerObserver(Ljava/lang/Object;)V

    .line 423
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/js;->mIsAttachedToWindow:Z

    .line 424
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 428
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 429
    iget-object v2, p0, Lc8/js;->mAdapter:Lc8/gs;

    invoke-virtual {v2}, Lc8/gs;->getDataModel()Lc8/bs;

    move-result-object v0

    .line 430
    .local v0, "dataModel":Lc8/bs;
    if-eqz v0, :cond_0

    .line 431
    iget-object v2, p0, Lc8/js;->mModelDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v2}, Lc8/bs;->unregisterObserver(Ljava/lang/Object;)V

    .line 433
    :cond_0
    invoke-virtual {p0}, Lc8/js;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 434
    .local v1, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 435
    iget-object v2, p0, Lc8/js;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 437
    :cond_1
    invoke-virtual {p0}, Lc8/js;->isShowingPopup()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 438
    invoke-virtual {p0}, Lc8/js;->dismissPopup()Z

    .line 440
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lc8/js;->mIsAttachedToWindow:Z

    .line 441
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 459
    iget-object v0, p0, Lc8/js;->mActivityChooserContent:Lc8/ru;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Lc8/ru;->layout(IIII)V

    .line 460
    invoke-virtual {p0}, Lc8/js;->isShowingPopup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    invoke-virtual {p0}, Lc8/js;->dismissPopup()Z

    .line 463
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 445
    iget-object v0, p0, Lc8/js;->mActivityChooserContent:Lc8/ru;

    .line 449
    .local v0, "child":Landroid/view/View;
    iget-object v1, p0, Lc8/js;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 453
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lc8/js;->measureChild(Landroid/view/View;II)V

    .line 454
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lc8/js;->setMeasuredDimension(II)V

    .line 455
    return-void
.end method

.method public setActivityChooserModel(Lc8/bs;)V
    .locals 1
    .param p1, "dataModel"    # Lc8/bs;

    .prologue
    .line 287
    iget-object v0, p0, Lc8/js;->mAdapter:Lc8/gs;

    invoke-virtual {v0, p1}, Lc8/gs;->setDataModel(Lc8/bs;)V

    .line 288
    invoke-virtual {p0}, Lc8/js;->isShowingPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lc8/js;->dismissPopup()Z

    .line 290
    invoke-virtual {p0}, Lc8/js;->showPopup()Z

    .line 292
    :cond_0
    return-void
.end method

.method public setDefaultActionButtonContentDescription(I)V
    .locals 0
    .param p1, "resourceId"    # I

    .prologue
    .line 501
    iput p1, p0, Lc8/js;->mDefaultActionButtonContentDescription:I

    .line 502
    return-void
.end method

.method public setExpandActivityOverflowButtonContentDescription(I)V
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    .line 320
    invoke-virtual {p0}, Lc8/js;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    iget-object v1, p0, Lc8/js;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 322
    return-void
.end method

.method public setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 306
    iget-object v0, p0, Lc8/js;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    return-void
.end method

.method public setInitialActivityCount(I)V
    .locals 0
    .param p1, "itemCount"    # I

    .prologue
    .line 487
    iput p1, p0, Lc8/js;->mInitialActivityCount:I

    .line 488
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 475
    iput-object p1, p0, Lc8/js;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 476
    return-void
.end method

.method public setProvider(Landroid/support/v4/view/ActionProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/support/v4/view/ActionProvider;
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 330
    iput-object p1, p0, Lc8/js;->mProvider:Landroid/support/v4/view/ActionProvider;

    .line 331
    return-void
.end method

.method public showPopup()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 339
    invoke-virtual {p0}, Lc8/js;->isShowingPopup()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lc8/js;->mIsAttachedToWindow:Z

    if-nez v1, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v0

    .line 342
    :cond_1
    iput-boolean v0, p0, Lc8/js;->mIsSelectingDefaultActivity:Z

    .line 343
    iget v0, p0, Lc8/js;->mInitialActivityCount:I

    invoke-virtual {p0, v0}, Lc8/js;->showPopupUnchecked(I)V

    .line 344
    const/4 v0, 0x1

    goto :goto_0
.end method

.method showPopupUnchecked(I)V
    .locals 9
    .param p1, "maxActivityCount"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 353
    iget-object v7, p0, Lc8/js;->mAdapter:Lc8/gs;

    invoke-virtual {v7}, Lc8/gs;->getDataModel()Lc8/bs;

    move-result-object v7

    if-nez v7, :cond_0

    .line 354
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "No data model. Did you call #setDataModel?"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 357
    :cond_0
    invoke-virtual {p0}, Lc8/js;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    iget-object v8, p0, Lc8/js;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 359
    iget-object v7, p0, Lc8/js;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    .line 360
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    move v2, v5

    .line 362
    .local v2, "defaultActivityButtonShown":Z
    :goto_0
    iget-object v7, p0, Lc8/js;->mAdapter:Lc8/gs;

    invoke-virtual {v7}, Lc8/gs;->getActivityCount()I

    move-result v0

    .line 363
    .local v0, "activityCount":I
    if-eqz v2, :cond_5

    move v3, v5

    .line 364
    .local v3, "maxActivityCountOffset":I
    :goto_1
    const v7, 0x7fffffff

    if-eq p1, v7, :cond_6

    add-int v7, p1, v3

    if-le v0, v7, :cond_6

    .line 366
    iget-object v7, p0, Lc8/js;->mAdapter:Lc8/gs;

    invoke-virtual {v7, v5}, Lc8/gs;->setShowFooterView(Z)V

    .line 367
    iget-object v7, p0, Lc8/js;->mAdapter:Lc8/gs;

    add-int/lit8 v8, p1, -0x1

    invoke-virtual {v7, v8}, Lc8/gs;->setMaxActivityCount(I)V

    .line 373
    :goto_2
    invoke-virtual {p0}, Lc8/js;->getListPopupWindow()Lc8/Hu;

    move-result-object v4

    .line 374
    .local v4, "popupWindow":Lc8/Hu;
    invoke-virtual {v4}, Lc8/Hu;->isShowing()Z

    move-result v7

    if-nez v7, :cond_3

    .line 375
    iget-boolean v7, p0, Lc8/js;->mIsSelectingDefaultActivity:Z

    if-nez v7, :cond_1

    if-nez v2, :cond_7

    .line 376
    :cond_1
    iget-object v6, p0, Lc8/js;->mAdapter:Lc8/gs;

    invoke-virtual {v6, v5, v2}, Lc8/gs;->setShowDefaultActivity(ZZ)V

    .line 380
    :goto_3
    iget-object v6, p0, Lc8/js;->mAdapter:Lc8/gs;

    invoke-virtual {v6}, Lc8/gs;->measureContentWidth()I

    move-result v6

    iget v7, p0, Lc8/js;->mListPopupMaxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 381
    .local v1, "contentWidth":I
    invoke-virtual {v4, v1}, Lc8/Hu;->setContentWidth(I)V

    .line 382
    invoke-virtual {v4}, Lc8/Hu;->show()V

    .line 383
    iget-object v6, p0, Lc8/js;->mProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v6, :cond_2

    .line 384
    iget-object v6, p0, Lc8/js;->mProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v6, v5}, Landroid/support/v4/view/ActionProvider;->subUiVisibilityChanged(Z)V

    .line 386
    :cond_2
    invoke-virtual {v4}, Lc8/Hu;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {p0}, Lc8/js;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/youku/phone/R$string;->abc_activitychooserview_choose_application:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 389
    .end local v1    # "contentWidth":I
    :cond_3
    return-void

    .end local v0    # "activityCount":I
    .end local v2    # "defaultActivityButtonShown":Z
    .end local v3    # "maxActivityCountOffset":I
    .end local v4    # "popupWindow":Lc8/Hu;
    :cond_4
    move v2, v6

    .line 360
    goto :goto_0

    .restart local v0    # "activityCount":I
    .restart local v2    # "defaultActivityButtonShown":Z
    :cond_5
    move v3, v6

    .line 363
    goto :goto_1

    .line 369
    .restart local v3    # "maxActivityCountOffset":I
    :cond_6
    iget-object v7, p0, Lc8/js;->mAdapter:Lc8/gs;

    invoke-virtual {v7, v6}, Lc8/gs;->setShowFooterView(Z)V

    .line 370
    iget-object v7, p0, Lc8/js;->mAdapter:Lc8/gs;

    invoke-virtual {v7, p1}, Lc8/gs;->setMaxActivityCount(I)V

    goto :goto_2

    .line 378
    .restart local v4    # "popupWindow":Lc8/Hu;
    :cond_7
    iget-object v7, p0, Lc8/js;->mAdapter:Lc8/gs;

    invoke-virtual {v7, v6, v6}, Lc8/gs;->setShowDefaultActivity(ZZ)V

    goto :goto_3
.end method

.method updateAppearance()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 526
    iget-object v6, p0, Lc8/js;->mAdapter:Lc8/gs;

    invoke-virtual {v6}, Lc8/gs;->getCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 527
    iget-object v6, p0, Lc8/js;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 532
    :goto_0
    iget-object v6, p0, Lc8/js;->mAdapter:Lc8/gs;

    invoke-virtual {v6}, Lc8/gs;->getActivityCount()I

    move-result v1

    .line 533
    .local v1, "activityCount":I
    iget-object v6, p0, Lc8/js;->mAdapter:Lc8/gs;

    invoke-virtual {v6}, Lc8/gs;->getHistorySize()I

    move-result v3

    .line 534
    .local v3, "historySize":I
    if-eq v1, v8, :cond_0

    if-le v1, v8, :cond_3

    if-lez v3, :cond_3

    .line 535
    :cond_0
    iget-object v6, p0, Lc8/js;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 536
    iget-object v6, p0, Lc8/js;->mAdapter:Lc8/gs;

    invoke-virtual {v6}, Lc8/gs;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 537
    .local v0, "activity":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Lc8/js;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 538
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v6, p0, Lc8/js;->mDefaultActivityButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 539
    iget v6, p0, Lc8/js;->mDefaultActionButtonContentDescription:I

    if-eqz v6, :cond_1

    .line 540
    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 541
    .local v4, "label":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lc8/js;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lc8/js;->mDefaultActionButtonContentDescription:I

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 543
    .local v2, "contentDescription":Ljava/lang/String;
    iget-object v6, p0, Lc8/js;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 549
    .end local v0    # "activity":Landroid/content/pm/ResolveInfo;
    .end local v2    # "contentDescription":Ljava/lang/String;
    .end local v4    # "label":Ljava/lang/CharSequence;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_1
    iget-object v6, p0, Lc8/js;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    .line 550
    iget-object v6, p0, Lc8/js;->mActivityChooserContent:Lc8/ru;

    iget-object v7, p0, Lc8/js;->mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lc8/ru;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 554
    :goto_2
    return-void

    .line 529
    .end local v1    # "activityCount":I
    .end local v3    # "historySize":I
    :cond_2
    iget-object v6, p0, Lc8/js;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_0

    .line 546
    .restart local v1    # "activityCount":I
    .restart local v3    # "historySize":I
    :cond_3
    iget-object v6, p0, Lc8/js;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 552
    :cond_4
    iget-object v6, p0, Lc8/js;->mActivityChooserContent:Lc8/ru;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lc8/ru;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method
