.class public Lc8/DHf;
.super Ljava/lang/Object;
.source "TLogInitializer.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/EHf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LifeCycleCallBack"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 474
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 479
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 465
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 466
    invoke-static {}, Lc8/iIf;->getInstance()Lc8/iIf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/iIf;->flushBuffer()Z

    .line 467
    invoke-static {}, Lc8/eIf;->getInstance()Lc8/eIf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/eIf;->flushBuffer()V

    .line 469
    :cond_0
    return-void
.end method
