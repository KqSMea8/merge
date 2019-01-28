.class public Lc8/nx;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Lc8/lt;


# annotations
.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final AFFECTS_LOGO_MASK:I = 0x3

.field private static final DEFAULT_FADE_DURATION_MS:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "ToolbarWidgetWrapper"


# instance fields
.field private mActionMenuPresenter:Lc8/Nr;

.field private mCustomView:Landroid/view/View;

.field private mDefaultNavigationContentDescription:I

.field private mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

.field private mDisplayOpts:I

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field mMenuPrepared:Z

.field private mNavIcon:Landroid/graphics/drawable/Drawable;

.field private mNavigationMode:I

.field private mSpinner:Landroid/widget/Spinner;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTabView:Landroid/view/View;

.field mTitle:Ljava/lang/CharSequence;

.field private mTitleSet:Z

.field mToolbar:Lc8/kx;

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Lc8/kx;Z)V
    .locals 2
    .param p1, "toolbar"    # Lc8/kx;
    .param p2, "style"    # Z

    .prologue
    .line 95
    sget v0, Lcom/youku/phone/R$string;->abc_action_bar_up_description:I

    sget v1, Lcom/youku/phone/R$drawable;->abc_ic_ab_back_material:I

    invoke-direct {p0, p1, p2, v0, v1}, Lc8/nx;-><init>(Lc8/kx;ZII)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lc8/kx;ZII)V
    .locals 20
    .param p1, "toolbar"    # Lc8/kx;
    .param p2, "style"    # Z
    .param p3, "defaultNavigationContentDescription"    # I
    .param p4, "defaultNavigationIcon"    # I

    .prologue
    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lc8/nx;->mNavigationMode:I

    .line 91
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lc8/nx;->mDefaultNavigationContentDescription:I

    .line 101
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/nx;->mToolbar:Lc8/kx;

    .line 102
    invoke-virtual/range {p1 .. p1}, Lc8/kx;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lc8/nx;->mTitle:Ljava/lang/CharSequence;

    .line 103
    invoke-virtual/range {p1 .. p1}, Lc8/kx;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lc8/nx;->mSubtitle:Ljava/lang/CharSequence;

    .line 104
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/nx;->mTitle:Ljava/lang/CharSequence;

    if-eqz v15, :cond_c

    const/4 v15, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lc8/nx;->mTitleSet:Z

    .line 105
    invoke-virtual/range {p1 .. p1}, Lc8/kx;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lc8/nx;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 106
    invoke-virtual/range {p1 .. p1}, Lc8/kx;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    sget-object v17, Lcom/youku/phone/R$styleable;->ActionBar:[I

    sget v18, Lcom/youku/phone/R$attr;->actionBarStyle:I

    const/16 v19, 0x0

    invoke-static/range {v15 .. v19}, Lc8/cx;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lc8/cx;

    move-result-object v2

    .line 108
    .local v2, "a":Lc8/cx;
    sget v15, Lcom/youku/phone/R$styleable;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {v2, v15}, Lc8/cx;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lc8/nx;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 109
    if-eqz p2, :cond_d

    .line 110
    sget v15, Lcom/youku/phone/R$styleable;->ActionBar_title:I

    invoke-virtual {v2, v15}, Lc8/cx;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 111
    .local v13, "title":Ljava/lang/CharSequence;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 112
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lc8/nx;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    :cond_0
    sget v15, Lcom/youku/phone/R$styleable;->ActionBar_subtitle:I

    invoke-virtual {v2, v15}, Lc8/cx;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 116
    .local v11, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 117
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lc8/nx;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 120
    :cond_1
    sget v15, Lcom/youku/phone/R$styleable;->ActionBar_logo:I

    invoke-virtual {v2, v15}, Lc8/cx;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 121
    .local v8, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_2

    .line 122
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lc8/nx;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :cond_2
    sget v15, Lcom/youku/phone/R$styleable;->ActionBar_icon:I

    invoke-virtual {v2, v15}, Lc8/cx;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 126
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_3

    .line 127
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lc8/nx;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/nx;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-nez v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/nx;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_4

    .line 130
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/nx;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lc8/nx;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 132
    :cond_4
    sget v15, Lcom/youku/phone/R$styleable;->ActionBar_displayOptions:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lc8/cx;->getInt(II)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lc8/nx;->setDisplayOptions(I)V

    .line 134
    sget v15, Lcom/youku/phone/R$styleable;->ActionBar_customNavigationLayout:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lc8/cx;->getResourceId(II)I

    move-result v5

    .line 136
    .local v5, "customNavId":I
    if-eqz v5, :cond_5

    .line 137
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v15}, Lc8/kx;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/nx;->mToolbar:Lc8/kx;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lc8/nx;->setCustomView(Landroid/view/View;)V

    .line 139
    move-object/from16 v0, p0

    iget v15, v0, Lc8/nx;->mDisplayOpts:I

    or-int/lit8 v15, v15, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lc8/nx;->setDisplayOptions(I)V

    .line 142
    :cond_5
    sget v15, Lcom/youku/phone/R$styleable;->ActionBar_height:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lc8/cx;->getLayoutDimension(II)I

    move-result v6

    .line 143
    .local v6, "height":I
    if-lez v6, :cond_6

    .line 144
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v15}, Lc8/kx;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 145
    .local v9, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v6, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 146
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v15, v9}, Lc8/kx;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    .end local v9    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    sget v15, Lcom/youku/phone/R$styleable;->ActionBar_contentInsetStart:I

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lc8/cx;->getDimensionPixelOffset(II)I

    move-result v4

    .line 151
    .local v4, "contentInsetStart":I
    sget v15, Lcom/youku/phone/R$styleable;->ActionBar_contentInsetEnd:I

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lc8/cx;->getDimensionPixelOffset(II)I

    move-result v3

    .line 153
    .local v3, "contentInsetEnd":I
    if-gez v4, :cond_7

    if-ltz v3, :cond_8

    .line 154
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/nx;->mToolbar:Lc8/kx;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    const/16 v17, 0x0

    .line 155
    move/from16 v0, v17

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 154
    invoke-virtual/range {v15 .. v17}, Lc8/kx;->setContentInsetsRelative(II)V

    .line 158
    :cond_8
    sget v15, Lcom/youku/phone/R$styleable;->ActionBar_titleTextStyle:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lc8/cx;->getResourceId(II)I

    move-result v14

    .line 159
    .local v14, "titleTextStyle":I
    if-eqz v14, :cond_9

    .line 160
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/nx;->mToolbar:Lc8/kx;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/nx;->mToolbar:Lc8/kx;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lc8/kx;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Lc8/kx;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 163
    :cond_9
    sget v15, Lcom/youku/phone/R$styleable;->ActionBar_subtitleTextStyle:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lc8/cx;->getResourceId(II)I

    move-result v12

    .line 165
    .local v12, "subtitleTextStyle":I
    if-eqz v12, :cond_a

    .line 166
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/nx;->mToolbar:Lc8/kx;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/nx;->mToolbar:Lc8/kx;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lc8/kx;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Lc8/kx;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    .line 169
    :cond_a
    sget v15, Lcom/youku/phone/R$styleable;->ActionBar_popupTheme:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lc8/cx;->getResourceId(II)I

    move-result v10

    .line 170
    .local v10, "popupTheme":I
    if-eqz v10, :cond_b

    .line 171
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v15, v10}, Lc8/kx;->setPopupTheme(I)V

    .line 176
    .end local v3    # "contentInsetEnd":I
    .end local v4    # "contentInsetStart":I
    .end local v5    # "customNavId":I
    .end local v6    # "height":I
    .end local v7    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "logo":Landroid/graphics/drawable/Drawable;
    .end local v10    # "popupTheme":I
    .end local v11    # "subtitle":Ljava/lang/CharSequence;
    .end local v12    # "subtitleTextStyle":I
    .end local v13    # "title":Ljava/lang/CharSequence;
    .end local v14    # "titleTextStyle":I
    :cond_b
    :goto_1
    invoke-virtual {v2}, Lc8/cx;->recycle()V

    .line 178
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lc8/nx;->setDefaultNavigationContentDescription(I)V

    .line 179
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v15}, Lc8/kx;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lc8/nx;->mHomeDescription:Ljava/lang/CharSequence;

    .line 181
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/nx;->mToolbar:Lc8/kx;

    new-instance v16, Lc8/lx;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lc8/lx;-><init>(Lc8/nx;)V

    invoke-virtual/range {v15 .. v16}, Lc8/kx;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    return-void

    .line 104
    .end local v2    # "a":Lc8/cx;
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 174
    .restart local v2    # "a":Lc8/cx;
    :cond_d
    invoke-direct/range {p0 .. p0}, Lc8/nx;->detectDisplayOptions()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lc8/nx;->mDisplayOpts:I

    goto :goto_1
