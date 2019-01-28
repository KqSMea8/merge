.class public Lc8/eA;
.super Ljava/lang/Object;
.source "BaseDelegateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/fA;->handleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/fA;

.field final synthetic val$info:Landroid/content/pm/ActivityInfo;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lc8/fA;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/fA;

    .prologue
    .line 153
    iput-object p1, p0, Lc8/eA;->this$0:Lc8/fA;

    iput-object p2, p0, Lc8/eA;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lc8/eA;->val$info:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lc8/eA;->val$intent:Landroid/content/Intent;

    iget-object v1, p0, Lc8/eA;->val$info:Landroid/content/pm/ActivityInfo;

    invoke-static {v0, v1}, Lc8/aA;->postOnReceived(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 157
    return-void
.end method
