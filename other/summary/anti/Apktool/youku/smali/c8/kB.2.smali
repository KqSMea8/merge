.class public final Lc8/kB;
.super Lc8/FB;
.source "WindVaneSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/mB;->initConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lc8/FB;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/lang/String;Lc8/LB;)V
    .locals 2
    .param p1, "defaultUrl"    # Ljava/lang/String;
    .param p2, "callback"    # Lc8/LB;

    .prologue
    .line 120
    invoke-static {}, Lc8/OB;->getInstance()Lc8/OB;

    move-result-object v0

    invoke-virtual {p0}, Lc8/kB;->getSnapshotN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Lc8/OB;->updateDomainRule(Lc8/LB;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method
