.class public Lc8/HEn;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/IEn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/IEn;


# direct methods
.method constructor <init>(Lc8/IEn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/IEn;

    .prologue
    .line 864
    iput-object p1, p0, Lc8/HEn;->this$0:Lc8/IEn;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 868
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 869
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 871
    const-class v1, Lc8/Rgn;

    invoke-static {v1}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Rgn;

    iget-object v2, p0, Lc8/HEn;->this$0:Lc8/IEn;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lc8/Rgn;->init3GSDK(Landroid/content/Context;Landroid/os/Handler;)V

    .line 874
    :cond_0
    return-void
.end method
