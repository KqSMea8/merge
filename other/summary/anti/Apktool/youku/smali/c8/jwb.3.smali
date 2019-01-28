.class public Lc8/jwb;
.super Landroid/support/v4/app/Fragment;
.source "WeexPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/hwb;,
        Lc8/iwb;
    }
.end annotation


# static fields
.field public static FRAGMENT_ARG_BUNDLE_URL:Ljava/lang/String; = null

.field public static FRAGMENT_ARG_CUSTOM_OPT:Ljava/lang/String; = null

.field public static FRAGMENT_ARG_FROM_ACTIVITY:Ljava/lang/String; = null

.field public static FRAGMENT_ARG_INIT_DATA:Ljava/lang/String; = null

.field public static FRAGMENT_ARG_RENDER_URL:Ljava/lang/String; = null

.field public static FRAGMENT_ARG_TEMPLATE:Ljava/lang/String; = null

.field public static FRAGMENT_ARG_URI:Ljava/lang/String; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static FRAGMENT_TAG:Ljava/lang/String; = null

.field private static final QUERY_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG:Ljava/lang/String; = "WeexPageFragment"


# instance fields
.field private mBundleUrl:Ljava/lang/String;

.field private mCustomOpt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectAddToParent:Z

.field private mFullScreen:Ljava/lang/Boolean;

.field private mInitData:Ljava/lang/String;

.field private mNestedInterceptListener:Lc8/kVf;

.field private mNoAnimated:Z

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRefreshReceiver:Landroid/content/BroadcastReceiver;

.field private mReloadReceiver:Landroid/content/BroadcastReceiver;

.field private mRenderListener:Lc8/hwb;

.field private mRenderUrl:Ljava/lang/String;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mTemplate:Ljava/lang/String;

.field private mUserTrackEnable:Z

.field private mWXErrorController:Lc8/cwb;

.field protected mWXSDKInstance:Lc8/nVf;

.field private mWXUIModel:Lc8/Jyb;

.field private motuUploadUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-string/jumbo v0, "weex_page"

    sput-object v0, Lc8/jwb;->FRAGMENT_TAG:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "arg_uri"

    sput-object v0, Lc8/jwb;->FRAGMENT_ARG_URI:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "arg_bundle_url"

    sput-object v0, Lc8/jwb;->FRAGMENT_ARG_BUNDLE_URL:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "arg_render_url"

    sput-object v0, Lc8/jwb;->FRAGMENT_ARG_RENDER_URL:Ljava/lang/String;

    .line 76
    const-string/jumbo v0, "arg_template"

    sput-object v0, Lc8/jwb;->FRAGMENT_ARG_TEMPLATE:Ljava/lang/String;

    .line 77
    const-string/jumbo v0, "arg_custom_opt"

    sput-object v0, Lc8/jwb;->FRAGMENT_ARG_CUSTOM_OPT:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, "arg_init_data"

    sput-object v0, Lc8/jwb;->FRAGMENT_ARG_INIT_DATA:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "arg_from_activity"

    sput-object v0, Lc8/jwb;->FRAGMENT_ARG_FROM_ACTIVITY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/jwb;->mUserTrackEnable:Z

    .line 977
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

.method static synthetic access$000(Lc8/jwb;)Lc8/cwb;
    .locals 1
    .param p0, "x0"    # Lc8/jwb;

    .prologue
    .line 65
    iget-object v0, p0, Lc8/jwb;->mWXErrorController:Lc8/cwb;

    return-object v0
.end method

.method static synthetic access$100(Lc8/jwb;)Z
    .locals 1
    .param p0, "x0"    # Lc8/jwb;

    .prologue
    .line 65
    iget-boolean v0, p0, Lc8/jwb;->mUserTrackEnable:Z

    return v0
.end method

.method static synthetic access$200(Lc8/jwb;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lc8/jwb;

    .prologue
    .line 65
    iget-object v0, p0, Lc8/jwb;->mRootView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lc8/jwb;)Z
    .locals 1
    .param p0, "x0"    # Lc8/jwb;

    .prologue
    .line 65
    invoke-direct {p0}, Lc8/jwb;->needWrapRenderView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lc8/jwb;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lc8/jwb;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lc8/jwb;->removeWrappedView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lc8/jwb;)Lc8/hwb;
    .locals 1
    .param p0, "x0"    # Lc8/jwb;

    .prologue
    .line 65
    iget-object v0, p0, Lc8/jwb;->mRenderListener:Lc8/hwb;

    return-object v0
.end method

