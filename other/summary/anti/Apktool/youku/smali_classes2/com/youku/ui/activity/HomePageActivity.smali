.class public Lcom/youku/ui/activity/HomePageActivity;
.super Lc8/IEn;
.source "HomePageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/GFn;,
        Lc8/IFn;,
        Lc8/CFn;,
        Lc8/DFn;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HomePageActivity"

.field public static instance:Lcom/youku/ui/activity/HomePageActivity;


# instance fields
.field private bottomLayout:Landroid/view/ViewGroup;

.field private bubbleContent:Landroid/view/View;

.field private bubbleStub:Landroid/view/ViewStub;

.field private bubbleView:Landroid/view/View;

.field private debugIntent:Landroid/content/Intent;

.field private entryIntent:Landroid/content/Intent;

.field private homeIconPlace:Landroid/view/View;

.field private img_home:Landroid/widget/ImageView;

.field private img_hotspot:Landroid/widget/ImageView;

.field private img_subscribe:Landroid/widget/ImageView;

.field private img_user:Landroid/widget/ImageView;

.field private img_vip:Landroid/widget/ImageView;

.field public layout_YouKuSubscribe:Landroid/view/View;

.field public layout_YoukuHome:Landroid/view/View;

.field public layout_YoukuHotSpot:Landroid/view/View;

.field public layout_YoukuUser:Landroid/view/View;

.field public layout_YoukuVip:Landroid/view/View;

.field private mActivityGroupDelegate:Lc8/EYe;

.field private mBackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lc8/DFn;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentIndex:I

.field private receiver:Landroid/content/BroadcastReceiver;

.field private selectTab:I

.field private subIcon:Landroid/widget/ImageView;

.field private text_home:Landroid/widget/TextView;

.field private text_hotspot:Landroid/widget/TextView;

.field private text_subscribe:Landroid/widget/TextView;

.field private text_user:Landroid/widget/TextView;

.field private text_vip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Lc8/IEn;-><init>()V

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/ui/activity/HomePageActivity;->mCurrentIndex:I

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/ui/activity/HomePageActivity;->selectTab:I

    .line 113
    iput-object v1, p0, Lcom/youku/ui/activity/HomePageActivity;->debugIntent:Landroid/content/Intent;

    .line 114
    iput-object v1, p0, Lcom/youku/ui/activity/HomePageActivity;->entryIntent:Landroid/content/Intent;

    .line 118
    new-instance v0, Lc8/tFn;

    invoke-direct {v0, p0}, Lc8/tFn;-><init>(Lcom/youku/ui/activity/HomePageActivity;)V

    iput-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->mBackMap:Ljava/util/Map;

    .line 911
    return-void
.end method

