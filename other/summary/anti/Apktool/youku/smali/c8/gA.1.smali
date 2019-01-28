.class public Lc8/gA;
.super Landroid/app/Service;
.source "BaseDelegateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/bA;,
        Lc8/fA;
    }
.end annotation


# instance fields
.field private dispatcher:Lc8/fA;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    new-instance v0, Lc8/fA;

    invoke-direct {v0}, Lc8/fA;-><init>()V

    iput-object v0, p0, Lc8/gA;->dispatcher:Lc8/fA;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    iget-object v0, p0, Lc8/gA;->dispatcher:Lc8/fA;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 40
    return-void
.end method