.method static synthetic access$602(Lc8/jwb;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/jwb;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lc8/jwb;->mDirectAddToParent:Z

    return p1
.end method

.method static synthetic access$700(Lc8/jwb;)Lc8/Jyb;
    .locals 1
    .param p0, "x0"    # Lc8/jwb;

    .prologue
    .line 65
    iget-object v0, p0, Lc8/jwb;->mWXUIModel:Lc8/Jyb;

    return-object v0
.end method

.method static synthetic access$702(Lc8/jwb;Lc8/Jyb;)Lc8/Jyb;
    .locals 0
    .param p0, "x0"    # Lc8/jwb;
    .param p1, "x1"    # Lc8/Jyb;

    .prologue
    .line 65
    iput-object p1, p0, Lc8/jwb;->mWXUIModel:Lc8/Jyb;

    return-object p1
.end method

.method static synthetic access$800(Lc8/jwb;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/jwb;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lc8/jwb;->showProgressBar(Z)V

    return-void
.end method

.method static synthetic access$900(Lc8/jwb;)V
    .locals 0
    .param p0, "x0"    # Lc8/jwb;

    .prologue
    .line 65
    invoke-direct {p0}, Lc8/jwb;->initErrorView()V

    return-void
.end method

.method private destroySDKInstance()V
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->destroy()V

    .line 770
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    .line 773
    :cond_0
    return-void
.end method

.method private getMaxDeepViewLayer(Landroid/view/ViewGroup;)I
    .locals 5
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    .prologue
    .line 823
    if-nez p1, :cond_0

    .line 824
    const/4 v4, -0x1

    .line 839
    :goto_0
    return v4

    .line 826
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 827
    const/4 v4, 0x0

    goto :goto_0

    .line 829
    :cond_1
    const/4 v3, 0x0

    .line 830
    .local v3, "max":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 831
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 832
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 833
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0}, Lc8/jwb;->getMaxDeepViewLayer(Landroid/view/ViewGroup;)I

    move-result v1

    .line 834
    .local v1, "deep":I
    if-le v1, v3, :cond_2

    .line 835
    move v3, v1

    .line 830
    .end local v1    # "deep":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 839
    :cond_3
    add-int/lit8 v4, v3, 0x1

    goto :goto_0
.end method

.method private initErrorView()V
    .locals 3

    .prologue
    .line 668
    iget-object v0, p0, Lc8/jwb;->mWXErrorController:Lc8/cwb;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc8/jwb;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 669
    new-instance v0, Lc8/cwb;

    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lc8/jwb;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/cwb;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lc8/jwb;->mWXErrorController:Lc8/cwb;

    .line 670
    iget-object v0, p0, Lc8/jwb;->mWXErrorController:Lc8/cwb;

    invoke-virtual {v0}, Lc8/cwb;->hide()V

    .line 671
    iget-object v0, p0, Lc8/jwb;->mWXErrorController:Lc8/cwb;

    new-instance v1, Lc8/fwb;

    invoke-direct {v1, p0}, Lc8/fwb;-><init>(Lc8/jwb;)V

    invoke-virtual {v0, v1}, Lc8/cwb;->setRetryListener(Landroid/view/View$OnClickListener;)V

    .line 681
    :cond_0
    return-void
.end method

.method private initSDKInstance(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 713
    iget-object v0, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    if-nez v0, :cond_0

    .line 714
    invoke-virtual {p0, p1}, Lc8/jwb;->getWXSDKInstance(Landroid/content/Context;)Lc8/nVf;

    move-result-object v0

    iput-object v0, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    .line 716
    :try_start_0
    iget-object v0, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    new-instance v1, Lc8/gwb;

    invoke-direct {v1, p0}, Lc8/gwb;-><init>(Lc8/jwb;)V

    invoke-virtual {v0, v1}, Lc8/nVf;->setComponentObserver(Lc8/LUf;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    :goto_0
    iget-object v0, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    new-instance v1, Lc8/iwb;

    invoke-direct {v1, p0}, Lc8/iwb;-><init>(Lc8/jwb;)V

    invoke-virtual {v0, v1}, Lc8/nVf;->registerRenderListener(Lc8/NUf;)V

    .line 755
    iget-object v0, p0, Lc8/jwb;->mNestedInterceptListener:Lc8/kVf;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    iget-object v1, p0, Lc8/jwb;->mNestedInterceptListener:Lc8/kVf;

    invoke-virtual {v0, v1}, Lc8/nVf;->setNestedInstanceInterceptor(Lc8/kVf;)V

    .line 759
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static installFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;Ljava/io/Serializable;)Landroid/support/v4/app/Fragment;
    .locals 6
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "template"    # Ljava/lang/String;
    .param p3, "bundleUrl"    # Ljava/lang/String;
    .param p4, "renderUrl"    # Ljava/lang/String;
    .param p6, "initData"    # Ljava/lang/String;
    .param p7, "containerViewId"    # I
    .param p8, "fragmentTag"    # Ljava/lang/String;
    .param p9, "optFromActivity"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/jwb;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ")",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "pageClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/aliweex/bundle/WeexPageFragment;>;"
    .local p5, "customOpt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 155
    .local v3, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lc8/jwb;->FRAGMENT_TAG:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 156
    .local v1, "f":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 182
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    .end local p8    # "fragmentTag":Ljava/lang/String;
    .local v2, "f":Landroid/support/v4/app/Fragment;
    :goto_1
    return-object v2

    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    .restart local p8    # "fragmentTag":Ljava/lang/String;
    :cond_0
    move-object v5, p8

    .line 155
    goto :goto_0

    .line 159
    .restart local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 160
    .local v0, "args":Landroid/os/Bundle;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 161
    sget-object v5, Lc8/jwb;->FRAGMENT_ARG_TEMPLATE:Ljava/lang/String;

    invoke-virtual {v0, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 164
    sget-object v5, Lc8/jwb;->FRAGMENT_ARG_BUNDLE_URL:Ljava/lang/String;

    invoke-virtual {v0, v5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 167
    sget-object v5, Lc8/jwb;->FRAGMENT_ARG_RENDER_URL:Ljava/lang/String;

    invoke-virtual {v0, v5, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_4
    if-eqz p5, :cond_5

    .line 170
    sget-object v5, Lc8/jwb;->FRAGMENT_ARG_CUSTOM_OPT:Ljava/lang/String;

    invoke-virtual {v0, v5, p5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 172
    :cond_5
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 173
    sget-object v5, Lc8/jwb;->FRAGMENT_ARG_INIT_DATA:Ljava/lang/String;

    invoke-virtual {v0, v5, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_6
    if-eqz p9, :cond_7

    .line 176
    sget-object v5, Lc8/jwb;->FRAGMENT_ARG_FROM_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v0, v5, p9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 178
    :cond_7
    invoke-static {p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 179
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 180
    .local v4, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object p8, Lc8/jwb;->FRAGMENT_TAG:Ljava/lang/String;

    .end local p8    # "fragmentTag":Ljava/lang/String;
    :cond_8
    invoke-virtual {v4, p7, v1, p8}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 181
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-object v2, v1

    .line 182
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    .restart local v2    # "f":Landroid/support/v4/app/Fragment;
    goto :goto_1
.end method

.method private isScollViewOnTop(Landroid/view/ViewGroup;)Z
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 356
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 357
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 358
    .local v1, "view":Landroid/view/View;
    instance-of v3, v1, Lc8/xeg;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 359
    check-cast v0, Lc8/xeg;

    .line 360
    .local v0, "scrollView":Lc8/xeg;
    invoke-virtual {v0}, Lc8/xeg;->getScrollY()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 363
    .end local v0    # "scrollView":Lc8/xeg;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return v2
.end method

.method private needWrapRenderView()Z
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lc8/jwb;->mRenderListener:Lc8/hwb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/jwb;->mRenderListener:Lc8/hwb;

    invoke-virtual {v0}, Lc8/hwb;->needWrapper()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "weexUrl"    # Ljava/lang/String;
    .param p3, "bundleUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/jwb;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "claName":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/aliweex/bundle/WeexPageFragment;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 144
    .local v0, "args":Landroid/os/Bundle;
    sget-object v2, Lc8/jwb;->FRAGMENT_ARG_BUNDLE_URL:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sget-object v2, Lc8/jwb;->FRAGMENT_ARG_RENDER_URL:Ljava/lang/String;

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 147
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 148
    return-object v1
.end method

.method public static newInstance(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;Ljava/lang/String;I)Landroid/support/v4/app/Fragment;
    .locals 10
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "containerViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/jwb;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p1, "pageClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/aliweex/bundle/WeexPageFragment;>;"
    const/4 v2, 0x0

    .line 103
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p2

    move-object v5, v2

    move-object v6, v2

    move v7, p3

    move-object v8, v2

    move-object v9, v2

    invoke-static/range {v0 .. v9}, Lc8/jwb;->installFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;Ljava/io/Serializable;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstanceWithTemplate(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;Ljava/lang/String;I)Landroid/support/v4/app/Fragment;
    .locals 10
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "template"    # Ljava/lang/String;
    .param p3, "containerViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/jwb;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .local p1, "pageClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/aliweex/bundle/WeexPageFragment;>;"
    const/4 v3, 0x0

    .line 128
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move v7, p3

    move-object v8, v3

    move-object v9, v3

    invoke-static/range {v0 .. v9}, Lc8/jwb;->installFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;Ljava/io/Serializable;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstanceWithTemplate(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/support/v4/app/Fragment;
    .locals 10
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "template"    # Ljava/lang/String;
    .param p4, "initData"    # Ljava/lang/String;
    .param p5, "containerViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/jwb;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .local p1, "pageClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/aliweex/bundle/WeexPageFragment;>;"
    .local p3, "customOpt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 133
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, v3

    move-object v9, v3

    invoke-static/range {v0 .. v9}, Lc8/jwb;->installFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;Ljava/io/Serializable;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstanceWithTemplate(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 10
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "template"    # Ljava/lang/String;
    .param p4, "initData"    # Ljava/lang/String;
    .param p5, "containerViewId"    # I
    .param p6, "fragmentTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/jwb;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "pageClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/aliweex/bundle/WeexPageFragment;>;"
    .local p3, "customOpt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object/from16 v8, p6

    invoke-static/range {v0 .. v9}, Lc8/jwb;->installFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;Ljava/io/Serializable;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstanceWithUrl(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Landroid/support/v4/app/Fragment;
    .locals 10
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "bundleUrl"    # Ljava/lang/String;
    .param p3, "renderUrl"    # Ljava/lang/String;
    .param p4, "containerViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/jwb;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .local p1, "pageClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/aliweex/bundle/WeexPageFragment;>;"
    const/4 v2, 0x0

    .line 108
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    move-object v6, v2

    move v7, p4

    move-object v8, v2

    move-object v9, v2

    invoke-static/range {v0 .. v9}, Lc8/jwb;->installFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;Ljava/io/Serializable;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstanceWithUrl(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILjava/io/Serializable;)Landroid/support/v4/app/Fragment;
    .locals 10
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "bundleUrl"    # Ljava/lang/String;
    .param p3, "renderUrl"    # Ljava/lang/String;
    .param p4, "containerViewId"    # I
    .param p5, "optFromActivity"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/jwb;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/io/Serializable;",
            ")",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .local p1, "pageClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/aliweex/bundle/WeexPageFragment;>;"
    const/4 v2, 0x0

    .line 113
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    move-object v6, v2

    move v7, p4

    move-object v8, v2

    move-object v9, p5

    invoke-static/range {v0 .. v9}, Lc8/jwb;->installFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;Ljava/io/Serializable;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstanceWithUrl(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/support/v4/app/Fragment;
    .locals 10
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "bundleUrl"    # Ljava/lang/String;
    .param p3, "renderUrl"    # Ljava/lang/String;
    .param p5, "initData"    # Ljava/lang/String;
    .param p6, "containerViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/jwb;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "pageClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/aliweex/bundle/WeexPageFragment;>;"
    .local p4, "customOpt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    invoke-static/range {v0 .. v9}, Lc8/jwb;->installFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;Ljava/io/Serializable;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstanceWithUrl(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 10
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "bundleUrl"    # Ljava/lang/String;
    .param p3, "renderUrl"    # Ljava/lang/String;
    .param p5, "initData"    # Ljava/lang/String;
    .param p6, "containerViewId"    # I
    .param p7, "fragmentTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/jwb;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "pageClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/aliweex/bundle/WeexPageFragment;>;"
    .local p4, "customOpt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v9}, Lc8/jwb;->installFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;Ljava/io/Serializable;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private pageAppear()V
    .locals 5

    .prologue
    .line 685
    :try_start_0
    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lc8/jwb;->mUserTrackEnable:Z

    if-eqz v3, :cond_0

    .line 686
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v3

    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ut/mini/UTTracker;->pageDisAppear(Ljava/lang/Object;)V

    .line 687
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v3

    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ut/mini/UTTracker;->pageAppearDonotSkip(Ljava/lang/Object;)V

    .line 689
    invoke-virtual {p0}, Lc8/jwb;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 690
    invoke-virtual {p0}, Lc8/jwb;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 692
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v3

    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/ut/mini/UTTracker;->updatePageUrl(Ljava/lang/Object;Landroid/net/Uri;)V

    .line 694
    const-string/jumbo v3, "scm"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 695
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 696
    .local v1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "scm"

    const-string/jumbo v4, "scm"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v3

    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/ut/mini/UTTracker;->updatePageProperties(Ljava/lang/Object;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    .end local v1    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 701
    :catch_0
    move-exception v0

    .line 702
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private pageDisappear()V
    .locals 2

    .prologue
    .line 707
    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc8/jwb;->mUserTrackEnable:Z

    if-eqz v0, :cond_0

    .line 708
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTTracker;->pageDisAppear(Ljava/lang/Object;)V

    .line 710
    :cond_0
    return-void
.end method

.method private parseArgsFromActivity()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 632
    invoke-virtual {p0}, Lc8/jwb;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 633
    .local v2, "args":Landroid/os/Bundle;
    if-eqz v2, :cond_3

    .line 634
    sget-object v9, Lc8/jwb;->FRAGMENT_ARG_FROM_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    .line 635
    .local v5, "optFromActivity":Ljava/io/Serializable;
    instance-of v9, v5, Ljava/util/Map;

    if-eqz v9, :cond_3

    move-object v4, v5

    .line 636
    check-cast v4, Ljava/util/Map;

    .line 637
    .local v4, "opt":Ljava/util/Map;
    const-string/jumbo v9, "orientation"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 638
    .local v6, "orientation":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "landscape"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 639
    const-string/jumbo v9, "preferredOrientation"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 640
    .local v7, "preferred":Ljava/lang/String;
    const-string/jumbo v9, "landscapeRight"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 641
    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 648
    .end local v7    # "preferred":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v9, "fullscreen"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 649
    .local v3, "fullScreenStr":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lc8/jwb;->mFullScreen:Ljava/lang/Boolean;

    .line 650
    invoke-direct {p0}, Lc8/jwb;->showFullScreenSystemStatusbar()V

    .line 651
    invoke-direct {p0}, Lc8/jwb;->showFullScreenActionbar()V

    .line 653
    const-string/jumbo v9, "animated"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 654
    .local v1, "animatedKey":Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 655
    const/4 v0, 0x1

    .line 656
    .local v0, "animated":Z
    instance-of v9, v1, Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 657
    check-cast v1, Ljava/lang/String;

    .end local v1    # "animatedKey":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 661
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    const/4 v8, 0x1

    :cond_2
    iput-boolean v8, p0, Lc8/jwb;->mNoAnimated:Z

    .line 665
    .end local v0    # "animated":Z
    .end local v3    # "fullScreenStr":Ljava/lang/String;
    .end local v4    # "opt":Ljava/util/Map;
    .end local v5    # "optFromActivity":Ljava/io/Serializable;
    .end local v6    # "orientation":Ljava/lang/String;
    :cond_3
    return-void

    .line 642
    .restart local v4    # "opt":Ljava/util/Map;
    .restart local v5    # "optFromActivity":Ljava/io/Serializable;
    .restart local v6    # "orientation":Ljava/lang/String;
    .restart local v7    # "preferred":Ljava/lang/String;
    :cond_4
    const-string/jumbo v9, "landscapeLeft"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 643
    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 645
    :cond_5
    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 658
    .end local v7    # "preferred":Ljava/lang/String;
    .restart local v0    # "animated":Z
    .restart local v1    # "animatedKey":Ljava/lang/Object;
    .restart local v3    # "fullScreenStr":Ljava/lang/String;
    :cond_6
    instance-of v9, v1, Ljava/lang/Boolean;

    if-eqz v9, :cond_1

    .line 659
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "animatedKey":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1
.end method

.method private removeSelf(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 803
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 806
    :cond_0
    return-void
.end method

.method private removeWrappedView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 780
    iget-object v3, p0, Lc8/jwb;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 781
    .local v0, "parent":Landroid/view/ViewParent;
    const/4 v2, 0x0

    .line 782
    .local v2, "weexRenderView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    .line 784
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    move-object v1, v0

    .line 785
    check-cast v1, Landroid/view/ViewGroup;

    .line 786
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    sget v3, Lcom/youku/phone/R$id;->weex_render_view:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 787
    if-eqz v2, :cond_0

    .line 788
    invoke-direct {p0, v2}, Lc8/jwb;->removeSelf(Landroid/view/View;)V

    .line 791
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    if-nez v2, :cond_1

    .line 792
    iget-object v3, p0, Lc8/jwb;->mRootView:Landroid/widget/FrameLayout;

    sget v4, Lcom/youku/phone/R$id;->weex_render_view:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 793
    if-eqz v2, :cond_1

    .line 794
    iget-object v3, p0, Lc8/jwb;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 797
    :cond_1
    if-nez v2, :cond_2

    .line 798
    invoke-direct {p0, p1}, Lc8/jwb;->removeSelf(Landroid/view/View;)V

    .line 800
    :cond_2
    return-void
.end method

.method private showFullScreenActionbar()V
    .locals 5

    .prologue
    .line 606
    iget-object v3, p0, Lc8/jwb;->mFullScreen:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/jwb;->mFullScreen:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 608
    :try_start_0
    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 609
    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->hide()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    const/4 v2, 0x0

    .line 613
    .local v2, "hasAppCompatActivity":Z
    :try_start_1
    const-string/jumbo v3, "android.support.v7.app.AppCompatActivity"

    invoke-static {v3}, Lc8/jwb;->_1forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 614
    const/4 v2, 0x1

    .line 618
    :goto_1
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lc8/Qn;

    if-eqz v3, :cond_0

    .line 619
    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lc8/Qn;

    invoke-virtual {v3}, Lc8/Qn;->getSupportActionBar()Lc8/mn;

    move-result-object v0

    .line 620
    .local v0, "actionbar":Lc8/mn;
    if-eqz v0, :cond_0

    .line 621
    invoke-virtual {v0}, Lc8/mn;->hide()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 625
    .end local v0    # "actionbar":Lc8/mn;
    .end local v2    # "hasAppCompatActivity":Z
    :catch_0
    move-exception v1

    .line 626
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 615
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v2    # "hasAppCompatActivity":Z
    :catch_1
    move-exception v1

    .line 616
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method private showFullScreenSystemStatusbar()V
    .locals 5

    .prologue
    .line 594
    iget-object v3, p0, Lc8/jwb;->mFullScreen:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/jwb;->mFullScreen:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 596
    :try_start_0
    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 597
    .local v0, "decorView":Landroid/view/View;
    const/4 v2, 0x4

    .line 598
    .local v2, "uiOptions":I
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    .end local v0    # "decorView":Landroid/view/View;
    .end local v2    # "uiOptions":I
    :cond_0
    :goto_0
    return-void

    .line 599
    :catch_0
    move-exception v1

    .line 600
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private showProgressBar(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 762
    iget-object v0, p0, Lc8/jwb;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 763
    iget-object v1, p0, Lc8/jwb;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 765
    :cond_0
    return-void

    .line 763
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private utForRefreshWeexPage()V
    .locals 2

    .prologue
    .line 263
    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc8/jwb;->mUserTrackEnable:Z

    if-eqz v0, :cond_0

    .line 264
    invoke-direct {p0}, Lc8/jwb;->pageDisappear()V

    .line 265
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTTracker;->skipPage(Ljava/lang/Object;)V

    .line 266
    invoke-direct {p0}, Lc8/jwb;->pageAppear()V

    .line 268
    :cond_0
    return-void
.end method


# virtual methods
.method public addViewToRoot(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 858
    iget-object v0, p0, Lc8/jwb;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lc8/jwb;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 861
    :cond_0
    return-void
.end method

.method protected createWXSDKInstance(Landroid/content/Context;)Lc8/nVf;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 850
    new-instance v0, Lc8/Cob;

    invoke-direct {v0, p1}, Lc8/Cob;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public destroyWeex()V
    .locals 1

    .prologue
    .line 271
    invoke-direct {p0}, Lc8/jwb;->destroySDKInstance()V

    .line 272
    invoke-virtual {p0}, Lc8/jwb;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lc8/jwb;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 275
    :cond_0
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getRootComponent()Lc8/tbg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    iget-object v1, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    .line 369
    invoke-virtual {v2}, Lc8/nVf;->getRootComponent()Lc8/tbg;

    move-result-object v2

    invoke-virtual {v2}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-virtual {v0, v1, v2, p1, p2}, Lc8/pVf;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 371
    :cond_0
    return-void
.end method

.method public getOriginalRenderUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lc8/jwb;->mRenderUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lc8/jwb;->mBundleUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lc8/jwb;->mRenderUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lc8/jwb;->mBundleUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getWXSDKInstance(Landroid/content/Context;)Lc8/nVf;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 854
    invoke-virtual {p0, p1}, Lc8/jwb;->createWXSDKInstance(Landroid/content/Context;)Lc8/nVf;

    move-result-object v0

    return-object v0
.end method

.method public getWXUIModel()Lc8/Jyb;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lc8/jwb;->mWXUIModel:Lc8/Jyb;

    return-object v0
.end method

.method public isAtTop()Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 279
    const/4 v3, 0x0

    .line 281
    .local v3, "ret":Z
    :try_start_0
    iget-boolean v4, p0, Lc8/jwb;->mDirectAddToParent:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc8/jwb;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc8/jwb;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 282
    iget-object v4, p0, Lc8/jwb;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 283
    .local v1, "container":Landroid/view/ViewGroup;
    invoke-direct {p0, v1}, Lc8/jwb;->isScollViewOnTop(Landroid/view/ViewGroup;)Z

    move-result v3

    .line 285
    .end local v1    # "container":Landroid/view/ViewGroup;
    :cond_0
    if-nez v3, :cond_1

    iget-object v4, p0, Lc8/jwb;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lc8/jwb;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 286
    iget-object v4, p0, Lc8/jwb;->mRootView:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 287
    .local v2, "containerView":Landroid/view/View;
    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 288
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 289
    .restart local v1    # "container":Landroid/view/ViewGroup;
    invoke-direct {p0, v1}, Lc8/jwb;->isScollViewOnTop(Landroid/view/ViewGroup;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 295
    .end local v1    # "container":Landroid/view/ViewGroup;
    .end local v2    # "containerView":Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public declared-synchronized isGetDeepViewLayer()Z
    .locals 5

    .prologue
    .line 814
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v2

    invoke-virtual {v2}, Lc8/Fob;->getConfigAdapter()Lc8/Hob;

    move-result-object v0

    .line 815
    .local v0, "adapter":Lc8/Hob;
    if-eqz v0, :cond_0

    .line 816
    const-string/jumbo v2, "wx_namespace_ext_config"

    const-string/jumbo v3, "get_deep_view_layer"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lc8/Hob;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 817
    .local v1, "isGetDeepViewLayer":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 819
    .end local v1    # "isGetDeepViewLayer":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 814
    .end local v0    # "adapter":Lc8/Hob;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 423
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 425
    invoke-virtual {p0}, Lc8/jwb;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 426
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 427
    sget-object v8, Lc8/jwb;->FRAGMENT_ARG_URI:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 428
    .local v7, "url":Ljava/lang/String;
    sget-object v8, Lc8/jwb;->FRAGMENT_ARG_BUNDLE_URL:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "bundleUrl":Ljava/lang/String;
    sget-object v8, Lc8/jwb;->FRAGMENT_ARG_RENDER_URL:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 430
    .local v5, "renderUrl":Ljava/lang/String;
    sget-object v8, Lc8/jwb;->FRAGMENT_ARG_TEMPLATE:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 431
    .local v6, "template":Ljava/lang/String;
    sget-object v8, Lc8/jwb;->FRAGMENT_ARG_CUSTOM_OPT:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 432
    .local v2, "customOpt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v8, Lc8/jwb;->FRAGMENT_ARG_INIT_DATA:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, "initData":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 436
    invoke-virtual {p0, v1, v5}, Lc8/jwb;->transformUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_0
    :goto_0
    new-instance v4, Lc8/TUf;

    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v4, v8}, Lc8/TUf;-><init>(Landroid/content/Context;)V

    .line 443
    .local v4, "renderContainer":Lc8/TUf;
    iget-object v8, p0, Lc8/jwb;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 444
    invoke-virtual {p0}, Lc8/jwb;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {p0, v8}, Lc8/jwb;->initSDKInstance(Landroid/content/Context;)V

    .line 445
    iget-object v8, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v8, v4}, Lc8/nVf;->setRenderContainer(Lc8/TUf;)V

    .line 447
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 448
    invoke-virtual {p0, v6, v2, v3}, Lc8/jwb;->startRenderByTemplate(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 456
    :cond_1
    :goto_1
    iget-object v8, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v8}, Lc8/nVf;->onActivityCreate()V

    .line 459
    .end local v1    # "bundleUrl":Ljava/lang/String;
    .end local v2    # "customOpt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "initData":Ljava/lang/String;
    .end local v4    # "renderContainer":Lc8/TUf;
    .end local v5    # "renderUrl":Ljava/lang/String;
    .end local v6    # "template":Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :cond_2
    return-void

    .line 437
    .restart local v1    # "bundleUrl":Ljava/lang/String;
    .restart local v2    # "customOpt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "initData":Ljava/lang/String;
    .restart local v5    # "renderUrl":Ljava/lang/String;
    .restart local v6    # "template":Ljava/lang/String;
    .restart local v7    # "url":Ljava/lang/String;
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 438
    invoke-virtual {p0, v7, v7}, Lc8/jwb;->transformUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 449
    .restart local v4    # "renderContainer":Lc8/TUf;
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 450
    invoke-virtual {p0, v2, v3, v1, v5}, Lc8/jwb;->startRenderByUrl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 451
    :cond_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 452
    invoke-virtual {p0, v2, v3, v7, v7}, Lc8/jwb;->startRenderByUrl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 582
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 583
    iget-object v1, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1, p1, p2, p3}, Lc8/nVf;->onActivityResult(IILandroid/content/Intent;)V

    .line 586
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 587
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    const-string/jumbo v1, "actionActivityResult"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    const-string/jumbo v1, "requestCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 589
    const-string/jumbo v1, "resultCode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 590
    invoke-virtual {p0}, Lc8/jwb;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 591
    return-void

    .line 586
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 414
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 415
    iget-boolean v0, p0, Lc8/jwb;->mUserTrackEnable:Z

    if-eqz v0, :cond_0

    .line 416
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTTracker;->skipPage(Ljava/lang/Object;)V

    .line 419
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->onBackPressed()Z

    move-result v0

    .line 567
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 379
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 380
    invoke-direct {p0}, Lc8/jwb;->parseArgsFromActivity()V

    .line 381
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    new-instance v1, Lc8/dwb;

    invoke-direct {v1, p0}, Lc8/dwb;-><init>(Lc8/jwb;)V

    iput-object v1, p0, Lc8/jwb;->mRefreshReceiver:Landroid/content/BroadcastReceiver;

    .line 388
    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lc8/jwb;->mRefreshReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "DEBUG_INSTANCE_REFRESH"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 391
    :cond_0
    :try_start_0
    new-instance v1, Lc8/ewb;

    invoke-direct {v1, p0}, Lc8/ewb;-><init>(Lc8/jwb;)V

    iput-object v1, p0, Lc8/jwb;->mReloadReceiver:Landroid/content/BroadcastReceiver;

    .line 399
    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lc8/jwb;->mReloadReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "INSTANCE_RELOAD"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lc8/jwb;->setHasOptionsMenu(Z)V

    .line 405
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 557
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 558
    iget-object v0, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0, p1}, Lc8/nVf;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 561
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, -0x2

    const/4 v5, -0x1

    .line 464
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lc8/jwb;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 465
    .local v1, "frame":Landroid/widget/FrameLayout;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lc8/jwb;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 468
    .local v2, "pb":Landroid/widget/ProgressBar;
    iput-object v2, p0, Lc8/jwb;->mProgressBar:Landroid/widget/ProgressBar;

    .line 469
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 471
    .local v3, "pbLp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 472
    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    new-instance v0, Landroid/view/ViewStub;

    invoke-virtual {p0}, Lc8/jwb;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    .line 475
    .local v0, "error":Landroid/view/ViewStub;
    sget v4, Lcom/youku/phone/R$id;->wx_fragment_error:I

    invoke-virtual {v0, v4}, Landroid/view/ViewStub;->setId(I)V

    .line 476
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    sget v4, Lcom/youku/phone/R$layout;->weex_content_error:I

    invoke-virtual {v0, v4}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 479
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 480
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 482
    iput-object v1, p0, Lc8/jwb;->mRootView:Landroid/widget/FrameLayout;

    .line 484
    return-object v1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 537
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 538
    iget-object v0, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->onActivityDestroy()V

    .line 541
    :cond_0
    iget-object v0, p0, Lc8/jwb;->mWXErrorController:Lc8/cwb;

    if-eqz v0, :cond_1

    .line 542
    iget-object v0, p0, Lc8/jwb;->mWXErrorController:Lc8/cwb;

    invoke-virtual {v0}, Lc8/cwb;->destroy()V

    .line 544
    :cond_1
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/jwb;->mRefreshReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 545
    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lc8/jwb;->mRefreshReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 546
    iput-object v2, p0, Lc8/jwb;->mRefreshReceiver:Landroid/content/BroadcastReceiver;

    .line 549
    :cond_2
    iget-object v0, p0, Lc8/jwb;->mReloadReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 550
    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lc8/jwb;->mReloadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 551
    iput-object v2, p0, Lc8/jwb;->mReloadReceiver:Landroid/content/BroadcastReceiver;

    .line 553
    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 505
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 506
    invoke-direct {p0}, Lc8/jwb;->pageDisappear()V

    .line 507
    iget-object v1, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    if-eqz v1, :cond_1

    .line 508
    iget-object v1, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getContainerView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lc8/jwb;->isGetDeepViewLayer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    iget-object v1, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getContainerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lc8/jwb;->getMaxDeepViewLayer(Landroid/view/ViewGroup;)I

    move-result v0

    .line 510
    .local v0, "deep":I
    iget-object v1, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1, v0}, Lc8/nVf;->setMaxDeepLayer(I)V

    .line 512
    .end local v0    # "deep":I
    :cond_0
    iget-object v1, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->onActivityPause()V

    .line 514
    :cond_1
    const-string/jumbo v1, ""

    invoke-static {v1}, Lc8/Bob;->setCurCrashUrl(Ljava/lang/String;)V

    .line 515
    iget-boolean v1, p0, Lc8/jwb;->mNoAnimated:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 516
    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 518
    :cond_2
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 572
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 573
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "actionRequestPermissionsResult"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 574
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "requestCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 575
    const-string/jumbo v1, "permissions"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    const-string/jumbo v1, "grantResults"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 577
    invoke-virtual {p0}, Lc8/jwb;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 578
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 522
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 523
    invoke-direct {p0}, Lc8/jwb;->showFullScreenSystemStatusbar()V

    .line 524
    invoke-direct {p0}, Lc8/jwb;->pageAppear()V

    .line 526
    iget-object v0, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->onActivityResume()V

    .line 529
    :cond_0
    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lc8/jwb;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc8/jwb;->motuUploadUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lc8/jwb;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    invoke-virtual {p0}, Lc8/jwb;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "activity"

    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/jwb;->motuUploadUrl:Ljava/lang/String;

    .line 532
    :cond_1
    iget-object v0, p0, Lc8/jwb;->motuUploadUrl:Ljava/lang/String;

    invoke-static {v0}, Lc8/Bob;->setCurCrashUrl(Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 489
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 490
    iget-object v0, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->onActivityStart()V

    .line 493
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 497
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 498
    iget-object v0, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->onActivityStop()V

    .line 501
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 409
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 410
    return-void
.end method

.method public onWXException(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "errCode"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 847
    return-void
.end method

.method protected onWXViewCreated(Lc8/nVf;Landroid/view/View;)V
    .locals 0
    .param p1, "wxsdkInstance"    # Lc8/nVf;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 844
    return-void
.end method

.method public reload()V
    .locals 5

    .prologue
    .line 239
    :try_start_0
    invoke-virtual {p0}, Lc8/jwb;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lc8/jwb;->getOriginalRenderUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    invoke-direct {p0}, Lc8/jwb;->destroySDKInstance()V

    .line 242
    iget-object v1, p0, Lc8/jwb;->mCustomOpt:Ljava/util/Map;

    iget-object v2, p0, Lc8/jwb;->mInitData:Ljava/lang/String;

    invoke-virtual {p0}, Lc8/jwb;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lc8/jwb;->getOriginalRenderUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lc8/jwb;->startRenderByUrl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Lc8/jwb;->utForRefreshWeexPage()V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v1, p0, Lc8/jwb;->mTemplate:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    invoke-direct {p0}, Lc8/jwb;->destroySDKInstance()V

    .line 246
    iget-object v1, p0, Lc8/jwb;->mTemplate:Ljava/lang/String;

    iget-object v2, p0, Lc8/jwb;->mCustomOpt:Ljava/util/Map;

    iget-object v3, p0, Lc8/jwb;->mInitData:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lc8/jwb;->startRenderByTemplate(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lc8/jwb;->utForRefreshWeexPage()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected render(Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .param p2, "initData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 342
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    .line 343
    invoke-virtual {p0}, Lc8/jwb;->getRenderUrl()Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-virtual {p0}, Lc8/jwb;->getRenderUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    move-object v3, p1

    move-object v4, p2

    .line 342
    invoke-virtual/range {v0 .. v5}, Lc8/nVf;->renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    .line 348
    return-void
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "bundleUrl"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 257
    invoke-direct {p0}, Lc8/jwb;->destroySDKInstance()V

    .line 258
    iget-object v0, p0, Lc8/jwb;->mCustomOpt:Ljava/util/Map;

    iget-object v1, p0, Lc8/jwb;->mInitData:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1, p2}, Lc8/jwb;->startRenderByUrl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-direct {p0}, Lc8/jwb;->utForRefreshWeexPage()V

    .line 260
    return-void
.end method

.method public setNestedInterceptListener(Lc8/kVf;)V
    .locals 0
    .param p1, "listener"    # Lc8/kVf;

    .prologue
    .line 194
    iput-object p1, p0, Lc8/jwb;->mNestedInterceptListener:Lc8/kVf;

    .line 195
    return-void
.end method

.method public setRenderListener(Lc8/hwb;)V
    .locals 0
    .param p1, "listener"    # Lc8/hwb;

    .prologue
    .line 190
    iput-object p1, p0, Lc8/jwb;->mRenderListener:Lc8/hwb;

    .line 191
    return-void
.end method

.method public setUserTrackEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 186
    iput-boolean p1, p0, Lc8/jwb;->mUserTrackEnable:Z

    .line 187
    return-void
.end method

.method public startRender(Ljava/lang/String;)V
    .locals 1
    .param p1, "template"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0, p1, v0, v0}, Lc8/jwb;->startRenderByTemplate(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public startRender(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p1, "template"    # Ljava/lang/String;
    .param p3, "initData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 204
    .local p2, "customOpt":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2, p3}, Lc8/jwb;->startRenderByTemplate(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method protected startRenderByTemplate(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p1, "template"    # Ljava/lang/String;
    .param p3, "initData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 299
    .local p2, "customOpt":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lc8/jwb;->showProgressBar(Z)V

    .line 301
    invoke-virtual {p0}, Lc8/jwb;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/jwb;->initSDKInstance(Landroid/content/Context;)V

    .line 302
    iput-object p2, p0, Lc8/jwb;->mCustomOpt:Ljava/util/Map;

    .line 303
    iput-object p3, p0, Lc8/jwb;->mInitData:Ljava/lang/String;

    .line 304
    iput-object p1, p0, Lc8/jwb;->mTemplate:Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0, p1, p2, p3}, Lc8/nVf;->render(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 307
    :cond_0
    return-void
.end method

.method protected startRenderByUrl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p2, "initData"    # Ljava/lang/String;
    .param p3, "bundleUrl"    # Ljava/lang/String;
    .param p4, "renderUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "customOpt":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 311
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lc8/jwb;->showProgressBar(Z)V

    .line 312
    invoke-virtual {p0}, Lc8/jwb;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lc8/jwb;->initSDKInstance(Landroid/content/Context;)V

    .line 313
    invoke-virtual {p0, p3, p4}, Lc8/jwb;->transformUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lc8/jwb;->getUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/jwb;->motuUploadUrl:Ljava/lang/String;

    .line 315
    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 316
    invoke-virtual {p0}, Lc8/jwb;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "activity"

    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/jwb;->motuUploadUrl:Ljava/lang/String;

    .line 318
    :cond_0
    iget-object v4, p0, Lc8/jwb;->motuUploadUrl:Ljava/lang/String;

    invoke-static {v4}, Lc8/Bob;->setCurCrashUrl(Ljava/lang/String;)V

    .line 320
    :try_start_0
    invoke-virtual {p0}, Lc8/jwb;->getOriginalUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lc8/jwb;->mWXSDKInstance:Lc8/nVf;

    invoke-static {v4, v5}, Lc8/Dxb;->preload(Ljava/lang/String;Lc8/nVf;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 324
    :goto_0
    iput-object p1, p0, Lc8/jwb;->mCustomOpt:Ljava/util/Map;

    .line 325
    iput-object p2, p0, Lc8/jwb;->mInitData:Ljava/lang/String;

    .line 326
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 327
    .local v2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "bundleUrl"

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .end local p4    # "renderUrl":Ljava/lang/String;
    :goto_1
    invoke-interface {v2, v4, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    if-eqz p1, :cond_2

    .line 329
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 330
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 321
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p4    # "renderUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    move-object p4, p3

    .line 327
    goto :goto_1

    .line 333
    .end local p4    # "renderUrl":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lc8/jwb;->mUserTrackEnable:Z

    if-eqz v4, :cond_3

    .line 334
    invoke-virtual {p0}, Lc8/jwb;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, "pageName":Ljava/lang/String;
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v4

    invoke-virtual {p0}, Lc8/jwb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/ut/mini/UTTracker;->updatePageName(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    .end local v3    # "pageName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v2, p2}, Lc8/jwb;->render(Ljava/util/Map;Ljava/lang/String;)V

    .line 339
    .end local v2    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    return-void
.end method

.method public startRenderWXByUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "bundleUrl"    # Ljava/lang/String;
    .param p2, "renderUrl"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lc8/jwb;->mCustomOpt:Ljava/util/Map;

    iget-object v1, p0, Lc8/jwb;->mInitData:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1, p2}, Lc8/jwb;->startRenderByUrl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public startRenderWXByUrl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "initData"    # Ljava/lang/String;
    .param p3, "bundleUrl"    # Ljava/lang/String;
    .param p4, "renderUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 214
    .local p1, "customOpt":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lc8/jwb;->startRenderByUrl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method protected transformUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bundleUrl"    # Ljava/lang/String;
    .param p2, "renderUrl"    # Ljava/lang/String;

    .prologue
    .line 351
    iput-object p1, p0, Lc8/jwb;->mBundleUrl:Ljava/lang/String;

    .line 352
    iput-object p2, p0, Lc8/jwb;->mRenderUrl:Ljava/lang/String;

    .line 353
    return-void
.end method
