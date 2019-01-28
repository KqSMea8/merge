.class public Lc8/ii;
.super Landroid/support/v4/app/ActivityOptionsCompat;
.source "ActivityOptionsCompat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation build Lc8/N;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityOptionsImpl23"
.end annotation


# instance fields
.field private final mImpl:Lc8/ki;


# direct methods
.method public constructor <init>(Lc8/ki;)V
    .locals 0
    .param p1, "impl"    # Lc8/ki;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 363
    invoke-direct {p0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    .line 364
    iput-object p1, p0, Lc8/ii;->mImpl:Lc8/ki;

    .line 365
    return-void
.end method


# virtual methods
.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "receiver"    # Landroid/app/PendingIntent;

    .prologue
    .line 383
    iget-object v0, p0, Lc8/ii;->mImpl:Lc8/ki;

    invoke-virtual {v0, p1}, Lc8/ki;->requestUsageTimeReport(Landroid/app/PendingIntent;)V

    .line 384
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lc8/ii;->mImpl:Lc8/ki;

    invoke-virtual {v0}, Lc8/ki;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/support/v4/app/ActivityOptionsCompat;)V
    .locals 3
    .param p1, "otherOptions"    # Landroid/support/v4/app/ActivityOptionsCompat;

    .prologue
    .line 374
    instance-of v1, p1, Lc8/ii;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 376
    check-cast v0, Lc8/ii;

    .line 377
    .local v0, "otherImpl":Lc8/ii;
    iget-object v1, p0, Lc8/ii;->mImpl:Lc8/ki;

    iget-object v2, v0, Lc8/ii;->mImpl:Lc8/ki;

    invoke-virtual {v1, v2}, Lc8/ki;->update(Lc8/ki;)V

    .line 379
    .end local v0    # "otherImpl":Lc8/ii;
    :cond_0
    return-void
.end method
