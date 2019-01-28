.class public Lc8/On;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Pn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lc8/Jn;

.field private final mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 291
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lc8/Pn;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lc8/On;-><init>(Landroid/content/Context;I)V

    .line 292
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "themeResId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    new-instance v0, Lc8/Jn;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 322
    invoke-static {p1, p2}, Lc8/Pn;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lc8/Jn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/On;->P:Lc8/Jn;

    .line 323
    iput p2, p0, Lc8/On;->mTheme:I

    .line 324
    return-void
.end method


# virtual methods
.method public create()Lc8/Pn;
    .locals 3

    .prologue
    .line 929
    new-instance v0, Lc8/Pn;

    iget-object v1, p0, Lc8/On;->P:Lc8/Jn;

    iget-object v1, v1, Lc8/Jn;->mContext:Landroid/content/Context;

    iget v2, p0, Lc8/On;->mTheme:I

    invoke-direct {v0, v1, v2}, Lc8/Pn;-><init>(Landroid/content/Context;I)V

    .line 930
    .local v0, "dialog":Lc8/Pn;
    iget-object v1, p0, Lc8/On;->P:Lc8/Jn;

    iget-object v2, v0, Lc8/Pn;->mAlert:Lc8/Nn;

    invoke-virtual {v1, v2}, Lc8/Jn;->apply(Lc8/Nn;)V

    .line 931
    iget-object v1, p0, Lc8/On;->P:Lc8/Jn;

    iget-boolean v1, v1, Lc8/Jn;->mCancelable:Z

    invoke-virtual {v0, v1}, Lc8/Pn;->setCancelable(Z)V

    .line 932
    iget-object v1, p0, Lc8/On;->P:Lc8/Jn;

    iget-boolean v1, v1, Lc8/Jn;->mCancelable:Z

    if-eqz v1, :cond_0

    .line 933
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/Pn;->setCanceledOnTouchOutside(Z)V

    .line 935
    :cond_0
    iget-object v1, p0, Lc8/On;->P:Lc8/Jn;

    iget-object v1, v1, Lc8/Jn;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lc8/Pn;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 936
    iget-object v1, p0, Lc8/On;->P:Lc8/Jn;

    iget-object v1, v1, Lc8/Jn;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lc8/Pn;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 937
    iget-object v1, p0, Lc8/On;->P:Lc8/Jn;

    iget-object v1, v1, Lc8/Jn;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 938
    iget-object v1, p0, Lc8/On;->P:Lc8/Jn;

    iget-object v1, v1, Lc8/Jn;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lc8/Pn;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 940
    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iget-object v0, v0, Lc8/Jn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lc8/On;
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 607
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p1, v0, Lc8/Jn;->mAdapter:Landroid/widget/ListAdapter;

    .line 608
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p2, v0, Lc8/Jn;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 609
    return-object p0
.end method

.method public setCancelable(Z)Lc8/On;
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 527
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-boolean p1, v0, Lc8/Jn;->mCancelable:Z

    .line 528
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lc8/On;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "labelColumn"    # Ljava/lang/String;

    .prologue
    .line 626
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p1, v0, Lc8/Jn;->mCursor:Landroid/database/Cursor;

    .line 627
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p3, v0, Lc8/Jn;->mLabelColumn:Ljava/lang/String;

    .line 628
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p2, v0, Lc8/Jn;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 629
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lc8/On;
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 376
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p1, v0, Lc8/Jn;->mCustomTitleView:Landroid/view/View;

    .line 377
    return-object p0
.end method

.method public setIcon(I)Lc8/On;
    .locals 1
    .param p1, "iconId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 408
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput p1, v0, Lc8/Jn;->mIconId:I

    .line 409
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lc8/On;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 423
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p1, v0, Lc8/Jn;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 424
    return-object p0
.end method

