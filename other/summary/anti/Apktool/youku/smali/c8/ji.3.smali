.class public Lc8/ji;
.super Landroid/support/v4/app/ActivityOptionsCompat;
.source "ActivityOptionsCompat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation build Lc8/N;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityOptionsImpl24"
.end annotation


# instance fields
.field private final mImpl:Lc8/li;


# direct methods
.method public constructor <init>(Lc8/li;)V
    .locals 0
    .param p1, "impl"    # Lc8/li;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 392
    invoke-direct {p0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    .line 393
    iput-object p1, p0, Lc8/ji;->mImpl:Lc8/li;

    .line 394
    return-void
.end method


# virtual methods
.method public getLaunchBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lc8/ji;->mImpl:Lc8/li;

    invoke-virtual {v0}, Lc8/li;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "receiver"    # Landroid/app/PendingIntent;

    .prologue
    .line 422
    iget-object v0, p0, Lc8/ji;->mImpl:Lc8/li;

    invoke-virtual {v0, p1}, Lc8/li;->requestUsageTimeReport(Landroid/app/PendingIntent;)V

    .line 423
    return-void
.end method

.method public setLaunchBounds(Landroid/graphics/Rect;)Landroid/support/v4/app/ActivityOptionsCompat;
    .locals 2
    .param p1, "screenSpacePixelRect"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 412
    new-instance v0, Lc8/ji;

    iget-object v1, p0, Lc8/ji;->mImpl:Lc8/li;

    invoke-virtual {v1, p1}, Lc8/li;->setLaunchBounds(Landroid/graphics/Rect;)Lc8/li;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/ji;-><init>(Lc8/li;)V

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lc8/ji;->mImpl:Lc8/li;

    invoke-virtual {v0}, Lc8/li;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/support/v4/app/ActivityOptionsCompat;)V
    .locals 3
    .param p1, "otherOptions"    # Landroid/support/v4/app/ActivityOptionsCompat;

    .prologue
    .line 403
    instance-of v1, p1, Lc8/ji;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 405
    check-cast v0, Lc8/ji;

    .line 406
    .local v0, "otherImpl":Lc8/ji;
    iget-object v1, p0, Lc8/ji;->mImpl:Lc8/li;

    iget-object v2, v0, Lc8/ji;->mImpl:Lc8/li;

    invoke-virtual {v1, v2}, Lc8/li;->update(Lc8/li;)V

    .line 408
    .end local v0    # "otherImpl":Lc8/ji;
    :cond_0
    return-void
.end method
