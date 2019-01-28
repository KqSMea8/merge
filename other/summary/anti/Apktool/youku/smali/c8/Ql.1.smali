.class public Lc8/Ql;
.super Lc8/Pl;
.source "PrintHelperApi24.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation build Lc8/N;
    value = 0x18
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 30
    invoke-direct {p0, p1}, Lc8/Pl;-><init>(Landroid/content/Context;)V

    .line 32
    iput-boolean v0, p0, Lc8/Ql;->mIsMinMarginsHandlingCorrect:Z

    .line 33
    iput-boolean v0, p0, Lc8/Ql;->mPrintActivityRespectsOrientation:Z

    .line 34
    return-void
.end method
