.class public Lc8/BFn;
.super Ljava/lang/Object;
.source "HomePageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/ui/activity/HomePageActivity;->refreshHomeMessageView(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/ui/activity/HomePageActivity;

.field final synthetic val$msgId:J


# direct methods
.method public constructor <init>(Lcom/youku/ui/activity/HomePageActivity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/ui/activity/HomePageActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 691
    iput-object p1, p0, Lc8/BFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    iput-wide p2, p0, Lc8/BFn;->val$msgId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 695
    :try_start_0
    iget-object v2, p0, Lc8/BFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    const-class v3, Lc8/pAk;

    invoke-static {v2, v3}, Lc8/Jcf;->get(Landroid/app/Activity;Ljava/lang/Class;)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lc8/pAk;

    iget-wide v4, p0, Lc8/BFn;->val$msgId:J

    invoke-interface {v2, v4, v5}, Lc8/pAk;->refreshHomeMessageView(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 701
    :goto_0
    return-void

    .line 696
    :catch_0
    move-exception v1

    .line 697
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 698
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 699
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
