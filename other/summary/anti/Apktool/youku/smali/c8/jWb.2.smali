.class public Lc8/jWb;
.super Lc8/oWb;
.source "GodeyeJointPointCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/mWb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GodeyeJointPointCallbackWithStartHook"
.end annotation


# instance fields
.field private final mGodeyeJointPointCallback:Lc8/oWb;


# direct methods
.method public constructor <init>(Lc8/oWb;)V
    .locals 0
    .param p1, "godeyeJointPointCallback"    # Lc8/oWb;

    .prologue
    .line 463
    invoke-direct {p0}, Lc8/oWb;-><init>()V

    .line 464
    iput-object p1, p0, Lc8/jWb;->mGodeyeJointPointCallback:Lc8/oWb;

    .line 465
    return-void
.end method


# virtual methods
.method public doCallback()V
    .locals 5

    .prologue
    .line 474
    new-instance v0, Lc8/BWb;

    invoke-direct {v0}, Lc8/BWb;-><init>()V

    invoke-static {v0}, Lc8/msf;->registerSmoothDetailListener(Lc8/lsf;)Z

    .line 475
    iget-object v0, p0, Lc8/jWb;->mGodeyeJointPointCallback:Lc8/oWb;

    invoke-virtual {v0}, Lc8/oWb;->doCallback()V

    .line 476
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v0

    new-instance v1, Lc8/WWb;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "global_start"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lc8/WWb;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lc8/fWb;->addClientEvent(Lc8/WWb;)V

    .line 477
    return-void
.end method

.method public isDisposable()Z
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lc8/jWb;->mGodeyeJointPointCallback:Lc8/oWb;

    invoke-virtual {v0}, Lc8/oWb;->isDisposable()Z

    move-result v0

    return v0
.end method
