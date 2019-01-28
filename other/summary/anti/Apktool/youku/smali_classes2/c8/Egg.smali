.class public Lc8/Egg;
.super Ljava/lang/Object;
.source "WXViewToImageUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Fgg;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Fgg;

.field final synthetic val$destPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Fgg;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lc8/Egg;->this$0:Lc8/Fgg;

    iput-object p2, p0, Lc8/Egg;->val$destPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lc8/Egg;->this$0:Lc8/Fgg;

    iget-object v0, v0, Lc8/Fgg;->val$mOnImageSavedCallback:Lc8/Ggg;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lc8/Egg;->this$0:Lc8/Fgg;

    iget-object v0, v0, Lc8/Fgg;->val$mOnImageSavedCallback:Lc8/Ggg;

    iget-object v1, p0, Lc8/Egg;->val$destPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lc8/Ggg;->onSaveSucceed(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lc8/Egg;->this$0:Lc8/Fgg;

    iget-object v0, v0, Lc8/Fgg;->val$imageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v3, p0, Lc8/Egg;->val$destPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    :cond_0
    return-void
.end method
