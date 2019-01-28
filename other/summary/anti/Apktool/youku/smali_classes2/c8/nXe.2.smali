.class public abstract Lc8/nXe;
.super Lc8/RWp;
.source "TaobaoBaseIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lc8/RWp;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract onError(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected abstract onMessage(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract onRegistered(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected abstract onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected onUserCommand(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 20
    return-void
.end method
