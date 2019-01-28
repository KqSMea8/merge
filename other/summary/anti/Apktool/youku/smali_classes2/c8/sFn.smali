.class public Lc8/sFn;
.super Ljava/lang/Object;
.source "HomePageActivity.java"

# interfaces
.implements Lc8/Nkf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/ui/activity/HomePageActivity;->initAndStartDataBoard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/ui/activity/HomePageActivity;


# direct methods
.method public constructor <init>(Lcom/youku/ui/activity/HomePageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/ui/activity/HomePageActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 746
    iput-object p1, p0, Lc8/sFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 3

    .prologue
    .line 750
    const-string/jumbo v0, "com.youku.ui.activity.HomePageActivity"

    .line 751
    .local v0, "homepage":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 752
    .local v1, "i":Landroid/content/Intent;
    iget-object v2, p0, Lc8/sFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 754
    iget-object v2, p0, Lc8/sFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    invoke-virtual {v2, v1}, Lcom/youku/ui/activity/HomePageActivity;->startActivity(Landroid/content/Intent;)V

    .line 756
    return-void
.end method