.method public setIconAttribute(I)Lc8/On;
    .locals 3
    .param p1, "attrId"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 437
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 438
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lc8/On;->P:Lc8/Jn;

    iget-object v1, v1, Lc8/Jn;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 439
    iget-object v1, p0, Lc8/On;->P:Lc8/Jn;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iput v2, v1, Lc8/Jn;->mIconId:I

    .line 440
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lc8/On;
    .locals 1
    .param p1, "useInverseBackground"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 904
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-boolean p1, v0, Lc8/Jn;->mForceInverseBackground:Z

    .line 905
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lc8/On;
    .locals 2
    .param p1, "itemsId"    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 579
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iget-object v1, p0, Lc8/On;->P:Lc8/Jn;

    iget-object v1, v1, Lc8/Jn;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lc8/Jn;->mItems:[Ljava/lang/CharSequence;

    .line 580
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p2, v0, Lc8/Jn;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 581
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lc8/On;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 591
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p1, v0, Lc8/Jn;->mItems:[Ljava/lang/CharSequence;

    .line 592
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p2, v0, Lc8/Jn;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 593
    return-object p0
.end method

.method public setMessage(I)Lc8/On;
    .locals 2
    .param p1, "messageId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 386
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iget-object v1, p0, Lc8/On;->P:Lc8/Jn;

    iget-object v1, v1, Lc8/Jn;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lc8/Jn;->mMessage:Ljava/lang/CharSequence;

    .line 387
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lc8/On;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 396
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p1, v0, Lc8/Jn;->mMessage:Ljava/lang/CharSequence;

    .line 397
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lc8/On;
    .locals 2
    .param p1, "itemsId"    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 652
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iget-object v1, p0, Lc8/On;->P:Lc8/Jn;

    iget-object v1, v1, Lc8/Jn;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lc8/Jn;->mItems:[Ljava/lang/CharSequence;

    .line 653
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p3, v0, Lc8/Jn;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 654
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p2, v0, Lc8/Jn;->mCheckedItems:[Z

    .line 655
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/Jn;->mIsMultiChoice:Z

    .line 656
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lc8/On;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCheckedColumn"    # Ljava/lang/String;
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 706
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p1, v0, Lc8/Jn;->mCursor:Landroid/database/Cursor;

    .line 707
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p4, v0, Lc8/Jn;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 708
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p2, v0, Lc8/Jn;->mIsCheckedColumn:Ljava/lang/String;

    .line 709
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p3, v0, Lc8/Jn;->mLabelColumn:Ljava/lang/String;

    .line 710
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/Jn;->mIsMultiChoice:Z

    .line 711
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lc8/On;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 678
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p1, v0, Lc8/Jn;->mItems:[Ljava/lang/CharSequence;

    .line 679
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p3, v0, Lc8/Jn;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 680
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p2, v0, Lc8/Jn;->mCheckedItems:[Z

    .line 681
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/Jn;->mIsMultiChoice:Z

    .line 682
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lc8/On;
    .locals 2
    .param p1, "textId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 477
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iget-object v1, p0, Lc8/On;->P:Lc8/Jn;

    iget-object v1, v1, Lc8/Jn;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lc8/Jn;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 478
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p2, v0, Lc8/Jn;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 479
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lc8/On;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 490
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p1, v0, Lc8/Jn;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 491
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p2, v0, Lc8/Jn;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 492
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lc8/On;
    .locals 2
    .param p1, "textId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 503
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iget-object v1, p0, Lc8/On;->P:Lc8/Jn;

    iget-object v1, v1, Lc8/Jn;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lc8/Jn;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 504
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p2, v0, Lc8/Jn;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 505
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lc8/On;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 516
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p1, v0, Lc8/Jn;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 517
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p2, v0, Lc8/Jn;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 518
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lc8/On;
    .locals 1
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 548
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p1, v0, Lc8/Jn;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 549
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lc8/On;
    .locals 1
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 558
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p1, v0, Lc8/Jn;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 559
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lc8/On;
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 816
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p1, v0, Lc8/Jn;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 817
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lc8/On;
    .locals 1
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 568
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p1, v0, Lc8/Jn;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 569
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lc8/On;
    .locals 2
    .param p1, "textId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 451
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iget-object v1, p0, Lc8/On;->P:Lc8/Jn;

    iget-object v1, v1, Lc8/Jn;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lc8/Jn;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 452
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p2, v0, Lc8/Jn;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 453
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lc8/On;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 464
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p1, v0, Lc8/Jn;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 465
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p2, v0, Lc8/Jn;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 466
    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Lc8/On;
    .locals 1
    .param p1, "enabled"    # Z
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 913
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-boolean p1, v0, Lc8/Jn;->mRecycleOnMeasure:Z

    .line 914
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lc8/On;
    .locals 2
    .param p1, "itemsId"    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 731
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iget-object v1, p0, Lc8/On;->P:Lc8/Jn;

    iget-object v1, v1, Lc8/Jn;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lc8/Jn;->mItems:[Ljava/lang/CharSequence;

    .line 732
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p3, v0, Lc8/Jn;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 733
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput p2, v0, Lc8/Jn;->mCheckedItem:I

    .line 734
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/Jn;->mIsSingleChoice:Z

    .line 735
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lc8/On;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "checkedItem"    # I
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 756
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p1, v0, Lc8/Jn;->mCursor:Landroid/database/Cursor;

    .line 757
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p4, v0, Lc8/Jn;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 758
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput p2, v0, Lc8/Jn;->mCheckedItem:I

    .line 759
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p3, v0, Lc8/Jn;->mLabelColumn:Ljava/lang/String;

    .line 760
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/Jn;->mIsSingleChoice:Z

    .line 761
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lc8/On;
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 801
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p1, v0, Lc8/Jn;->mAdapter:Landroid/widget/ListAdapter;

    .line 802
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p3, v0, Lc8/Jn;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 803
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput p2, v0, Lc8/Jn;->mCheckedItem:I

    .line 804
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/Jn;->mIsSingleChoice:Z

    .line 805
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lc8/On;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 779
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p1, v0, Lc8/Jn;->mItems:[Ljava/lang/CharSequence;

    .line 780
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p3, v0, Lc8/Jn;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 781
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput p2, v0, Lc8/Jn;->mCheckedItem:I

    .line 782
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/Jn;->mIsSingleChoice:Z

    .line 783
    return-object p0
.end method

.method public setTitle(I)Lc8/On;
    .locals 2
    .param p1, "titleId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 345
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iget-object v1, p0, Lc8/On;->P:Lc8/Jn;

    iget-object v1, v1, Lc8/Jn;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lc8/Jn;->mTitle:Ljava/lang/CharSequence;

    .line 346
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lc8/On;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 355
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p1, v0, Lc8/Jn;->mTitle:Ljava/lang/CharSequence;

    .line 356
    return-object p0
.end method

.method public setView(I)Lc8/On;
    .locals 2
    .param p1, "layoutResId"    # I

    .prologue
    .line 829
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    const/4 v1, 0x0

    iput-object v1, v0, Lc8/Jn;->mView:Landroid/view/View;

    .line 830
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput p1, v0, Lc8/Jn;->mViewLayoutResId:I

    .line 831
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lc8/Jn;->mViewSpacingSpecified:Z

    .line 832
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lc8/On;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 850
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p1, v0, Lc8/Jn;->mView:Landroid/view/View;

    .line 851
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput v1, v0, Lc8/Jn;->mViewLayoutResId:I

    .line 852
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-boolean v1, v0, Lc8/Jn;->mViewSpacingSpecified:Z

    .line 853
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lc8/On;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 882
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput-object p1, v0, Lc8/Jn;->mView:Landroid/view/View;

    .line 883
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    const/4 v1, 0x0

    iput v1, v0, Lc8/Jn;->mViewLayoutResId:I

    .line 884
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/Jn;->mViewSpacingSpecified:Z

    .line 885
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput p2, v0, Lc8/Jn;->mViewSpacingLeft:I

    .line 886
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput p3, v0, Lc8/Jn;->mViewSpacingTop:I

    .line 887
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput p4, v0, Lc8/Jn;->mViewSpacingRight:I

    .line 888
    iget-object v0, p0, Lc8/On;->P:Lc8/Jn;

    iput p5, v0, Lc8/Jn;->mViewSpacingBottom:I

    .line 889
    return-object p0
.end method

.method public show()Lc8/Pn;
    .locals 1

    .prologue
    .line 954
    invoke-virtual {p0}, Lc8/On;->create()Lc8/Pn;

    move-result-object v0

    .line 955
    .local v0, "dialog":Lc8/Pn;
    invoke-virtual {v0}, Lc8/Pn;->show()V

    .line 956
    return-object v0
.end method
