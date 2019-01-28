.class public Lc8/lWb;
.super Lc8/oWb;
.source "GodeyeJointPointCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/mWb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GodeyeStartJointPointCallbackWithDelayStop"
.end annotation


# instance fields
.field private final mDelayStopMilliSeconds:J

.field private final mGodeyeJointPointCallbackStart:Lc8/oWb;

.field private final mGodeyeJointPointCallbackStop:Lc8/oWb;


# direct methods
.method constructor <init>(JLc8/oWb;Lc8/oWb;)V
    .locals 1
    .param p1, "delayStopMilliSeconds"    # J
    .param p3, "godeyeJointPointCallbackStart"    # Lc8/oWb;
    .param p4, "godeyeJointPointCallbackStop"    # Lc8/oWb;

    .prologue
    .line 423
    invoke-direct {p0}, Lc8/oWb;-><init>()V

    .line 424
    iput-wide p1, p0, Lc8/lWb;->mDelayStopMilliSeconds:J

    .line 425
    iput-object p3, p0, Lc8/lWb;->mGodeyeJointPointCallbackStart:Lc8/oWb;

    .line 426
    iput-object p4, p0, Lc8/lWb;->mGodeyeJointPointCallbackStop:Lc8/oWb;

    .line 427
    return-void
.end method


# virtual methods
.method public doCallback()V
    .locals 4

    .prologue
    .line 431
    iget-object v0, p0, Lc8/lWb;->mGodeyeJointPointCallbackStart:Lc8/oWb;

    invoke-virtual {v0}, Lc8/oWb;->doCallback()V

    .line 432
    iget-wide v0, p0, Lc8/lWb;->mDelayStopMilliSeconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 433
    new-instance v0, Lc8/gWb;

    iget-object v1, p0, Lc8/lWb;->mGodeyeJointPointCallbackStop:Lc8/oWb;

    invoke-direct {v0, v1}, Lc8/gWb;-><init>(Lc8/oWb;)V

    const/4 v1, 0x0

    iget-wide v2, p0, Lc8/lWb;->mDelayStopMilliSeconds:J

    invoke-virtual {v0, v1, v2, v3}, Lc8/gWb;->sendEmptyMessageDelayed(IJ)Z

    .line 435
    :cond_0
    return-void
.end method
