.class public Lc8/GK;
.super Ljava/lang/Object;
.source "NetworkStatusMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/HK;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/HK;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lc8/HK;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lc8/GK;->this$0:Lc8/HK;

    iput-object p2, p0, Lc8/GK;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lc8/GK;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lc8/IK;->access$000(Landroid/content/Context;)V

    .line 83
    return-void
.end method