.end method

.method private detectDisplayOptions()I
    .locals 2

    .prologue
    .line 205
    const/16 v0, 0xb

    .line 207
    .local v0, "opts":I
    iget-object v1, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v1}, Lc8/kx;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 208
    or-int/lit8 v0, v0, 0x4

    .line 209
    iget-object v1, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v1}, Lc8/kx;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lc8/nx;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 211
    :cond_0
    return v0
.end method

.method private ensureSpinner()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 502
    iget-object v1, p0, Lc8/nx;->mSpinner:Landroid/widget/Spinner;

    if-nez v1, :cond_0

    .line 503
    new-instance v1, Lc8/Ss;

    invoke-virtual {p0}, Lc8/nx;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcom/youku/phone/R$attr;->actionDropDownStyle:I

    invoke-direct {v1, v2, v3, v4}, Lc8/Ss;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lc8/nx;->mSpinner:Landroid/widget/Spinner;

    .line 504
    new-instance v0, Lc8/hx;

    const v1, 0x800013

    invoke-direct {v0, v5, v5, v1}, Lc8/hx;-><init>(III)V

    .line 506
    .local v0, "lp":Lc8/hx;
    iget-object v1, p0, Lc8/nx;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    .end local v0    # "lp":Lc8/hx;
    :cond_0
    return-void
