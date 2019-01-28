.class public Lc8/dwb;
.super Landroid/content/BroadcastReceiver;
.source "WeexPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jwb;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jwb;


# direct methods
.method constructor <init>(Lc8/jwb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jwb;

    .prologue
    .line 382
    iput-object p1, p0, Lc8/dwb;->this$0:Lc8/jwb;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 385
    iget-object v0, p0, Lc8/dwb;->this$0:Lc8/jwb;

    invoke-virtual {v0}, Lc8/jwb;->reload()V

    .line 386
    return-void
.end method
