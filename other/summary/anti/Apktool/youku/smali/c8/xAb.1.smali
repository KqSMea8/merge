.class public Lc8/xAb;
.super Landroid/content/BroadcastReceiver;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/yAb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkStatusReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/vAb;)V
    .locals 0
    .param p1, "x0"    # Lc8/vAb;

    .prologue
    .line 253
    invoke-direct {p0}, Lc8/xAb;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 257
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v0

    invoke-static {}, Lc8/yAb;->access$200()Lc8/wAb;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc8/wAb;->setContext(Landroid/content/Context;)Lc8/wAb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/eCb;->submit(Ljava/lang/Runnable;)V

    .line 258
    return-void
.end method
