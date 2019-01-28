.class public Lc8/iWb;
.super Landroid/content/BroadcastReceiver;
.source "GodeyeJointPointCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/mWb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GodeyeBroadcastReceiver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGodeyeJointPointCallback:Lc8/oWb;


# direct methods
.method constructor <init>(Landroid/content/Context;Lc8/oWb;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "godeyeJointPointCallback"    # Lc8/oWb;

    .prologue
    .line 307
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 308
    iput-object p1, p0, Lc8/iWb;->mContext:Landroid/content/Context;

    .line 309
    iput-object p2, p0, Lc8/iWb;->mGodeyeJointPointCallback:Lc8/oWb;

    .line 310
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 314
    iget-object v0, p0, Lc8/iWb;->mGodeyeJointPointCallback:Lc8/oWb;

    invoke-virtual {v0}, Lc8/oWb;->doCallback()V

    .line 315
    iget-object v0, p0, Lc8/iWb;->mGodeyeJointPointCallback:Lc8/oWb;

    invoke-virtual {v0}, Lc8/oWb;->isDisposable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lc8/iWb;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 318
    :cond_0
    return-void
.end method