.end method

.method private setTitleInt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 259
    iput-object p1, p0, Lc8/nx;->mTitle:Ljava/lang/CharSequence;

    .line 260
    iget v0, p0, Lc8/nx;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v0, p1}, Lc8/kx;->setTitle(Ljava/lang/CharSequence;)V

    .line 263
    :cond_0
    return-void
.end method

.method private updateHomeAccessibility()V
    .locals 2

    .prologue
    .line 629
    iget v0, p0, Lc8/nx;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lc8/nx;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    iget v1, p0, Lc8/nx;->mDefaultNavigationContentDescription:I

    invoke-virtual {v0, v1}, Lc8/kx;->setNavigationContentDescription(I)V

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    iget-object v1, p0, Lc8/nx;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lc8/kx;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateNavigationIcon()V
    .locals 2

    .prologue
    .line 610
    iget v0, p0, Lc8/nx;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 611
    iget-object v1, p0, Lc8/nx;->mToolbar:Lc8/kx;

    iget-object v0, p0, Lc8/nx;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/nx;->mNavIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Lc8/kx;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 615
    :goto_1
    return-void

    .line 611
    :cond_0
    iget-object v0, p0, Lc8/nx;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 613
    :cond_1
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/kx;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private updateToolbarLogo()V
    .locals 2

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "logo":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lc8/nx;->mDisplayOpts:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 323
    iget v1, p0, Lc8/nx;->mDisplayOpts:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 324
    iget-object v1, p0, Lc8/nx;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lc8/nx;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 329
    :cond_0
    :goto_0
    iget-object v1, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v1, v0}, Lc8/kx;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 330
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lc8/nx;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 326
    :cond_2
    iget-object v0, p0, Lc8/nx;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 555
    const-wide/16 v2, 0xc8

    invoke-virtual {p0, p1, v2, v3}, Lc8/nx;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 557
    .local v0, "anim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 560
    :cond_0
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v0}, Lc8/kx;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public collapseActionView()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v0}, Lc8/kx;->collapseActionView()V

    .line 232
    return-void
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v0}, Lc8/kx;->dismissPopupMenus()V

    .line 375
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v0}, Lc8/kx;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lc8/nx;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lc8/nx;->mDisplayOpts:I

    return v0
.end method

