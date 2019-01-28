.class public Lc8/xQp;
.super Ljava/lang/Object;
.source "NetworkStateReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/yQp;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/yQp;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lc8/yQp;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lc8/xQp;->this$0:Lc8/yQp;

    iput-object p2, p0, Lc8/xQp;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 47
    :try_start_0
    iget-object v1, p0, Lc8/xQp;->this$0:Lc8/yQp;

    iget-object v2, p0, Lc8/xQp;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lc8/yQp;->access$000(Lc8/yQp;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "mtopsdk.NetworkStateReceiver"

    const-string/jumbo v2, "[onReceive] updateNetworkStatus error"

    invoke-static {v1, v2, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
