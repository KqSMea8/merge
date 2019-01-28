.class public Lc8/Erf;
.super Ljava/lang/Object;
.source "ActivityLifecycleCallback.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Grf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnPreDrawListener"
.end annotation


# instance fields
.field mIndex:I

.field final synthetic this$0:Lc8/Grf;


# direct methods
.method public constructor <init>(Lc8/Grf;I)V
    .locals 0
    .param p2, "index"    # I

    .prologue
    .line 598
    iput-object p1, p0, Lc8/Erf;->this$0:Lc8/Grf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    iput p2, p0, Lc8/Erf;->mIndex:I

    .line 600
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 604
    iget-object v2, p0, Lc8/Erf;->this$0:Lc8/Grf;

    iget v2, v2, Lc8/Grf;->mCreateIndex:I

    iget v3, p0, Lc8/Erf;->mIndex:I

    if-eq v2, v3, :cond_1

    .line 611
    :cond_0
    :goto_0
    return v6

    .line 607
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long v0, v2, v4

    .line 608
    .local v0, "curTime":J
    iget-object v2, p0, Lc8/Erf;->this$0:Lc8/Grf;

    iget-object v2, v2, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    if-eqz v2, :cond_0

    .line 609
    iget-object v2, p0, Lc8/Erf;->this$0:Lc8/Grf;

    iget-object v2, v2, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    invoke-virtual {v2, v0, v1}, Lc8/tsf;->onDraw(J)V

    goto :goto_0
.end method