.method public getDropdownItemCount()I
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lc8/nx;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/nx;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lc8/nx;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/nx;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v0}, Lc8/kx;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v0}, Lc8/kx;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lc8/nx;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v0}, Lc8/kx;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v0}, Lc8/kx;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v0}, Lc8/kx;->getVisibility()I

    move-result v0

    return v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lc8/nx;->mTabView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v0}, Lc8/kx;->hasExpandedActionView()Z

    move-result v0

    return v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lc8/nx;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lc8/nx;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v0}, Lc8/kx;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initIndeterminateProgress()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method public initProgress()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v0}, Lc8/kx;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v0}, Lc8/kx;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v0}, Lc8/kx;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 645
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v0, p1}, Lc8/kx;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 646
    return-void
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 640
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v0, p1}, Lc8/kx;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 641
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 650
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 651
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 1
    .param p1, "collapsible"    # Z

    .prologue
    .line 447
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v0, p1}, Lc8/kx;->setCollapsible(Z)V

    .line 448
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 539
    iget-object v0, p0, Lc8/nx;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lc8/nx;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    iget-object v1, p0, Lc8/nx;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lc8/kx;->removeView(Landroid/view/View;)V

    .line 542
    :cond_0
    iput-object p1, p0, Lc8/nx;->mCustomView:Landroid/view/View;

    .line 543
    if-eqz p1, :cond_1

    iget v0, p0, Lc8/nx;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    iget-object v1, p0, Lc8/nx;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lc8/kx;->addView(Landroid/view/View;)V

    .line 546
    :cond_1
    return-void
.end method

.method public setDefaultNavigationContentDescription(I)V
    .locals 1
    .param p1, "defaultNavigationContentDescription"    # I

    .prologue
    .line 195
    iget v0, p0, Lc8/nx;->mDefaultNavigationContentDescription:I

    if-ne p1, v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iput p1, p0, Lc8/nx;->mDefaultNavigationContentDescription:I

    .line 199
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v0}, Lc8/kx;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget v0, p0, Lc8/nx;->mDefaultNavigationContentDescription:I

    invoke-virtual {p0, v0}, Lc8/nx;->setNavigationContentDescription(I)V

    goto :goto_0
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "defaultNavigationIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 603
    iget-object v0, p0, Lc8/nx;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 604
    iput-object p1, p0, Lc8/nx;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 605
    invoke-direct {p0}, Lc8/nx;->updateNavigationIcon()V

    .line 607
    :cond_0
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 4
    .param p1, "newOpts"    # I

    .prologue
    const/4 v3, 0x0

    .line 384
    iget v1, p0, Lc8/nx;->mDisplayOpts:I

    .line 385
    .local v1, "oldOpts":I
    xor-int v0, v1, p1

    .line 386
    .local v0, "changed":I
    iput p1, p0, Lc8/nx;->mDisplayOpts:I

    .line 387
    if-eqz v0, :cond_4

    .line 388
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    .line 389
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_0

    .line 390
    invoke-direct {p0}, Lc8/nx;->updateHomeAccessibility()V

    .line 392
    :cond_0
    invoke-direct {p0}, Lc8/nx;->updateNavigationIcon()V

    .line 395
    :cond_1
    and-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_2

    .line 396
    invoke-direct {p0}, Lc8/nx;->updateToolbarLogo()V

    .line 399
    :cond_2
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_3

    .line 400
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_5

    .line 401
    iget-object v2, p0, Lc8/nx;->mToolbar:Lc8/kx;

    iget-object v3, p0, Lc8/nx;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lc8/kx;->setTitle(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v2, p0, Lc8/nx;->mToolbar:Lc8/kx;

    iget-object v3, p0, Lc8/nx;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lc8/kx;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 409
    :cond_3
    :goto_0
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_4

    iget-object v2, p0, Lc8/nx;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 410
    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_6

    .line 411
    iget-object v2, p0, Lc8/nx;->mToolbar:Lc8/kx;

    iget-object v3, p0, Lc8/nx;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lc8/kx;->addView(Landroid/view/View;)V

    .line 417
    :cond_4
    :goto_1
    return-void

    .line 404
    :cond_5
    iget-object v2, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v2, v3}, Lc8/kx;->setTitle(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v2, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v2, v3}, Lc8/kx;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 413
    :cond_6
    iget-object v2, p0, Lc8/nx;->mToolbar:Lc8/kx;

    iget-object v3, p0, Lc8/nx;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lc8/kx;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 513
    invoke-direct {p0}, Lc8/nx;->ensureSpinner()V

    .line 514
    iget-object v0, p0, Lc8/nx;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 515
    iget-object v0, p0, Lc8/nx;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 516
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 520
    iget-object v0, p0, Lc8/nx;->mSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 521
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t set dropdown selected position without an adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_0
    iget-object v0, p0, Lc8/nx;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 525
    return-void
