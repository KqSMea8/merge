.class public final Lc8/aWo;
.super Landroid/content/BroadcastReceiver;
.source "YKWXSDKEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/bWo;->setupDevtools(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 145
    invoke-static {p2}, Lc8/bWo;->access$000(Landroid/content/Intent;)V

    .line 146
    return-void
.end method
