.class public Lc8/Zvb;
.super Ljava/lang/Object;
.source "ConfiguredWeexPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/awb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UrlInfo"
.end annotation


# instance fields
.field mNewBundleUrl:Ljava/lang/String;

.field mNewRenderUrl:Ljava/lang/String;

.field mOldBundleUrl:Ljava/lang/String;

.field mOldRenderUrl:Ljava/lang/String;

.field mPureRenderUrl:Ljava/lang/String;

.field final synthetic this$0:Lc8/awb;


# direct methods
.method private constructor <init>(Lc8/awb;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lc8/Zvb;->this$0:Lc8/awb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/awb;Lc8/Vvb;)V
    .locals 0
    .param p1, "x0"    # Lc8/awb;
    .param p2, "x1"    # Lc8/Vvb;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lc8/Zvb;-><init>(Lc8/awb;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lc8/Zvb;->mOldRenderUrl:Ljava/lang/String;

    .line 136
    iput-object v0, p0, Lc8/Zvb;->mOldRenderUrl:Ljava/lang/String;

    .line 137
    iput-object v0, p0, Lc8/Zvb;->mNewBundleUrl:Ljava/lang/String;

    .line 138
    iput-object v0, p0, Lc8/Zvb;->mNewRenderUrl:Ljava/lang/String;

    .line 139
    iput-object v0, p0, Lc8/Zvb;->mPureRenderUrl:Ljava/lang/String;

    .line 140
    return-void
.end method

.method getBundleUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lc8/Zvb;->mNewBundleUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Zvb;->mOldBundleUrl:Ljava/lang/String;

    .line 125
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/Zvb;->mNewBundleUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method getRenderUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lc8/Zvb;->mNewRenderUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Zvb;->mOldRenderUrl:Ljava/lang/String;

    .line 131
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/Zvb;->mNewRenderUrl:Ljava/lang/String;

    goto :goto_0
.end method