.end method

.method public setEmbeddedTabView(Lc8/fw;)V
    .locals 5
    .param p1, "tabView"    # Lc8/fw;

    .prologue
    const/4 v4, -0x2

    .line 421
    iget-object v1, p0, Lc8/nx;->mTabView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/nx;->mTabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lc8/nx;->mToolbar:Lc8/kx;

    if-ne v1, v2, :cond_0

    .line 422
    iget-object v1, p0, Lc8/nx;->mToolbar:Lc8/kx;

    iget-object v2, p0, Lc8/nx;->mTabView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lc8/kx;->removeView(Landroid/view/View;)V

    .line 424
    :cond_0
    iput-object p1, p0, Lc8/nx;->mTabView:Landroid/view/View;

    .line 425
    if-eqz p1, :cond_1

    iget v1, p0, Lc8/nx;->mNavigationMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 426
    iget-object v1, p0, Lc8/nx;->mToolbar:Lc8/kx;

    iget-object v2, p0, Lc8/nx;->mTabView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lc8/kx;->addView(Landroid/view/View;I)V

    .line 427
    iget-object v1, p0, Lc8/nx;->mTabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lc8/hx;

    .line 428
    .local v0, "lp":Lc8/hx;
    iput v4, v0, Lc8/hx;->width:I

    .line 429
    iput v4, v0, Lc8/hx;->height:I

    .line 430
    const v1, 0x800053

    iput v1, v0, Lc8/hx;->gravity:I

    .line 431
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lc8/fw;->setAllowCollapse(Z)V

    .line 433
    .end local v0    # "lp":Lc8/hx;
    :cond_1
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 453
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 300
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc8/nx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/kp;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lc8/nx;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 301
    return-void

    .line 300
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 305
    iput-object p1, p0, Lc8/nx;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 306
    invoke-direct {p0}, Lc8/nx;->updateToolbarLogo()V

    .line 307
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 311
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc8/nx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/kp;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lc8/nx;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 312
    return-void

    .line 311
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 316
    iput-object p1, p0, Lc8/nx;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 317
    invoke-direct {p0}, Lc8/nx;->updateToolbarLogo()V

    .line 318
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lc8/gr;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lc8/gr;

    .prologue
    .line 364
    iget-object v0, p0, Lc8/nx;->mActionMenuPresenter:Lc8/Nr;

    if-nez v0, :cond_0

    .line 365
    new-instance v0, Lc8/Nr;

    iget-object v1, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v1}, Lc8/kx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/Nr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/nx;->mActionMenuPresenter:Lc8/Nr;

    .line 366
    iget-object v0, p0, Lc8/nx;->mActionMenuPresenter:Lc8/Nr;

    sget v1, Lcom/youku/phone/R$id;->action_menu_presenter:I

    invoke-virtual {v0, v1}, Lc8/Nr;->setId(I)V

    .line 368
    :cond_0
    iget-object v0, p0, Lc8/nx;->mActionMenuPresenter:Lc8/Nr;

    invoke-virtual {v0, p2}, Lc8/Nr;->setCallback(Lc8/gr;)V

    .line 369
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    check-cast p1, Lc8/Rq;

    .end local p1    # "menu":Landroid/view/Menu;
    iget-object v1, p0, Lc8/nx;->mActionMenuPresenter:Lc8/Nr;

    invoke-virtual {v0, p1, v1}, Lc8/kx;->setMenu(Lc8/Rq;Lc8/Nr;)V

    .line 370
    return-void
.end method

