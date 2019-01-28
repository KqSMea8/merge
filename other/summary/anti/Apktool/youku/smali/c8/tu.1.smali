.class public Lc8/tu;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/wu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutChunkResult"
.end annotation


# instance fields
.field public mConsumed:I

.field public mFinished:Z

.field public mFocusable:Z

.field public mIgnoreConsumed:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 2468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method resetInternal()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2475
    iput v0, p0, Lc8/tu;->mConsumed:I

    .line 2476
    iput-boolean v0, p0, Lc8/tu;->mFinished:Z

    .line 2477
    iput-boolean v0, p0, Lc8/tu;->mIgnoreConsumed:Z

    .line 2478
    iput-boolean v0, p0, Lc8/tu;->mFocusable:Z

    .line 2479
    return-void
.end method
