.class public Lc8/pYo;
.super Landroid/widget/LinearLayout;
.source "CardLoginRegistView.java"


# static fields
.field public static final UI_DETAIL_LOGIN:I = 0x14

.field public static final UI_NORMAL_LOGIN:I = 0xa

.field public static final UI_VIP_LOGIN:I = 0x1e

.field public static final UI_VIP_PORTAIN_LOGIN:I = 0x28

.field private static time1:J

.field private static time2:J


# instance fields
.field private child_view_total:Landroid/widget/LinearLayout;

.field private handler:Landroid/os/Handler;

.field private login_more:Landroid/view/View;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mYoukuPopupMenu:Lc8/Sbp;

.field private reback_login_textview:Landroid/widget/TextView;

.field private registCardView:Lc8/UYo;

.field private typeScale:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 116
    sput-wide v0, Lc8/pYo;->time1:J

    .line 117
    sput-wide v0, Lc8/pYo;->time2:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lc8/pYo;->typeScale:I

    .line 215
    new-instance v0, Lc8/oYo;

    invoke-direct {v0, p0}, Lc8/oYo;-><init>(Lc8/pYo;)V

    iput-object v0, p0, Lc8/pYo;->handler:Landroid/os/Handler;

    .line 44
    sget v0, Lcom/youku/phone/R$string;->current_namespace:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "type"

    const/16 v2, 0xa

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lc8/pYo;->typeScale:I

    .line 45
    invoke-direct {p0}, Lc8/pYo;->initViewLayout()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lc8/pYo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lc8/pYo;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/pYo;->reback_login_textview:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lc8/pYo;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lc8/pYo;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/pYo;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lc8/pYo;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lc8/pYo;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/pYo;->child_view_total:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200()J
    .locals 2

    .prologue
    .line 27
    sget-wide v0, Lc8/pYo;->time2:J

    return-wide v0
.end method

.method static synthetic access$202(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 27
    sput-wide p0, Lc8/pYo;->time2:J

    return-wide p0
.end method

.method static synthetic access$300(Lc8/pYo;)Lc8/Sbp;
    .locals 1
    .param p0, "x0"    # Lc8/pYo;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/pYo;->mYoukuPopupMenu:Lc8/Sbp;

    return-object v0
.end method

.method static synthetic access$302(Lc8/pYo;Lc8/Sbp;)Lc8/Sbp;
    .locals 0
    .param p0, "x0"    # Lc8/pYo;
    .param p1, "x1"    # Lc8/Sbp;

    .prologue
    .line 27
    iput-object p1, p0, Lc8/pYo;->mYoukuPopupMenu:Lc8/Sbp;

    return-object p1
.end method

.method static synthetic access$400(Lc8/pYo;)Z
    .locals 1
    .param p0, "x0"    # Lc8/pYo;

    .prologue
    .line 27
    invoke-direct {p0}, Lc8/pYo;->isShowScanView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lc8/pYo;)I
    .locals 1
    .param p0, "x0"    # Lc8/pYo;

    .prologue
    .line 27
    iget v0, p0, Lc8/pYo;->typeScale:I

    return v0
.end method

.method static synthetic access$600()J
    .locals 2

    .prologue
    .line 27
    sget-wide v0, Lc8/pYo;->time1:J

    return-wide v0
.end method

