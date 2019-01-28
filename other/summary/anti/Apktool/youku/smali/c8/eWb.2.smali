.class public Lc8/eWb;
.super Ljava/lang/Object;
.source "Godeye.java"

# interfaces
.implements Lc8/bsf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/fWb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnAppStartedListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/dWb;)V
    .locals 0
    .param p1, "x0"    # Lc8/dWb;

    .prologue
    .line 300
    invoke-direct {p0}, Lc8/eWb;-><init>()V

    return-void
.end method


# virtual methods
.method public OnAccurateBootFinished(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;I)V
    .locals 2
    .param p1, "onLineStat"    # Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;
    .param p2, "i"    # I

    .prologue
    .line 307
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 308
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/fWb;->defaultGodeyeJointPointCenter()Lc8/mWb;

    move-result-object v0

    const-string/jumbo v1, "event.launchFinished"

    invoke-virtual {v0, v1}, Lc8/mWb;->invokeCustomEventJointPointHandlersIfExist(Ljava/lang/String;)V

    .line 310
    :cond_0
    return-void
.end method
