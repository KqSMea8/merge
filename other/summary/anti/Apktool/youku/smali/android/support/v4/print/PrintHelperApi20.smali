.class public Landroid/support/v4/print/PrintHelperApi20;
.super Landroid/support/v4/print/PrintHelperKitkat;
.source "PrintHelperApi20.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation

.annotation build Lc8/N;
    value = 0x14
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/support/v4/print/PrintHelperKitkat;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/print/PrintHelperApi20;->mPrintActivityRespectsOrientation:Z

    .line 36
    return-void
.end method