.method static synthetic access$602(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 27
    sput-wide p0, Lc8/pYo;->time1:J

    return-wide p0
.end method

.method static synthetic access$700(Lc8/pYo;)V
    .locals 0
    .param p0, "x0"    # Lc8/pYo;

    .prologue
    .line 27
    invoke-direct {p0}, Lc8/pYo;->loginBySinaWeibo()V

    return-void
.end method

.method static synthetic access$800(Lc8/pYo;)V
    .locals 0
    .param p0, "x0"    # Lc8/pYo;

    .prologue
    .line 27
    invoke-direct {p0}, Lc8/pYo;->goRegistPage()V

    return-void
.end method

.method static synthetic access$900(Lc8/pYo;)Lc8/UYo;
    .locals 1
    .param p0, "x0"    # Lc8/pYo;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/pYo;->registCardView:Lc8/UYo;

    return-object v0
.end method

.method static synthetic access$902(Lc8/pYo;Lc8/UYo;)Lc8/UYo;
    .locals 0
    .param p0, "x0"    # Lc8/pYo;
    .param p1, "x1"    # Lc8/UYo;

    .prologue
    .line 27
    iput-object p1, p0, Lc8/pYo;->registCardView:Lc8/UYo;

    return-object p1
.end method

.method private getRegistUIView()Landroid/view/View;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Lc8/UYo;

    invoke-virtual {p0}, Lc8/pYo;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc8/UYo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lc8/pYo;->registCardView:Lc8/UYo;

    .line 78
    iget-object v0, p0, Lc8/pYo;->registCardView:Lc8/UYo;

    sget v1, Lcom/youku/phone/R$id;->reback_login_page:I

    invoke-virtual {v0, v1}, Lc8/UYo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/pYo;->reback_login_textview:Landroid/widget/TextView;

    .line 79
    invoke-direct {p0}, Lc8/pYo;->setRegistOnClickListener()V

    .line 80
    iget-object v0, p0, Lc8/pYo;->registCardView:Lc8/UYo;

    return-object v0
.end method

.method private goRegistPage()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lc8/pYo;->child_view_total:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 211
    iget-object v0, p0, Lc8/pYo;->child_view_total:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lc8/pYo;->getRegistUIView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lc8/pYo;->registCardView:Lc8/UYo;

    invoke-virtual {v0}, Lc8/UYo;->showDifferentView()V

    .line 213
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 68
    sget v0, Lcom/youku/phone/R$id;->child_view_total:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lc8/pYo;->child_view_total:Landroid/widget/LinearLayout;

    .line 69
    iget-object v0, p0, Lc8/pYo;->child_view_total:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lc8/pYo;->getRegistUIView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 72
    return-void
.end method

.method private initViewLayout()V
    .locals 4

    .prologue
    .line 62
    invoke-virtual {p0}, Lc8/pYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$layout;->card_view_login_regist_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lc8/pYo;->initView(Landroid/view/View;)V

    .line 64
    invoke-virtual {p0, v0}, Lc8/pYo;->addView(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method private isShowScanView()Z
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lc8/pYo;->typeScale:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lc8/pYo;->typeScale:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loginBySinaWeibo()V
    .locals 5

    .prologue
    .line 241
    const-string/jumbo v0, "2"

    sput-object v0, Lc8/tin;->loginPath:Ljava/lang/String;

    .line 242
    const-string/jumbo v0, "1"

    sput-object v0, Lc8/tin;->loginType:Ljava/lang/String;

    .line 243
    invoke-static {}, Lc8/bzo;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    sget v0, Lcom/youku/phone/R$string;->tips_no_network:I

    invoke-static {v0}, Lc8/bzo;->showTips(I)V

    .line 245
    invoke-static {}, Lc8/Jbp;->dismiss()V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    sget-boolean v0, Lc8/VLj;->isLogined:Z

    if-nez v0, :cond_0

    .line 251
    sget-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v1, "\u5fae\u535a\u8d26\u53f7\u767b\u9646"

    const-string/jumbo v2, "\u767b\u5f55\u9875"

    const/4 v3, 0x0

    const-string/jumbo v4, "login.login_weibo"

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMoreMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lc8/nYo;

    invoke-direct {v0, p0, p1}, Lc8/nYo;-><init>(Lc8/pYo;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    return-void
.end method

.method private setOnclickEvent()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lc8/pYo;->login_more:Landroid/view/View;

    invoke-direct {p0, v0}, Lc8/pYo;->setMoreMenu(Landroid/view/View;)V

    .line 95
    return-void
.end method

.method private setRegistOnClickListener()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lc8/pYo;->reback_login_textview:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lc8/kYo;

    invoke-direct {v1, p0}, Lc8/kYo;-><init>(Lc8/pYo;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lc8/pYo;->reback_login_textview:Landroid/widget/TextView;

    new-instance v1, Lc8/lYo;

    invoke-direct {v1, p0}, Lc8/lYo;-><init>(Lc8/pYo;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void
.end method


# virtual methods
.method public setFillActivityLayout(Z)V
    .locals 1
    .param p1, "isFillActivity"    # Z

    .prologue
    .line 53
    if-eqz p1, :cond_0

    .line 54
    invoke-direct {p0}, Lc8/pYo;->goRegistPage()V

    .line 55
    iget-object v0, p0, Lc8/pYo;->registCardView:Lc8/UYo;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lc8/pYo;->registCardView:Lc8/UYo;

    invoke-virtual {v0, p1}, Lc8/UYo;->setFillActivityLayout(Z)V

    .line 59
    :cond_0
    return-void
.end method

.method public setLoginBindLayout(Lcom/youku/android/youkusettingservice/data/AccountBindData;)V
    .locals 0
    .param p1, "mAccountBindData"    # Lcom/youku/android/youkusettingservice/data/AccountBindData;

    .prologue
    .line 50
    return-void
.end method
