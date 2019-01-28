.class public Lc8/gWb;
.super Landroid/os/Handler;
.source "GodeyeJointPointCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/mWb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DelayStopHandler"
.end annotation


# instance fields
.field private final mGodeyeJointPointCallback:Lc8/oWb;


# direct methods
.method constructor <init>(Lc8/oWb;)V
    .locals 0
    .param p1, "godeyeJointPointCallback"    # Lc8/oWb;

    .prologue
    .line 445
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 446
    iput-object p1, p0, Lc8/gWb;->mGodeyeJointPointCallback:Lc8/oWb;

    .line 447
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 451
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 452
    iget-object v0, p0, Lc8/gWb;->mGodeyeJointPointCallback:Lc8/oWb;

    invoke-virtual {v0}, Lc8/oWb;->doCallback()V

    .line 453
    return-void
.end method