.method public static synthetic access$000(Lcom/youku/ui/activity/HomePageActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/youku/ui/activity/HomePageActivity;
    .param p1, "x1"    # J
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/youku/ui/activity/HomePageActivity;->refreshHomeMessageView(J)V

    return-void
.end method

.method public static synthetic access$100(Lcom/youku/ui/activity/HomePageActivity;Lcom/youku/data/UpdateInfoDTO;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/ui/activity/HomePageActivity;
    .param p1, "x1"    # Lcom/youku/data/UpdateInfoDTO;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/youku/ui/activity/HomePageActivity;->showUpdate(Lcom/youku/data/UpdateInfoDTO;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/youku/ui/activity/HomePageActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/ui/activity/HomePageActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->text_home:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic access$1100(Lcom/youku/ui/activity/HomePageActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/ui/activity/HomePageActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->text_hotspot:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic access$1200(Lcom/youku/ui/activity/HomePageActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/ui/activity/HomePageActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->text_vip:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic access$1300(Lcom/youku/ui/activity/HomePageActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/ui/activity/HomePageActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->text_subscribe:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic access$1400(Lcom/youku/ui/activity/HomePageActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/ui/activity/HomePageActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->text_user:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic access$1500(Lcom/youku/ui/activity/HomePageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/ui/activity/HomePageActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/youku/ui/activity/HomePageActivity;->cleanTabIconState()V

    return-void
.end method

.method public static synthetic access$1600(Lcom/youku/ui/activity/HomePageActivity;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/ui/activity/HomePageActivity;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/youku/ui/activity/HomePageActivity;->startTabIconAnimation(Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/youku/ui/activity/HomePageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/ui/activity/HomePageActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/youku/ui/activity/HomePageActivity;->showBubbleTipImpl()V

    return-void
.end method

.method public static synthetic access$300(Lcom/youku/ui/activity/HomePageActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/ui/activity/HomePageActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->bubbleContent:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic access$500(Lcom/youku/ui/activity/HomePageActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/ui/activity/HomePageActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->img_home:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic access$600(Lcom/youku/ui/activity/HomePageActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/ui/activity/HomePageActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->img_hotspot:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic access$700(Lcom/youku/ui/activity/HomePageActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/ui/activity/HomePageActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->img_vip:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic access$800(Lcom/youku/ui/activity/HomePageActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/ui/activity/HomePageActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->img_subscribe:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic access$900(Lcom/youku/ui/activity/HomePageActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/ui/activity/HomePageActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->img_user:Landroid/widget/ImageView;

    return-object v0
.end method

.method private cleanTabIconState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 769
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->img_home:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 770
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->img_subscribe:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 771
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->img_hotspot:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 772
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->img_user:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 773
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->img_vip:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 774
    return-void
.end method

.method private delayExit()V
    .locals 1

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/youku/ui/activity/HomePageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lc8/KLj;

    invoke-virtual {v0}, Lc8/KLj;->delayExit()V

    .line 715
    return-void
.end method

.method private getHomePageOrangeConfig()V
    .locals 4

    .prologue
    .line 240
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "preload_cache_config"

    aput-object v3, v1, v2

    new-instance v2, Lc8/uFn;

    invoke-direct {v2, p0}, Lc8/uFn;-><init>(Lcom/youku/ui/activity/HomePageActivity;)V

    invoke-virtual {v0, v1, v2}, Lc8/ctf;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 255
    return-void
.end method

.method private imitateHomePressed()V
    .locals 2

    .prologue
    .line 706
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 707
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 708
    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/HomePageActivity;->startActivity(Landroid/content/Intent;)V

    .line 710
    return-void
.end method

.method private initAndStartDataBoard()V
    .locals 3

    .prologue
    .line 743
    invoke-static {p0}, Lc8/Mkf;->getInstance(Landroid/content/Context;)Lc8/Mkf;

    move-result-object v1

    const-string/jumbo v2, "23570660"

    invoke-virtual {v1, v2}, Lc8/Mkf;->setAppkey(Ljava/lang/String;)V

    .line 745
    invoke-static {p0}, Lc8/Mkf;->getInstance(Landroid/content/Context;)Lc8/Mkf;

    move-result-object v1

    new-instance v2, Lc8/sFn;

    invoke-direct {v2, p0}, Lc8/sFn;-><init>(Lcom/youku/ui/activity/HomePageActivity;)V

    .line 746
    invoke-virtual {v1, v2}, Lc8/Mkf;->setCloseCallback(Lc8/Nkf;)V

    .line 760
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.taobao.databoard.broadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 761
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.taobao.databoard.broadcast.operation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 762
    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/HomePageActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 764
    invoke-static {p0}, Lc8/Mkf;->getInstance(Landroid/content/Context;)Lc8/Mkf;

    move-result-object v1

    const-class v2, Lc8/EYe;

    invoke-virtual {v1, v2}, Lc8/Mkf;->addExclusionActivity(Ljava/lang/Class;)Lc8/Mkf;

    .line 765
    invoke-static {p0}, Lc8/Mkf;->getInstance(Landroid/content/Context;)Lc8/Mkf;

    move-result-object v1

    const-class v2, Lcom/youku/ui/activity/HomePageActivity;

    invoke-virtual {v1, v2}, Lc8/Mkf;->addExclusionActivity(Ljava/lang/Class;)Lc8/Mkf;

    .line 766
    return-void
.end method

.method private initData(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 459
    if-eqz p1, :cond_0

    .line 460
    const-string/jumbo v1, "tab"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/youku/ui/activity/HomePageActivity;->selectTab:I

    .line 463
    :cond_0
    new-instance v0, Lc8/GFn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/GFn;-><init>(Lcom/youku/ui/activity/HomePageActivity;Lc8/tFn;)V

    .line 465
    .local v0, "pageEventListener":Lc8/GFn;
    iget-object v1, p0, Lcom/youku/ui/activity/HomePageActivity;->layout_YoukuHotSpot:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    iget-object v1, p0, Lcom/youku/ui/activity/HomePageActivity;->layout_YoukuHome:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    iget-object v1, p0, Lcom/youku/ui/activity/HomePageActivity;->layout_YouKuSubscribe:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    iget-object v1, p0, Lcom/youku/ui/activity/HomePageActivity;->layout_YoukuUser:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    iget-object v1, p0, Lcom/youku/ui/activity/HomePageActivity;->layout_YoukuVip:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 434
    sget v0, Lcom/youku/phone/R$id;->home_tab:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->bottomLayout:Landroid/view/ViewGroup;

    .line 435
    sget v0, Lcom/youku/phone/R$id;->layout_home:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->layout_YoukuHome:Landroid/view/View;

    .line 436
    sget v0, Lcom/youku/phone/R$id;->layout_hotspot:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->layout_YoukuHotSpot:Landroid/view/View;

    .line 437
    sget v0, Lcom/youku/phone/R$id;->layout_subscribe:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->layout_YouKuSubscribe:Landroid/view/View;

    .line 438
    sget v0, Lcom/youku/phone/R$id;->layout_user:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->layout_YoukuUser:Landroid/view/View;

    .line 439
    sget v0, Lcom/youku/phone/R$id;->layout_vip:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->layout_YoukuVip:Landroid/view/View;

    .line 441
    sget v0, Lcom/youku/phone/R$id;->img_home:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->img_home:Landroid/widget/ImageView;

    .line 442
    sget v0, Lcom/youku/phone/R$id;->img_hotspot:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->img_hotspot:Landroid/widget/ImageView;

    .line 443
    sget v0, Lcom/youku/phone/R$id;->img_subscribe:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->img_subscribe:Landroid/widget/ImageView;

    .line 444
    sget v0, Lcom/youku/phone/R$id;->img_user:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->img_user:Landroid/widget/ImageView;

    .line 445
    sget v0, Lcom/youku/phone/R$id;->img_vip:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->img_vip:Landroid/widget/ImageView;

    .line 447
    sget v0, Lcom/youku/phone/R$id;->text_home:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->text_home:Landroid/widget/TextView;

    .line 448
    sget v0, Lcom/youku/phone/R$id;->text_hotspot:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->text_hotspot:Landroid/widget/TextView;

    .line 449
    sget v0, Lcom/youku/phone/R$id;->text_subscribe:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->text_subscribe:Landroid/widget/TextView;

    .line 450
    sget v0, Lcom/youku/phone/R$id;->text_user:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->text_user:Landroid/widget/TextView;

    .line 451
    sget v0, Lcom/youku/phone/R$id;->text_vip:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->text_vip:Landroid/widget/TextView;

    .line 454
    invoke-static {}, Lc8/Nzk;->getInstance()Lc8/Nzk;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/ui/activity/HomePageActivity;->bottomLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lc8/Nzk;->setBottomViews(Landroid/view/ViewGroup;)V

    .line 455
    invoke-direct {p0}, Lcom/youku/ui/activity/HomePageActivity;->setBottomSkinModuleList()V

    .line 456
    return-void
.end method

.method private processDebugScheme()V
    .locals 2

    .prologue
    .line 421
    invoke-static {}, Lc8/Adn;->getInstance()Lc8/Adn;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/ui/activity/HomePageActivity;->debugIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0, v1}, Lc8/Adn;->execute(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->debugIntent:Landroid/content/Intent;

    .line 423
    return-void
.end method

.method private processExtraData(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 592
    iput-object p1, p0, Lcom/youku/ui/activity/HomePageActivity;->debugIntent:Landroid/content/Intent;

    .line 593
    iput-object p1, p0, Lcom/youku/ui/activity/HomePageActivity;->entryIntent:Landroid/content/Intent;

    .line 595
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 596
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_4

    .line 598
    :try_start_0
    const-string/jumbo v3, "tab"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/youku/ui/activity/HomePageActivity;->selectTab:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :goto_0
    const-string/jumbo v3, "to"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 607
    .local v2, "toUrl":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 608
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string/jumbo v3, "tab"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 609
    const-string/jumbo v3, "tab"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/youku/ui/activity/HomePageActivity;->selectTab:I

    .line 612
    :cond_0
    iget v3, p0, Lcom/youku/ui/activity/HomePageActivity;->selectTab:I

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/youku/ui/activity/HomePageActivity;->selectTab:I

    const/4 v4, 0x4

    if-le v3, v4, :cond_2

    .line 613
    :cond_1
    iget v3, p0, Lcom/youku/ui/activity/HomePageActivity;->mCurrentIndex:I

    iput v3, p0, Lcom/youku/ui/activity/HomePageActivity;->selectTab:I

    .line 616
    :cond_2
    iget v3, p0, Lcom/youku/ui/activity/HomePageActivity;->mCurrentIndex:I

    iget v4, p0, Lcom/youku/ui/activity/HomePageActivity;->selectTab:I

    if-eq v3, v4, :cond_5

    .line 617
    iget v3, p0, Lcom/youku/ui/activity/HomePageActivity;->selectTab:I

    invoke-virtual {p0, v3}, Lcom/youku/ui/activity/HomePageActivity;->switchTab(I)V

    .line 622
    :goto_2
    invoke-virtual {p0, v2}, Lcom/youku/ui/activity/HomePageActivity;->schemeGoNextPage(Ljava/lang/String;)V

    .line 623
    return-void

    .line 600
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "toUrl":Ljava/lang/String;
    :catch_0
    move-exception v3

    iget v3, p0, Lcom/youku/ui/activity/HomePageActivity;->mCurrentIndex:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_3

    move v3, v4

    :goto_3
    iput v3, p0, Lcom/youku/ui/activity/HomePageActivity;->selectTab:I

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/youku/ui/activity/HomePageActivity;->mCurrentIndex:I

    goto :goto_3

    .line 604
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "toUrl":Ljava/lang/String;
    goto :goto_1

    .line 619
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_5
    iget v3, p0, Lcom/youku/ui/activity/HomePageActivity;->selectTab:I

    invoke-virtual {p0, v3}, Lcom/youku/ui/activity/HomePageActivity;->switchToChildActivity(I)V

    goto :goto_2
.end method

.method private refreshHomeMessageView(J)V
    .locals 3
    .param p1, "msgId"    # J

    .prologue
    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "get msg id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 691
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc8/BFn;

    invoke-direct {v1, p0, p1, p2}, Lc8/BFn;-><init>(Lcom/youku/ui/activity/HomePageActivity;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 702
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 703
    return-void
.end method

.method private setBottomSkinData()V
    .locals 1

    .prologue
    .line 404
    sget-boolean v0, Lc8/Nzk;->isBottomFinished:Z

    if-nez v0, :cond_0

    invoke-static {}, Lc8/Nzk;->getInstance()Lc8/Nzk;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Nzk;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    invoke-static {}, Lc8/Nzk;->getInstance()Lc8/Nzk;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Nzk;->displayTabImage()V

    .line 408
    :cond_0
    return-void
.end method

.method private setBottomSkinModuleList()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 412
    .local v0, "modelList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/phone/skin/data/BottomTabSkinModel;>;"
    new-instance v1, Lc8/Ozk;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/youku/ui/activity/HomePageActivity;->img_home:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/youku/ui/activity/HomePageActivity;->text_home:Landroid/widget/TextView;

    invoke-direct {v1, v2, v3, v4}, Lc8/Ozk;-><init>(ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    new-instance v1, Lc8/Ozk;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/youku/ui/activity/HomePageActivity;->img_hotspot:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/youku/ui/activity/HomePageActivity;->text_hotspot:Landroid/widget/TextView;

    invoke-direct {v1, v2, v3, v4}, Lc8/Ozk;-><init>(ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    new-instance v1, Lc8/Ozk;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/youku/ui/activity/HomePageActivity;->img_vip:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/youku/ui/activity/HomePageActivity;->text_vip:Landroid/widget/TextView;

    invoke-direct {v1, v2, v3, v4}, Lc8/Ozk;-><init>(ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    new-instance v1, Lc8/Ozk;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/youku/ui/activity/HomePageActivity;->img_subscribe:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/youku/ui/activity/HomePageActivity;->text_subscribe:Landroid/widget/TextView;

    invoke-direct {v1, v2, v3, v4}, Lc8/Ozk;-><init>(ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    new-instance v1, Lc8/Ozk;

    iget-object v2, p0, Lcom/youku/ui/activity/HomePageActivity;->img_user:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/youku/ui/activity/HomePageActivity;->text_user:Landroid/widget/TextView;

    invoke-direct {v1, v5, v2, v3}, Lc8/Ozk;-><init>(ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-static {}, Lc8/Nzk;->getInstance()Lc8/Nzk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/Nzk;->setBottomModelList(Ljava/util/List;)V

    .line 418
    return-void
.end method

.method private setSkinData(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "type"    # I

    .prologue
    .line 718
    invoke-static {}, Lc8/Nzk;->getInstance()Lc8/Nzk;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Nzk;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 719
    invoke-static {}, Lc8/Nzk;->getInstance()Lc8/Nzk;

    move-result-object v1

    invoke-virtual {v1, p2}, Lc8/Nzk;->getBundleByType(I)Landroid/os/Bundle;

    move-result-object v0

    .line 720
    .local v0, "skinBundle":Landroid/os/Bundle;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 721
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 725
    .end local v0    # "skinBundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 723
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "homepage, skin data is not ready, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private setStatusBarParams()V
    .locals 3
    .annotation build Lc8/N;
        api = 0x15
    .end annotation

    .prologue
    .line 729
    invoke-static {}, Lc8/Mzo;->isTransparentStatusBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 730
    invoke-virtual {p0}, Lcom/youku/ui/activity/HomePageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 731
    .local v0, "window":Landroid/view/Window;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 732
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 733
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 734
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set status bar params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 737
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method private showBubbleTipImpl()V
    .locals 7

    .prologue
    const/16 v1, 0x899

    .line 268
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->bubbleStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 269
    sget v0, Lcom/youku/phone/R$id;->stub_bubbleTip:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->bubbleStub:Landroid/view/ViewStub;

    .line 270
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->bubbleStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->bubbleContent:Landroid/view/View;

    .line 271
    sget v0, Lcom/youku/phone/R$id;->subIcon:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->subIcon:Landroid/widget/ImageView;

    .line 272
    sget v0, Lcom/youku/phone/R$id;->bubbleView:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->bubbleView:Landroid/view/View;

    .line 273
    sget v0, Lcom/youku/phone/R$id;->home_icon_place_holder:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->homeIconPlace:Landroid/view/View;

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->bubbleContent:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 276
    sget-boolean v0, Lc8/Nzk;->isBottomFinished:Z

    if-nez v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->img_home:Landroid/widget/ImageView;

    sget v2, Lcom/youku/phone/R$drawable;->home_refresh_icon:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->bubbleContent:Landroid/view/View;

    new-instance v2, Lc8/wFn;

    invoke-direct {v2, p0}, Lc8/wFn;-><init>(Lcom/youku/ui/activity/HomePageActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 286
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->bubbleView:Landroid/view/View;

    new-instance v2, Lc8/IFn;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lc8/IFn;-><init>(Lcom/youku/ui/activity/HomePageActivity;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 287
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->homeIconPlace:Landroid/view/View;

    new-instance v2, Lc8/IFn;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lc8/IFn;-><init>(Lcom/youku/ui/activity/HomePageActivity;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 288
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->subIcon:Landroid/widget/ImageView;

    new-instance v2, Lc8/xFn;

    invoke-direct {v2, p0}, Lc8/xFn;-><init>(Lcom/youku/ui/activity/HomePageActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    sget v0, Lcom/youku/phone/R$anim;->home_bubble_enter:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 299
    .local v6, "anim":Landroid/view/animation/Animation;
    new-instance v0, Lc8/yFn;

    invoke-direct {v0, p0}, Lc8/yFn;-><init>(Lcom/youku/ui/activity/HomePageActivity;)V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 316
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->bubbleView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 318
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 319
    .local v5, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "spm"

    const-string/jumbo v2, "a2h0f.8166709.home.refresh"

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string/jumbo v0, "page_bubble"

    const-string/jumbo v2, "page_bubble_home_refresh"

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static/range {v0 .. v5}, Lc8/LHg;->utCustomEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 323
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 324
    const-string/jumbo v0, "spm"

    const-string/jumbo v2, "a2h0f.8166709.home.refreshclose"

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string/jumbo v0, "page_bubbleclose"

    const-string/jumbo v2, "page_bubbleclose_home_refreshclose"

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static/range {v0 .. v5}, Lc8/LHg;->utCustomEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "homepage show bubble, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lc8/Nzk;->isBottomFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    return-void
.end method

.method private showUpdate(Lcom/youku/data/UpdateInfoDTO;)V
    .locals 10
    .param p1, "update"    # Lcom/youku/data/UpdateInfoDTO;

    .prologue
    .line 169
    if-eqz p1, :cond_2

    iget-object v6, p1, Lcom/youku/data/UpdateInfoDTO;->packageUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 170
    sget-object v6, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-wide v4, v6, Lcom/youku/vo/Initial;->server_time:J

    .line 171
    .local v4, "nowTime":J
    const-string/jumbo v6, "update_server_time_key"

    invoke-static {v6}, Lc8/VLj;->getPreferenceLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 172
    .local v2, "lastTime":J
    iget-object v6, p1, Lcom/youku/data/UpdateInfoDTO;->updateType:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p1, Lcom/youku/data/UpdateInfoDTO;->updateType:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    :cond_0
    sub-long v6, v4, v2

    const-wide/32 v8, 0x93a80

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 173
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcom/youku/ui/activity/UpdateActivity;

    invoke-direct {v0, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v6, "updateurl"

    iget-object v7, p1, Lcom/youku/data/UpdateInfoDTO;->packageUrl:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string/jumbo v6, "updateversion"

    iget-object v7, p1, Lcom/youku/data/UpdateInfoDTO;->version:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string/jumbo v6, "updatecontent"

    iget-object v7, p1, Lcom/youku/data/UpdateInfoDTO;->description:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string/jumbo v6, "updateType"

    iget-object v7, p1, Lcom/youku/data/UpdateInfoDTO;->updateType:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/HomePageActivity;->startActivity(Landroid/content/Intent;)V

    .line 180
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/youku/ui/activity/HomePageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/youku/service/update/UpdateService;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v1, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/youku/ui/activity/HomePageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 185
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    .end local v2    # "lastTime":J
    .end local v4    # "nowTime":J
    :cond_2
    return-void
.end method

.method private startTabIconAnimation(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 644
    invoke-static {}, Lc8/Iyo;->isHD2Supported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    :goto_0
    return-void

    .line 649
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 651
    new-instance v0, Lc8/AFn;

    invoke-direct {v0, p0, p1}, Lc8/AFn;-><init>(Lcom/youku/ui/activity/HomePageActivity;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 366
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    .line 369
    const/4 v1, 0x0

    .line 371
    .local v1, "handled":Z
    :try_start_0
    iget-object v2, p0, Lcom/youku/ui/activity/HomePageActivity;->mBackMap:Ljava/util/Map;

    iget v4, p0, Lcom/youku/ui/activity/HomePageActivity;->mCurrentIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 372
    iget-object v2, p0, Lcom/youku/ui/activity/HomePageActivity;->mBackMap:Ljava/util/Map;

    iget v4, p0, Lcom/youku/ui/activity/HomePageActivity;->mCurrentIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/DFn;

    invoke-interface {v2}, Lc8/DFn;->onBack()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 378
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    move v2, v3

    .line 393
    .end local v1    # "handled":Z
    :goto_1
    return v2

    .line 374
    .restart local v1    # "handled":Z
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mBackMap onBack e = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 382
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    invoke-static {}, Lcom/youku/ui/activity/HomePageActivity;->getIsSearchOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 383
    invoke-super {p0}, Lc8/IEn;->onBackPressed()V

    :cond_2
    :goto_2
    move v2, v3

    .line 391
    goto :goto_1

    .line 385
    :cond_3
    invoke-static {}, Lc8/bzo;->isConfirmedExit()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 386
    invoke-static {}, Lc8/bzo;->cancelTips()V

    .line 387
    invoke-direct {p0}, Lcom/youku/ui/activity/HomePageActivity;->imitateHomePressed()V

    .line 388
    invoke-direct {p0}, Lcom/youku/ui/activity/HomePageActivity;->delayExit()V

    goto :goto_2

    .line 393
    .end local v1    # "handled":Z
    :cond_4
    invoke-super {p0, p1}, Lc8/IEn;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 637
    const-string/jumbo v0, "\u9996\u9875"

    return-object v0
.end method

.method protected hasActionBar()Z
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public hideBubbleTip()V
    .locals 3

    .prologue
    .line 332
    iget-object v1, p0, Lcom/youku/ui/activity/HomePageActivity;->bubbleStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/ui/activity/HomePageActivity;->bubbleContent:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/ui/activity/HomePageActivity;->bubbleContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/youku/ui/activity/HomePageActivity;->bubbleContent:Landroid/view/View;

    .line 333
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    sget-boolean v1, Lc8/Nzk;->isBottomFinished:Z

    if-nez v1, :cond_2

    .line 338
    iget-object v1, p0, Lcom/youku/ui/activity/HomePageActivity;->img_home:Landroid/widget/ImageView;

    sget v2, Lcom/youku/phone/R$drawable;->homepage_tab_home_selector_new:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 339
    iget-object v1, p0, Lcom/youku/ui/activity/HomePageActivity;->img_home:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 340
    iget-object v1, p0, Lcom/youku/ui/activity/HomePageActivity;->img_home:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/youku/ui/activity/HomePageActivity;->startTabIconAnimation(Landroid/widget/ImageView;)V

    .line 342
    :cond_2
    sget v1, Lcom/youku/phone/R$anim;->home_bubble_exit:I

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 343
    .local v0, "anim":Landroid/view/animation/Animation;
    new-instance v1, Lc8/zFn;

    invoke-direct {v1, p0}, Lc8/zFn;-><init>(Lcom/youku/ui/activity/HomePageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 360
    iget-object v1, p0, Lcom/youku/ui/activity/HomePageActivity;->bubbleView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "homepage hide bubble, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lc8/Nzk;->isBottomFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/youku/ui/activity/HomePageActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lc8/KLj;

    .line 195
    .local v1, "youku":Lc8/KLj;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lc8/KLj;->mHomeCreateStartTime:J

    .line 197
    sget v2, Lcom/youku/ui/activity/HomePageActivity;->TAG_HomePageActivity:I

    iput v2, p0, Lcom/youku/ui/activity/HomePageActivity;->TAG_BaseActivity:I

    .line 198
    invoke-virtual {p0}, Lcom/youku/ui/activity/HomePageActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setFormat(I)V

    .line 200
    invoke-super {p0, p1}, Lc8/IEn;->onCreate(Landroid/os/Bundle;)V

    .line 201
    new-instance v2, Lc8/EYe;

    invoke-direct {v2, p0, p1}, Lc8/EYe;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/youku/ui/activity/HomePageActivity;->mActivityGroupDelegate:Lc8/EYe;

    .line 203
    sput-object p0, Lcom/youku/ui/activity/HomePageActivity;->instance:Lcom/youku/ui/activity/HomePageActivity;

    .line 204
    sput-boolean v4, Lc8/Dfh;->isPushMode:Z

    .line 205
    sput-boolean v4, Lc8/Dfh;->isH5Mode:Z

    .line 207
    sget v2, Lcom/youku/phone/R$layout;->activity_homepage:I

    invoke-virtual {p0, v2}, Lcom/youku/ui/activity/HomePageActivity;->setContentView(I)V

    .line 209
    invoke-static {}, Lc8/Nyo;->clearData()V

    .line 210
    invoke-direct {p0}, Lcom/youku/ui/activity/HomePageActivity;->initView()V

    .line 211
    invoke-direct {p0, p1}, Lcom/youku/ui/activity/HomePageActivity;->initData(Landroid/os/Bundle;)V

    .line 214
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 215
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.youku.action.LOGIN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string/jumbo v2, "com.youku.action.LOGOUT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string/jumbo v2, "com.youku.usercenter.action.message.UPDATE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string/jumbo v2, "com.youku.action.IP_LOCATION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    const-string/jumbo v2, "yk_been_loginout_receiver"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    const-string/jumbo v2, "GET_UPDATE_INFO_SUCCESS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lcom/youku/ui/activity/HomePageActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/youku/ui/activity/HomePageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 223
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/ui/activity/HomePageActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 225
    invoke-direct {p0}, Lcom/youku/ui/activity/HomePageActivity;->setStatusBarParams()V

    .line 227
    invoke-direct {p0}, Lcom/youku/ui/activity/HomePageActivity;->initAndStartDataBoard()V

    .line 229
    invoke-direct {p0}, Lcom/youku/ui/activity/HomePageActivity;->getHomePageOrangeConfig()V

    .line 232
    new-instance v2, Lc8/CFn;

    invoke-direct {v2, p0}, Lc8/CFn;-><init>(Lcom/youku/ui/activity/HomePageActivity;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lc8/CFn;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lc8/KLj;->mHomeCreateEndTime:J

    .line 236
    invoke-virtual {p0}, Lcom/youku/ui/activity/HomePageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/youku/ui/activity/HomePageActivity;->processExtraData(Landroid/content/Intent;)V

    .line 237
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/HomePageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 429
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/ui/activity/HomePageActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 430
    invoke-super {p0}, Lc8/IEn;->onDestroy()V

    .line 431
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 586
    invoke-super {p0, p1}, Lc8/IEn;->onNewIntent(Landroid/content/Intent;)V

    .line 587
    invoke-direct {p0, p1}, Lcom/youku/ui/activity/HomePageActivity;->processExtraData(Landroid/content/Intent;)V

    .line 588
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 398
    invoke-super {p0}, Lc8/IEn;->onResume()V

    .line 399
    invoke-direct {p0}, Lcom/youku/ui/activity/HomePageActivity;->setBottomSkinData()V

    .line 400
    invoke-direct {p0}, Lcom/youku/ui/activity/HomePageActivity;->processDebugScheme()V

    .line 401
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 627
    const-string/jumbo v1, "tab"

    iget v2, p0, Lcom/youku/ui/activity/HomePageActivity;->mCurrentIndex:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 629
    :try_start_0
    invoke-super {p0, p1}, Lc8/IEn;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :goto_0
    return-void

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "YoukuMobile.HomePageActivity"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeSubscribeActivated()V
    .locals 0

    .prologue
    .line 687
    return-void
.end method

.method schemeGoNextPage(Ljava/lang/String;)V
    .locals 1
    .param p1, "toUrl"    # Ljava/lang/String;

    .prologue
    .line 780
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 781
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Ybf;->disallowLoopback()Lc8/Ybf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 783
    :cond_0
    return-void
.end method

.method public setOnOnBackListener(ILc8/DFn;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "listener"    # Lc8/DFn;

    .prologue
    .line 790
    if-ltz p1, :cond_0

    if-eqz p2, :cond_0

    .line 791
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->mBackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    :cond_0
    return-void
.end method

.method public setSubscribeActivated()V
    .locals 0

    .prologue
    .line 681
    return-void
.end method

.method public showBottomTabView(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 786
    iget-object v1, p0, Lcom/youku/ui/activity/HomePageActivity;->bottomLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 787
    return-void

    .line 786
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showBubbleTip()V
    .locals 2

    .prologue
    .line 258
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lc8/vFn;

    invoke-direct {v1, p0}, Lc8/vFn;-><init>(Lcom/youku/ui/activity/HomePageActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    return-void
.end method

.method public switchTab(I)V
    .locals 7
    .param p1, "tab"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 476
    const-string/jumbo v2, "HomePageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switchTab:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v2, p0, Lcom/youku/ui/activity/HomePageActivity;->layout_YoukuHotSpot:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 478
    iget-object v2, p0, Lcom/youku/ui/activity/HomePageActivity;->layout_YoukuHome:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 479
    iget-object v2, p0, Lcom/youku/ui/activity/HomePageActivity;->layout_YouKuSubscribe:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 480
    iget-object v2, p0, Lcom/youku/ui/activity/HomePageActivity;->layout_YoukuUser:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 481
    iget-object v2, p0, Lcom/youku/ui/activity/HomePageActivity;->layout_YoukuVip:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 483
    iget-object v2, p0, Lcom/youku/ui/activity/HomePageActivity;->img_home:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 484
    iget-object v2, p0, Lcom/youku/ui/activity/HomePageActivity;->img_hotspot:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 485
    iget-object v2, p0, Lcom/youku/ui/activity/HomePageActivity;->img_subscribe:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 486
    iget-object v2, p0, Lcom/youku/ui/activity/HomePageActivity;->img_user:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 487
    iget-object v2, p0, Lcom/youku/ui/activity/HomePageActivity;->img_vip:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 489
    iget-object v2, p0, Lcom/youku/ui/activity/HomePageActivity;->layout_YoukuHotSpot:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 490
    iget-object v2, p0, Lcom/youku/ui/activity/HomePageActivity;->layout_YoukuHome:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 491
    iget-object v2, p0, Lcom/youku/ui/activity/HomePageActivity;->layout_YouKuSubscribe:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 492
    iget-object v2, p0, Lcom/youku/ui/activity/HomePageActivity;->layout_YoukuUser:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 493
    iget-object v2, p0, Lcom/youku/ui/activity/HomePageActivity;->layout_YoukuVip:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 495
    const/4 v1, 0x0

    .line 496
    .local v1, "view":Landroid/view/View;
    const/4 v0, 0x0

    .line 497
    .local v0, "imageView":Landroid/widget/ImageView;
    packed-switch p1, :pswitch_data_0

    .line 524
    :goto_0
    if-eqz v1, :cond_0

    .line 525
    invoke-virtual {v1, v6}, Landroid/view/View;->setSelected(Z)V

    .line 526
    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 527
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 530
    :cond_0
    iget v2, p0, Lcom/youku/ui/activity/HomePageActivity;->mCurrentIndex:I

    if-eq v2, p1, :cond_1

    .line 531
    invoke-static {p1, p0}, Lc8/Yyo;->homePageTabSwitch(ILcom/youku/ui/activity/HomePageActivity;)V

    .line 532
    invoke-virtual {p0, p1}, Lcom/youku/ui/activity/HomePageActivity;->switchToChildActivity(I)V

    .line 535
    :cond_1
    invoke-direct {p0}, Lcom/youku/ui/activity/HomePageActivity;->setBottomSkinData()V

    .line 536
    return-void

    .line 499
    :pswitch_0
    iget-object v1, p0, Lcom/youku/ui/activity/HomePageActivity;->layout_YoukuHome:Landroid/view/View;

    .line 500
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->img_home:Landroid/widget/ImageView;

    .line 501
    goto :goto_0

    .line 503
    :pswitch_1
    iget-object v1, p0, Lcom/youku/ui/activity/HomePageActivity;->layout_YoukuHotSpot:Landroid/view/View;

    .line 504
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->img_hotspot:Landroid/widget/ImageView;

    .line 505
    goto :goto_0

    .line 507
    :pswitch_2
    iget-object v1, p0, Lcom/youku/ui/activity/HomePageActivity;->layout_YouKuSubscribe:Landroid/view/View;

    .line 508
    const-string/jumbo v2, "otherMsg"

    sput-object v2, Lc8/zDn;->sourceCode:Ljava/lang/String;

    .line 509
    const/4 v2, 0x0

    sput-object v2, Lc8/zDn;->wakeSubs:Ljava/lang/String;

    .line 510
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->img_subscribe:Landroid/widget/ImageView;

    .line 511
    goto :goto_0

    .line 513
    :pswitch_3
    iget-object v1, p0, Lcom/youku/ui/activity/HomePageActivity;->layout_YoukuVip:Landroid/view/View;

    .line 514
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->img_vip:Landroid/widget/ImageView;

    .line 515
    goto :goto_0

    .line 517
    :pswitch_4
    iget-object v1, p0, Lcom/youku/ui/activity/HomePageActivity;->layout_YoukuUser:Landroid/view/View;

    .line 518
    iget-object v0, p0, Lcom/youku/ui/activity/HomePageActivity;->img_user:Landroid/widget/ImageView;

    goto :goto_0

    .line 497
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public switchToChildActivity(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 539
    const/4 v1, 0x0

    .line 540
    .local v1, "className":Ljava/lang/String;
    const/4 v3, 0x0

    .line 541
    .local v3, "keyName":Ljava/lang/String;
    const/4 v4, -0x1

    .line 542
    .local v4, "skinType":I
    packed-switch p1, :pswitch_data_0

    .line 568
    :goto_0
    if-eqz v1, :cond_0

    if-nez v3, :cond_1

    .line 582
    :cond_0
    :goto_1
    return-void

    .line 544
    :pswitch_0
    const-string/jumbo v1, "com.youku.vip.wrapper.VipHomeActivity"

    .line 545
    const-string/jumbo v3, "VipHomeActivity"

    .line 546
    goto :goto_0

    .line 548
    :pswitch_1
    const-string/jumbo v1, "com.youku.planet.bizs.home.activity.PlanetHomeActivity"

    .line 549
    const-string/jumbo v3, "HdSubscribeActivity"

    .line 550
    const/16 v4, 0xb

    .line 551
    goto :goto_0

    .line 553
    :pswitch_2
    const-string/jumbo v1, "com.youku.usercenter.activity.UserCenterActivity"

    .line 554
    const-string/jumbo v3, "UserCenterActivity"

    .line 555
    const/16 v4, 0xc

    .line 556
    goto :goto_0

    .line 558
    :pswitch_3
    const-string/jumbo v1, "com.youku.HomePageEntry"

    .line 559
    const-string/jumbo v3, "HomePageEntry"

    .line 560
    goto :goto_0

    .line 562
    :pswitch_4
    const-string/jumbo v1, "com.youku.hotspot.activity.HotSpotActivity"

    .line 563
    const-string/jumbo v3, "HotSpotActivity"

    .line 564
    const/16 v4, 0xa

    goto :goto_0

    .line 571
    :cond_1
    sget v5, Lcom/youku/phone/R$id;->home_activity_container:I

    invoke-virtual {p0, v5}, Lcom/youku/ui/activity/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 572
    .local v0, "activityContainer":Landroid/view/ViewGroup;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 573
    iget-object v5, p0, Lcom/youku/ui/activity/HomePageActivity;->entryIntent:Landroid/content/Intent;

    if-nez v5, :cond_3

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 574
    .local v2, "intent":Landroid/content/Intent;
    :goto_2
    invoke-virtual {v2, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 576
    invoke-direct {p0, v2, v4}, Lcom/youku/ui/activity/HomePageActivity;->setSkinData(Landroid/content/Intent;I)V

    .line 578
    :cond_2
    iget-object v5, p0, Lcom/youku/ui/activity/HomePageActivity;->mActivityGroupDelegate:Lc8/EYe;

    invoke-virtual {v5, v0, v3, v2}, Lc8/EYe;->startChildActivity(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/content/Intent;)V

    .line 580
    iput p1, p0, Lcom/youku/ui/activity/HomePageActivity;->mCurrentIndex:I

    .line 581
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/youku/ui/activity/HomePageActivity;->entryIntent:Landroid/content/Intent;

    goto :goto_1

    .line 573
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/youku/ui/activity/HomePageActivity;->entryIntent:Landroid/content/Intent;

    goto :goto_2

    .line 542
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
