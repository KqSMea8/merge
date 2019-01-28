.class public abstract Lc8/Sj;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Tj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SubscriptionCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Rj;,
        Lc8/Qj;
    }
.end annotation


# instance fields
.field private final mSubscriptionCallbackObj:Ljava/lang/Object;

.field mSubscriptionRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/Pj;",
            ">;"
        }
    .end annotation
.end field

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    invoke-static {}, Lc8/zl;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    :cond_0
    new-instance v0, Lc8/Rj;

    invoke-direct {v0, p0}, Lc8/Rj;-><init>(Lc8/Sj;)V

    .line 606
    invoke-static {v0}, Lc8/fk;->createSubscriptionCallback(Lc8/dk;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/Sj;->mSubscriptionCallbackObj:Ljava/lang/Object;

    .line 607
    iput-object v2, p0, Lc8/Sj;->mToken:Landroid/os/IBinder;

    .line 616
    :goto_0
    return-void

    .line 608
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 609
    new-instance v0, Lc8/Qj;

    invoke-direct {v0, p0}, Lc8/Qj;-><init>(Lc8/Sj;)V

    .line 610
    invoke-static {v0}, Lc8/Zj;->createSubscriptionCallback(Lc8/Xj;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/Sj;->mSubscriptionCallbackObj:Ljava/lang/Object;

    .line 611
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lc8/Sj;->mToken:Landroid/os/IBinder;

    goto :goto_0

    .line 613
    :cond_2
    iput-object v2, p0, Lc8/Sj;->mSubscriptionCallbackObj:Ljava/lang/Object;

    .line 614
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lc8/Sj;->mToken:Landroid/os/IBinder;

    goto :goto_0
.end method

.method static synthetic access$000(Lc8/Sj;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lc8/Sj;

    .prologue
    .line 598
    iget-object v0, p0, Lc8/Sj;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$100(Lc8/Sj;Lc8/Pj;)V
    .locals 0
    .param p0, "x0"    # Lc8/Sj;
    .param p1, "x1"    # Lc8/Pj;

    .prologue
    .line 598
    invoke-direct {p0, p1}, Lc8/Sj;->setSubscription(Lc8/Pj;)V

    return-void
.end method

.method static synthetic access$200(Lc8/Sj;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lc8/Sj;

    .prologue
    .line 598
    iget-object v0, p0, Lc8/Sj;->mSubscriptionCallbackObj:Ljava/lang/Object;

    return-object v0
.end method

.method private setSubscription(Lc8/Pj;)V
    .locals 1
    .param p1, "subscription"    # Lc8/Pj;

    .prologue
    .line 668
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/Sj;->mSubscriptionRef:Ljava/lang/ref/WeakReference;

    .line 669
    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 625
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    return-void
.end method

.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 638
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 650
    return-void
.end method

.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 665
    return-void
.end method
