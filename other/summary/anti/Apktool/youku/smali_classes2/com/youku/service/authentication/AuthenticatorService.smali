.class public Lcom/youku/service/authentication/AuthenticatorService;
.super Landroid/app/Service;
.source "AuthenticatorService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 13
    new-instance v0, Lc8/qdn;

    invoke-direct {v0, p0}, Lc8/qdn;-><init>(Landroid/content/Context;)V

    .line 14
    .local v0, "authenticator":Lc8/qdn;
    invoke-virtual {v0}, Lc8/qdn;->getIBinder()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method
