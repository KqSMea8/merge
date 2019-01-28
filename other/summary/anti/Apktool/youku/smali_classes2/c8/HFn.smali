.class public Lc8/HFn;
.super Ljava/lang/Object;
.source "HomePageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/IFn;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/IFn;


# direct methods
.method constructor <init>(Lc8/IFn;)V
    .locals 0
    .param p1, "this$1"    # Lc8/IFn;

    .prologue
    .line 874
    iput-object p1, p0, Lc8/HFn;->this$1:Lc8/IFn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 879
    :try_start_0
    iget-object v2, p0, Lc8/HFn;->this$1:Lc8/IFn;

    iget-object v2, v2, Lc8/IFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    const-class v3, Lc8/kyk;

    invoke-static {v2, v3}, Lc8/Jcf;->get(Landroid/app/Activity;Ljava/lang/Class;)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lc8/kyk;

    .line 880
    invoke-interface {v2}, Lc8/kyk;->refreshHomeByLocalData()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 886
    :goto_0
    return-void

    .line 881
    :catch_0
    move-exception v1

    .line 882
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 883
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 884
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