.method public setMenuCallbacks(Lc8/gr;Lc8/Pq;)V
    .locals 1
    .param p1, "actionMenuPresenterCallback"    # Lc8/gr;
    .param p2, "menuBuilderCallback"    # Lc8/Pq;

    .prologue
    .line 671
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v0, p1, p2}, Lc8/kx;->setMenuCallbacks(Lc8/gr;Lc8/Pq;)V

    .line 672
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/nx;->mMenuPrepared:Z

    .line 360
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 625
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lc8/nx;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 626
    return-void

    .line 625
    :cond_0
    invoke-virtual {p0}, Lc8/nx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 619
    iput-object p1, p0, Lc8/nx;->mHomeDescription:Ljava/lang/CharSequence;

    .line 620
    invoke-direct {p0}, Lc8/nx;->updateHomeAccessibility()V

    .line 621
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 598
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc8/nx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/kp;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lc8/nx;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 599
    return-void

    .line 598
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 592
    iput-object p1, p0, Lc8/nx;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 593
    invoke-direct {p0}, Lc8/nx;->updateNavigationIcon()V

    .line 594
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 462
    iget v1, p0, Lc8/nx;->mNavigationMode:I

    .line 463
    .local v1, "oldMode":I
    if-eq p1, v1, :cond_1

    .line 464
    packed-switch v1, :pswitch_data_0

    .line 477
    :cond_0
    :goto_0
    iput p1, p0, Lc8/nx;->mNavigationMode:I

    .line 479
    packed-switch p1, :pswitch_data_1

    .line 496
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid navigation mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 466
    :pswitch_0
    iget-object v2, p0, Lc8/nx;->mSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/nx;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lc8/nx;->mToolbar:Lc8/kx;

    if-ne v2, v3, :cond_0

    .line 467
    iget-object v2, p0, Lc8/nx;->mToolbar:Lc8/kx;

    iget-object v3, p0, Lc8/nx;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3}, Lc8/kx;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 471
    :pswitch_1
    iget-object v2, p0, Lc8/nx;->mTabView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/nx;->mTabView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lc8/nx;->mToolbar:Lc8/kx;

    if-ne v2, v3, :cond_0

    .line 472
    iget-object v2, p0, Lc8/nx;->mToolbar:Lc8/kx;

    iget-object v3, p0, Lc8/nx;->mTabView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lc8/kx;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 483
    :pswitch_2
    invoke-direct {p0}, Lc8/nx;->ensureSpinner()V

    .line 484
    iget-object v2, p0, Lc8/nx;->mToolbar:Lc8/kx;

    iget-object v3, p0, Lc8/nx;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v5}, Lc8/kx;->addView(Landroid/view/View;I)V

    .line 499
    :cond_1
    :goto_1
    :pswitch_3
    return-void

    .line 487
    :pswitch_4
    iget-object v2, p0, Lc8/nx;->mTabView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 488
    iget-object v2, p0, Lc8/nx;->mToolbar:Lc8/kx;

    iget-object v3, p0, Lc8/nx;->mTabView:Landroid/view/View;

    invoke-virtual {v2, v3, v5}, Lc8/kx;->addView(Landroid/view/View;I)V

    .line 489
    iget-object v2, p0, Lc8/nx;->mTabView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lc8/hx;

    .line 490
    .local v0, "lp":Lc8/hx;
    iput v4, v0, Lc8/hx;->width:I

    .line 491
    iput v4, v0, Lc8/hx;->height:I

    .line 492
    const v2, 0x800053

    iput v2, v0, Lc8/hx;->gravity:I

    goto :goto_1

    .line 464
    .line 479
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 272
    iput-object p1, p0, Lc8/nx;->mSubtitle:Ljava/lang/CharSequence;

    .line 273
    iget v0, p0, Lc8/nx;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v0, p1}, Lc8/kx;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 276
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/nx;->mTitleSet:Z

    .line 255
    invoke-direct {p0, p1}, Lc8/nx;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 256
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 660
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v0, p1}, Lc8/kx;->setVisibility(I)V

    .line 661
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .prologue
    .line 236
    iput-object p1, p0, Lc8/nx;->mWindowCallback:Landroid/view/Window$Callback;

    .line 237
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 242
    iget-boolean v0, p0, Lc8/nx;->mTitleSet:Z

    if-nez v0, :cond_0

    .line 243
    invoke-direct {p0, p1}, Lc8/nx;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 245
    :cond_0
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "visibility"    # I
    .param p2, "duration"    # J

    .prologue
    .line 565
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    if-nez p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 566
    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 567
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lc8/mx;

    invoke-direct {v1, p0, p1}, Lc8/mx;-><init>(Lc8/nx;I)V

    .line 568
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    return-object v0

    .line 565
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v0}, Lc8/kx;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
