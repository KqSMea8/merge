.class public Lc8/dd;
.super Lc8/wo;
.source "BottomSheetDialog.java"


# instance fields
.field private mBehavior:Lc8/Zc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Zc",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomSheetCallback:Lc8/Vc;

.field mCancelable:Z

.field private mCanceledOnTouchOutside:Z

.field private mCanceledOnTouchOutsideSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/dd;-><init>(Landroid/content/Context;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "theme"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 53
    invoke-static {p1, p2}, Lc8/dd;->getThemeResId(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lc8/wo;-><init>(Landroid/content/Context;I)V

    .line 44
    iput-boolean v1, p0, Lc8/dd;->mCancelable:Z

    .line 45
    iput-boolean v1, p0, Lc8/dd;->mCanceledOnTouchOutside:Z

    .line 197
    new-instance v0, Lc8/cd;

    invoke-direct {v0, p0}, Lc8/cd;-><init>(Lc8/dd;)V

    iput-object v0, p0, Lc8/dd;->mBottomSheetCallback:Lc8/Vc;

    .line 56
    invoke-virtual {p0, v1}, Lc8/dd;->supportRequestWindowFeature(I)Z

    .line 57
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const/4 v1, 0x1

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lc8/wo;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 44
    iput-boolean v1, p0, Lc8/dd;->mCancelable:Z

    .line 45
    iput-boolean v1, p0, Lc8/dd;->mCanceledOnTouchOutside:Z

    .line 197
    new-instance v0, Lc8/cd;

    invoke-direct {v0, p0}, Lc8/cd;-><init>(Lc8/dd;)V

    iput-object v0, p0, Lc8/dd;->mBottomSheetCallback:Lc8/Vc;

    .line 62
    invoke-virtual {p0, v1}, Lc8/dd;->supportRequestWindowFeature(I)Z

    .line 63
    iput-boolean p2, p0, Lc8/dd;->mCancelable:Z

    .line 64
    return-void
.end method

.method private static getThemeResId(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeId"    # I

    .prologue
    .line 183
    if-nez p1, :cond_0

    .line 185
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 186
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$attr;->bottomSheetDialogTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 194
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    :goto_0
    return p1

    .line 191
    .restart local v0    # "outValue":Landroid/util/TypedValue;
    :cond_1
    sget p1, Lcom/youku/phone/R$style;->Theme_Design_Light_BottomSheetDialog:I

    goto :goto_0
.end method

.method private wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .locals 5
    .param p1, "layoutResId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 118
    invoke-virtual {p0}, Lc8/dd;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$layout;->design_bottom_sheet_dialog:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/yd;

    .line 120
    .local v1, "coordinator":Lc8/yd;
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 121
    invoke-virtual {p0}, Lc8/dd;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 123
    :cond_0
    sget v2, Lcom/youku/phone/R$id;->design_bottom_sheet:I

    invoke-virtual {v1, v2}, Lc8/yd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 124
    .local v0, "bottomSheet":Landroid/widget/FrameLayout;
    invoke-static {v0}, Lc8/Zc;->from(Landroid/view/View;)Lc8/Zc;

    move-result-object v2

    iput-object v2, p0, Lc8/dd;->mBehavior:Lc8/Zc;

    .line 125
    iget-object v2, p0, Lc8/dd;->mBehavior:Lc8/Zc;

    iget-object v3, p0, Lc8/dd;->mBottomSheetCallback:Lc8/Vc;

    invoke-virtual {v2, v3}, Lc8/Zc;->setBottomSheetCallback(Lc8/Vc;)V

    .line 126
    iget-object v2, p0, Lc8/dd;->mBehavior:Lc8/Zc;

    iget-boolean v3, p0, Lc8/dd;->mCancelable:Z

    invoke-virtual {v2, v3}, Lc8/Zc;->setHideable(Z)V

    .line 127
    if-nez p3, :cond_1

    .line 128
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 133
    :goto_0
    sget v2, Lcom/youku/phone/R$id;->touch_outside:I

    invoke-virtual {v1, v2}, Lc8/yd;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lc8/ad;

    invoke-direct {v3, p0}, Lc8/ad;-><init>(Lc8/dd;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    new-instance v2, Lc8/bd;

    invoke-direct {v2, p0}, Lc8/bd;-><init>(Lc8/dd;)V

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 164
    return-object v1

    .line 130
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, -0x1

    .line 73
    invoke-super {p0, p1}, Lc8/wo;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lc8/dd;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 76
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Lc8/wo;->onStart()V

    .line 102
    iget-object v0, p0, Lc8/dd;->mBehavior:Lc8/Zc;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lc8/dd;->mBehavior:Lc8/Zc;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lc8/Zc;->setState(I)V

    .line 105
    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 90
    invoke-super {p0, p1}, Lc8/wo;->setCancelable(Z)V

    .line 91
    iget-boolean v0, p0, Lc8/dd;->mCancelable:Z

    if-eq v0, p1, :cond_0

    .line 92
    iput-boolean p1, p0, Lc8/dd;->mCancelable:Z

    .line 93
    iget-object v0, p0, Lc8/dd;->mBehavior:Lc8/Zc;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lc8/dd;->mBehavior:Lc8/Zc;

    invoke-virtual {v0, p1}, Lc8/Zc;->setHideable(Z)V

    .line 97
    :cond_0
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 2
    .param p1, "cancel"    # Z

    .prologue
    const/4 v1, 0x1

    .line 109
    invoke-super {p0, p1}, Lc8/wo;->setCanceledOnTouchOutside(Z)V

    .line 110
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lc8/dd;->mCancelable:Z

    if-nez v0, :cond_0

    .line 111
    iput-boolean v1, p0, Lc8/dd;->mCancelable:Z

    .line 113
    :cond_0
    iput-boolean p1, p0, Lc8/dd;->mCanceledOnTouchOutside:Z

    .line 114
    iput-boolean v1, p0, Lc8/dd;->mCanceledOnTouchOutsideSet:Z

    .line 115
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0, v0}, Lc8/dd;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Lc8/wo;->setContentView(Landroid/view/View;)V

    .line 69
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lc8/dd;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Lc8/wo;->setContentView(Landroid/view/View;)V

    .line 81
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lc8/dd;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Lc8/wo;->setContentView(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method shouldWindowCloseOnTouchOutside()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 168
    iget-boolean v1, p0, Lc8/dd;->mCanceledOnTouchOutsideSet:Z

    if-nez v1, :cond_0

    .line 169
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    .line 170
    iput-boolean v4, p0, Lc8/dd;->mCanceledOnTouchOutside:Z

    .line 177
    :goto_0
    iput-boolean v4, p0, Lc8/dd;->mCanceledOnTouchOutsideSet:Z

    .line 179
    :cond_0
    iget-boolean v1, p0, Lc8/dd;->mCanceledOnTouchOutside:Z

    return v1

    .line 172
    :cond_1
    invoke-virtual {p0}, Lc8/dd;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v4, [I

    const v3, 0x101035b

    aput v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 174
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lc8/dd;->mCanceledOnTouchOutside:Z

    .line 175
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method
