.class public Lcom/youku/phone/aidl/HomePageAidlServiceS;
.super Landroid/app/Service;
.source "HomePageAidlServiceS.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lc8/YLj;

    invoke-direct {v0}, Lc8/YLj;-><init>()V

    invoke-virtual {v0}, Lc8/YLj;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
