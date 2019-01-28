.class public Lc8/erb;
.super Ljava/lang/Object;
.source "ActionSheet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/drb;
    }
.end annotation


# static fields
.field private static weakActionSheet:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/erb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionHandler:Lc8/drb;

.field private mActionSheetContainer:Landroid/widget/LinearLayout;

.field private mCallback:Lc8/EWf;

.field private mCancelButtonTitle:Ljava/lang/String;

.field private mContentView:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mDialog:Lc8/grb;

.field private mDismissAnimation:Landroid/view/animation/TranslateAnimation;

.field private mNormalButtons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc8/erb;->mNormalButtons:Landroid/util/SparseArray;

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$layout;->actionsheet_container:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lc8/erb;->mContentView:Landroid/view/ViewGroup;

    .line 55
    iget-object v0, p0, Lc8/erb;->mContentView:Landroid/view/ViewGroup;

    new-instance v1, Lc8/Xqb;

    invoke-direct {v1, p0}, Lc8/Xqb;-><init>(Lc8/erb;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lc8/erb;->mContentView:Landroid/view/ViewGroup;

    sget v1, Lcom/youku/phone/R$id;->ly_action_sheet_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lc8/erb;->mActionSheetContainer:Landroid/widget/LinearLayout;

    .line 62
    iput-object p1, p0, Lc8/erb;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lc8/erb;)V
    .locals 0
    .param p0, "x0"    # Lc8/erb;

    .prologue
    .line 36
    invoke-direct {p0}, Lc8/erb;->dismissAndCallback()V

    return-void
.end method

.method static synthetic access$100(Lc8/erb;)Lc8/drb;
    .locals 1
    .param p0, "x0"    # Lc8/erb;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/erb;->mActionHandler:Lc8/drb;

    return-object v0
.end method

.method static synthetic access$200(Lc8/erb;)V
    .locals 0
    .param p0, "x0"    # Lc8/erb;

    .prologue
    .line 36
    invoke-direct {p0}, Lc8/erb;->dismiss()V

    return-void
.end method

.method static synthetic access$300(Lc8/erb;)Lc8/grb;
    .locals 1
    .param p0, "x0"    # Lc8/erb;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/erb;->mDialog:Lc8/grb;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lc8/erb;->weakActionSheet:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$500(Lc8/erb;)Lc8/EWf;
    .locals 1
    .param p0, "x0"    # Lc8/erb;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/erb;->mCallback:Lc8/EWf;

    return-object v0
.end method

