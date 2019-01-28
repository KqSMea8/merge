.class public Lc8/Ief;
.super Ljava/lang/Object;
.source "BundleWatch.java"

# interfaces
.implements Lc8/Teq;


# static fields
.field static final BEFORE_INSTALL:I = 0x2766

.field static final BEFORE_STARTED:I = 0x2767


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startBundleWatch()V
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v0

    new-instance v1, Lc8/Ief;

    invoke-direct {v1}, Lc8/Ief;-><init>()V

    invoke-virtual {v0, v1}, Lc8/dy;->addBundleListener(Lc8/Teq;)V

    .line 35
    return-void
.end method


# virtual methods
.method public bundleChanged(Lorg/osgi/framework/BundleEvent;)V
    .locals 4
    .param p1, "bundleEvent"    # Lorg/osgi/framework/BundleEvent;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 19
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/osgi/framework/BundleEvent;->getBundle()Lc8/Seq;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {p1}, Lorg/osgi/framework/BundleEvent;->getType()I

    move-result v0

    .line 21
    .local v0, "type":I
    if-ne v0, v2, :cond_1

    .line 22
    invoke-virtual {p1}, Lorg/osgi/framework/BundleEvent;->getBundle()Lc8/Seq;

    move-result-object v1

    invoke-interface {v1}, Lc8/Seq;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lc8/msf;->onInstallBundler(Ljava/lang/String;I)V

    .line 31
    .end local v0    # "type":I
    :cond_0
    :goto_0
    return-void

    .line 23
    .restart local v0    # "type":I
    :cond_1
    const/16 v1, 0x2766

    if-ne v0, v1, :cond_2

    .line 24
    invoke-virtual {p1}, Lorg/osgi/framework/BundleEvent;->getBundle()Lc8/Seq;

    move-result-object v1

    invoke-interface {v1}, Lc8/Seq;->getLocation()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lc8/msf;->onInstallBundler(Ljava/lang/String;I)V

    goto :goto_0

    .line 25
    :cond_2
    if-ne v0, v3, :cond_3

    .line 26
    invoke-virtual {p1}, Lorg/osgi/framework/BundleEvent;->getBundle()Lc8/Seq;

    move-result-object v1

    invoke-interface {v1}, Lc8/Seq;->getLocation()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lc8/msf;->onInstallBundler(Ljava/lang/String;I)V

    goto :goto_0

    .line 27
    :cond_3
    const/16 v1, 0x2767

    if-ne v0, v1, :cond_0

    .line 28
    invoke-virtual {p1}, Lorg/osgi/framework/BundleEvent;->getBundle()Lc8/Seq;

    move-result-object v1

    invoke-interface {v1}, Lc8/Seq;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lc8/msf;->onInstallBundler(Ljava/lang/String;I)V

    goto :goto_0
.end method
