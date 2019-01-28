.class public Lc8/wAb;
.super Ljava/lang/Object;
.source "NetworkUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/yAb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetWorkStatusChecker"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/vAb;)V
    .locals 0
    .param p1, "x0"    # Lc8/vAb;

    .prologue
    .line 261
    invoke-direct {p0}, Lc8/wAb;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lc8/wAb;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lc8/wAb;->context:Landroid/content/Context;

    invoke-static {v0}, Lc8/yAb;->access$300(Landroid/content/Context;)V

    .line 275
    iget-object v0, p0, Lc8/wAb;->context:Landroid/content/Context;

    invoke-static {v0}, Lc8/fCb;->updateUTMCDeviceNetworkStatus(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)Lc8/wAb;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 265
    iput-object p1, p0, Lc8/wAb;->context:Landroid/content/Context;

    .line 266
    return-object p0
.end method
