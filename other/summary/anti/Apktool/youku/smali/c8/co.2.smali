.class public Lc8/co;
.super Landroid/content/BroadcastReceiver;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/do;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/do;


# direct methods
.method constructor <init>(Lc8/do;)V
    .locals 0
    .param p1, "this$1"    # Lc8/do;

    .prologue
    .line 335
    iput-object p1, p0, Lc8/co;->this$1:Lc8/do;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 341
    iget-object v0, p0, Lc8/co;->this$1:Lc8/do;

    invoke-virtual {v0}, Lc8/do;->dispatchTimeChanged()V

    .line 342
    return-void
.end method
