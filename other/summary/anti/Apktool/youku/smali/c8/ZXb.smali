.class public Lc8/ZXb;
.super Ljava/lang/Object;
.source "InnerAppLifeCycleCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/aYb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityCallbackHooker"
.end annotation


# instance fields
.field mActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field mProxyWindowCB:Lc8/bYb;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Lc8/bYb;)V
    .locals 0
    .param p2, "proxyWindowCB"    # Lc8/bYb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Lc8/bYb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "activityWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lc8/ZXb;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 154
    iput-object p2, p0, Lc8/ZXb;->mProxyWindowCB:Lc8/bYb;

    .line 155
    return-void
.end method


# virtual methods
.method public bind()V
    .locals 4

    .prologue
    .line 158
    iget-object v2, p0, Lc8/ZXb;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-static {v2}, Lcom/alibaba/poplayer/utils/Utils;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 159
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 161
    .local v1, "callback":Landroid/view/Window$Callback;
    instance-of v2, v1, Lc8/bYb;

    if-nez v2, :cond_0

    .line 162
    iget-object v2, p0, Lc8/ZXb;->mProxyWindowCB:Lc8/bYb;

    iput-object v1, v2, Lc8/bYb;->localCallback:Landroid/view/Window$Callback;

    .line 163
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Lc8/ZXb;->mProxyWindowCB:Lc8/bYb;

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 166
    .end local v1    # "callback":Landroid/view/Window$Callback;
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 169
    iget-object v1, p0, Lc8/ZXb;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-static {v1}, Lcom/alibaba/poplayer/utils/Utils;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 170
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lc8/ZXb;->mProxyWindowCB:Lc8/bYb;

    iget-object v2, v2, Lc8/bYb;->localCallback:Landroid/view/Window$Callback;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 173
    :cond_0
    return-void
.end method