.method private addAction(Ljava/lang/String;II)V
    .locals 10
    .param p1, "actionStr"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "total"    # I

    .prologue
    const/4 v9, -0x1

    const/4 v8, -0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 70
    iget-object v3, p0, Lc8/erb;->mNormalButtons:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    iget-object v3, p0, Lc8/erb;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/youku/phone/R$layout;->actionsheet_button:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 73
    .local v2, "view":Landroid/view/ViewGroup;
    sget v3, Lcom/youku/phone/R$id;->btn_action_sheet_action:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    .local v0, "actionView":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    sget v3, Lcom/youku/phone/R$id;->action_sheet_msg:I

    invoke-virtual {v0, v3, p1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 76
    sget v3, Lcom/youku/phone/R$id;->action_sheet_index:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 78
    new-instance v3, Lc8/Yqb;

    invoke-direct {v3, p0}, Lc8/Yqb;-><init>(Lc8/erb;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    if-ne p3, v7, :cond_0

    .line 88
    iget-object v3, p0, Lc8/erb;->mActionSheetContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 107
    :goto_0
    return-void

    .line 90
    :cond_0
    if-nez p2, :cond_1

    .line 91
    sget v3, Lcom/youku/phone/R$drawable;->actionsheet_button_first_bg:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 92
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 93
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v6, v6, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 94
    iget-object v3, p0, Lc8/erb;->mActionSheetContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 95
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    add-int/lit8 v3, p3, -0x1

    if-ne p2, v3, :cond_2

    .line 96
    sget v3, Lcom/youku/phone/R$drawable;->actionsheet_button_last_bg:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 97
    iget-object v3, p0, Lc8/erb;->mActionSheetContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 99
    :cond_2
    sget v3, Lcom/youku/phone/R$drawable;->actionsheet_button_normal_bg:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 100
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 101
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v6, v6, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 102
    iget-object v3, p0, Lc8/erb;->mActionSheetContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private dismiss()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 163
    iget-object v0, p0, Lc8/erb;->mDialog:Lc8/grb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/erb;->mDialog:Lc8/grb;

    invoke-virtual {v0}, Lc8/grb;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lc8/erb;->mDismissAnimation:Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lc8/erb;->mDismissAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lc8/erb;->mDismissAnimation:Landroid/view/animation/TranslateAnimation;

    .line 171
    iget-object v0, p0, Lc8/erb;->mDismissAnimation:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 172
    iget-object v0, p0, Lc8/erb;->mDismissAnimation:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 173
    iget-object v0, p0, Lc8/erb;->mDismissAnimation:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lc8/brb;

    invoke-direct {v1, p0}, Lc8/brb;-><init>(Lc8/erb;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 192
    iget-object v0, p0, Lc8/erb;->mContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lc8/erb;->mDismissAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private dismissAndCallback()V
    .locals 3

    .prologue
    .line 196
    invoke-direct {p0}, Lc8/erb;->dismiss()V

    .line 197
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 198
    .local v0, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "index"

    iget-object v2, p0, Lc8/erb;->mNormalButtons:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string/jumbo v1, "msg"

    iget-object v2, p0, Lc8/erb;->mCancelButtonTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v1, p0, Lc8/erb;->mCallback:Lc8/EWf;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lc8/erb;->mCallback:Lc8/EWf;

    invoke-interface {v1, v0}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 203
    :cond_0
    return-void
.end method

.method private setActionHandler(Lc8/drb;)V
    .locals 0
    .param p1, "actionHandler"    # Lc8/drb;

    .prologue
    .line 66
    iput-object p1, p0, Lc8/erb;->mActionHandler:Lc8/drb;

    .line 67
    return-void
.end method

.method private setCancelButtonTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lc8/erb;->mCancelButtonTitle:Ljava/lang/String;

    .line 207
    return-void
.end method

.method private show()V
    .locals 15

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 110
    iget-object v3, p0, Lc8/erb;->mContentView:Landroid/view/ViewGroup;

    sget v4, Lcom/youku/phone/R$id;->btn_action_sheet_cancel:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 111
    .local v10, "cancelView":Landroid/widget/TextView;
    iget-object v3, p0, Lc8/erb;->mCancelButtonTitle:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 112
    iget-object v3, p0, Lc8/erb;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/youku/phone/R$string;->action_sheet_cancel_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lc8/erb;->mCancelButtonTitle:Ljava/lang/String;

    .line 114
    :cond_0
    iget-object v3, p0, Lc8/erb;->mCancelButtonTitle:Ljava/lang/String;

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    new-instance v3, Lc8/Zqb;

    invoke-direct {v3, p0}, Lc8/Zqb;-><init>(Lc8/erb;)V

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    .line 122
    .local v11, "metrics":Landroid/util/DisplayMetrics;
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 124
    .local v12, "rect":Landroid/graphics/Rect;
    iget-object v9, p0, Lc8/erb;->mContext:Landroid/content/Context;

    check-cast v9, Landroid/app/Activity;

    .line 125
    .local v9, "activity":Landroid/app/Activity;
    invoke-virtual {v9}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v14

    .line 126
    .local v14, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 127
    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 129
    iget-object v3, p0, Lc8/erb;->mDialog:Lc8/grb;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lc8/erb;->mDialog:Lc8/grb;

    invoke-virtual {v3}, Lc8/grb;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    iget-object v3, p0, Lc8/erb;->mDialog:Lc8/grb;

    invoke-virtual {v3}, Lc8/grb;->cancel()V

    .line 132
    :cond_1
    new-instance v3, Lc8/grb;

    iget-object v4, p0, Lc8/erb;->mContext:Landroid/content/Context;

    sget v5, Lcom/youku/phone/R$style;->ActionSheetStyle:I

    invoke-direct {v3, v4, v5}, Lc8/grb;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lc8/erb;->mDialog:Lc8/grb;

    .line 133
    iget-object v3, p0, Lc8/erb;->mDialog:Lc8/grb;

    new-instance v4, Lc8/arb;

    invoke-direct {v4, p0}, Lc8/arb;-><init>(Lc8/erb;)V

    invoke-virtual {v3, v4}, Lc8/grb;->setBackPressHandler(Lc8/frb;)V

    .line 144
    iget-object v3, p0, Lc8/erb;->mDialog:Lc8/grb;

    iget-object v4, p0, Lc8/erb;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Lc8/grb;->setContentView(Landroid/view/View;)V

    .line 146
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 148
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 149
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 150
    iget-object v1, p0, Lc8/erb;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 153
    iget-object v1, p0, Lc8/erb;->mDialog:Lc8/grb;

    invoke-virtual {v1}, Lc8/grb;->getWindow()Landroid/view/Window;

    move-result-object v13

    .line 154
    .local v13, "window":Landroid/view/Window;
    if-eqz v13, :cond_2

    .line 155
    const/16 v1, 0x50

    invoke-virtual {v13, v1}, Landroid/view/Window;->setGravity(I)V

    .line 156
    invoke-virtual {v13}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 157
    invoke-virtual {v13}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 158
    iget-object v1, p0, Lc8/erb;->mDialog:Lc8/grb;

    invoke-virtual {v1}, Lc8/grb;->show()V

    .line 160
    :cond_2
    return-void
.end method

.method public static showActionSheet(Landroid/content/Context;Ljava/lang/String;Lc8/EWf;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "callback"    # Lc8/EWf;

    .prologue
    .line 212
    sget-object v7, Lc8/erb;->weakActionSheet:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_0

    sget-object v7, Lc8/erb;->weakActionSheet:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    .line 213
    :cond_0
    new-instance v0, Lc8/erb;

    invoke-direct {v0, p0}, Lc8/erb;-><init>(Landroid/content/Context;)V

    .line 214
    .local v0, "actionSheet":Lc8/erb;
    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v7, Lc8/erb;->weakActionSheet:Ljava/lang/ref/WeakReference;

    .line 225
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 227
    :try_start_0
    const-string/jumbo v7, "utf-8"

    invoke-static {p1, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 228
    invoke-static {p1}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 229
    .local v5, "jsObj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v7, "buttons"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    .line 230
    .local v6, "jsbuttons":Lcom/alibaba/fastjson/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 231
    invoke-virtual {v6, v4}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 232
    .local v1, "button":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    invoke-direct {v0, v1, v4, v7}, Lc8/erb;->addAction(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 216
    .end local v0    # "actionSheet":Lc8/erb;
    .end local v1    # "button":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "jsObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "jsbuttons":Lcom/alibaba/fastjson/JSONArray;
    :cond_1
    sget-object v7, Lc8/erb;->weakActionSheet:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/erb;

    .line 217
    .restart local v0    # "actionSheet":Lc8/erb;
    if-eqz v0, :cond_2

    .line 218
    invoke-direct {v0}, Lc8/erb;->dismiss()V

    .line 220
    :cond_2
    sget-object v7, Lc8/erb;->weakActionSheet:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->clear()V

    .line 221
    new-instance v0, Lc8/erb;

    .end local v0    # "actionSheet":Lc8/erb;
    invoke-direct {v0, p0}, Lc8/erb;-><init>(Landroid/content/Context;)V

    .line 222
    .restart local v0    # "actionSheet":Lc8/erb;
    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v7, Lc8/erb;->weakActionSheet:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 234
    .restart local v4    # "i":I
    .restart local v5    # "jsObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v6    # "jsbuttons":Lcom/alibaba/fastjson/JSONArray;
    :cond_3
    :try_start_1
    const-string/jumbo v7, "cancel"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "cancelTitle":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 236
    invoke-direct {v0, v2}, Lc8/erb;->setCancelButtonTitle(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 242
    .end local v2    # "cancelTitle":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "jsObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "jsbuttons":Lcom/alibaba/fastjson/JSONArray;
    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    .line 243
    iput-object p2, v0, Lc8/erb;->mCallback:Lc8/EWf;

    .line 244
    new-instance v7, Lc8/crb;

    invoke-direct {v7}, Lc8/crb;-><init>()V

    invoke-direct {v0, v7}, Lc8/erb;->setActionHandler(Lc8/drb;)V

    .line 257
    :cond_5
    invoke-direct {v0}, Lc8/erb;->show()V

    .line 258
    return-void

    .line 239
    :catch_0
    move-exception v3

    .line 240
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "[ActionSheet] confirm param parse error "

    invoke-static {v7, v3}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
