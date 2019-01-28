.class public abstract Lc8/lWc;
.super Ljava/lang/Object;
.source "ImageWorker.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mExitTasksEarly:Z

.field private mFadeInBitmap:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/lWc;->mFadeInBitmap:Z

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/lWc;->mExitTasksEarly:Z

    .line 74
    iput-object p1, p0, Lc8/lWc;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method
