.class public Lc8/jI;
.super Ljava/lang/Object;
.source "PopupWindowController.java"


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field private mContext:Landroid/content/Context;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mView:Landroid/view/View;

.field private popupLayout:Landroid/widget/LinearLayout;

.field private popupViewGroup:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "tags"    # [Ljava/lang/String;
    .param p5, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lc8/jI;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lc8/jI;->mView:Landroid/view/View;

    .line 51
    invoke-direct {p0, p3, p4, p5}, Lc8/jI;->initButtons(Ljava/lang/String;[Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-direct {p0}, Lc8/jI;->initPopupWindow()V

    .line 53
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lc8/jI;->mAnimation:Landroid/view/animation/Animation;

    .line 55
    iget-object v0, p0, Lc8/jI;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;[Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "tags"    # [Ljava/lang/String;
    .param p4, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 44
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/jI;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lc8/jI;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lc8/jI;

    .prologue
    .line 34
    iget-object v0, p0, Lc8/jI;->popupLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private fixPopupWindow(Landroid/widget/PopupWindow;)V
    .locals 7
    .param p1, "window"    # Landroid/widget/PopupWindow;

    .prologue
    .line 163
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-ge v5, v6, :cond_0

    .line 165
    :try_start_0
    const-class v5, Landroid/widget/PopupWindow;

    const-string/jumbo v6, "mAnchor"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 166
    .local v1, "fAnchor":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 167
    const-class v5, Landroid/widget/PopupWindow;

    const-string/jumbo v6, "mOnScrollChangedListener"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 168
    .local v2, "listener":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 169
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 171
    .local v4, "originalListener":Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    new-instance v3, Lc8/iI;

    invoke-direct {v3, p0, v1, p1, v4}, Lc8/iI;-><init>(Lc8/jI;Ljava/lang/reflect/Field;Landroid/widget/PopupWindow;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 187
    .local v3, "newListener":Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    invoke-static {v2, p1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v1    # "fAnchor":Ljava/lang/reflect/Field;
    .end local v2    # "listener":Ljava/lang/reflect/Field;
    .end local v3    # "newListener":Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .end local v4    # "originalListener":Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    :cond_0
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initButtons(Ljava/lang/String;[Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 17
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "tags"    # [Ljava/lang/String;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 86
    new-instance v13, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/jI;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lc8/jI;->popupViewGroup:Landroid/widget/FrameLayout;

    .line 87
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/jI;->popupViewGroup:Landroid/widget/FrameLayout;

    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-direct/range {v14 .. v16}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/jI;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lc8/jI;->popupLayout:Landroid/widget/LinearLayout;

    .line 91
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/jI;->popupLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 92
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v11, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 94
    .local v11, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v13, 0x50

    iput v13, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 95
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/jI;->popupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/jI;->popupLayout:Landroid/widget/LinearLayout;

    const v14, -0x777778

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 98
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v9, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 100
    .local v9, "listParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 101
    new-instance v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/jI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v13}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 102
    .local v2, "_titleView":Landroid/widget/Button;
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const v13, -0xa0a0b

    invoke-virtual {v2, v13}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 104
    const v13, -0x777778

    invoke-virtual {v2, v13}, Landroid/widget/Button;->setTextColor(I)V

    .line 105
    invoke-virtual {v2, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/jI;->popupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    new-instance v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/jI;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 109
    .local v8, "line":Landroid/widget/TextView;
    const/4 v13, 0x4

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setHeight(I)V

    .line 110
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/jI;->popupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    .end local v2    # "_titleView":Landroid/widget/Button;
    .end local v8    # "line":Landroid/widget/TextView;
    :cond_0
    if-eqz p2, :cond_1

    .line 113
    move-object/from16 v3, p2

    .local v3, "arr$":[Ljava/lang/String;
    move-object/from16 v0, p2

    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v12, v3, v6

    .line 114
    .local v12, "tag":Ljava/lang/String;
    new-instance v1, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/jI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v13}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 115
    .local v1, "_btn":Landroid/widget/Button;
    invoke-virtual {v1, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {v1, v12}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 117
    const v13, -0xa0a0b

    invoke-virtual {v1, v13}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 118
    const/high16 v13, -0x1000000

    invoke-virtual {v1, v13}, Landroid/widget/Button;->setTextColor(I)V

    .line 119
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/jI;->popupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    new-instance v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/jI;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 124
    .restart local v8    # "line":Landroid/widget/TextView;
    const/4 v13, 0x2

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setHeight(I)V

    .line 125
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/jI;->popupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "_btn":Landroid/widget/Button;
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "line":Landroid/widget/TextView;
    .end local v12    # "tag":Ljava/lang/String;
    :cond_1
    new-instance v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/jI;->mContext:Landroid/content/Context;

    invoke-direct {v4, v13}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 130
    .local v4, "cancelButton":Landroid/widget/Button;
    invoke-static {}, Lc8/OH;->isCN()Z

    move-result v13

    if-eqz v13, :cond_2

    const-string/jumbo v10, "\u53d6\u6d88"

    .line 131
    .local v10, "msg":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const v13, -0xa0a0b

    invoke-virtual {v4, v13}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 133
    const v13, -0x777778

    invoke-virtual {v4, v13}, Landroid/widget/Button;->setTextColor(I)V

    .line 135
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v5, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 137
    .local v5, "cancelParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v13, 0x4

    iput v13, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 138
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/jI;->popupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/jI;->popupViewGroup:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/jI;->popupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 144
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/jI;->popupViewGroup:Landroid/widget/FrameLayout;

    new-instance v14, Lc8/hI;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4}, Lc8/hI;-><init>(Lc8/jI;Landroid/widget/Button;)V

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 160
    return-void

    .line 130
    .end local v5    # "cancelParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "msg":Ljava/lang/String;
    :cond_2
    const-string/jumbo v10, "Cancel"

    goto :goto_1
.end method

.method private initPopupWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 74
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lc8/jI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/jI;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 75
    iget-object v0, p0, Lc8/jI;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lc8/jI;->popupViewGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 76
    iget-object v0, p0, Lc8/jI;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 77
    iget-object v0, p0, Lc8/jI;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 78
    iget-object v0, p0, Lc8/jI;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 79
    iget-object v0, p0, Lc8/jI;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 80
    iget-object v0, p0, Lc8/jI;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, 0x7f000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v0, p0, Lc8/jI;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0, v0}, Lc8/jI;->fixPopupWindow(Landroid/widget/PopupWindow;)V

    .line 83
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lc8/jI;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 71
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    .line 60
    :try_start_0
    iget-object v1, p0, Lc8/jI;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lc8/jI;->mView:Landroid/view/View;

    const/16 v3, 0x51

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 61
    iget-object v1, p0, Lc8/jI;->popupLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lc8/jI;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 62
    iget-object v1, p0, Lc8/jI;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
