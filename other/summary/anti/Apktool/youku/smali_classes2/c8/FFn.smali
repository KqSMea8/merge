.class public Lc8/FFn;
.super Ljava/lang/Object;
.source "HomePageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/GFn;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/GFn;


# direct methods
.method constructor <init>(Lc8/GFn;)V
    .locals 0
    .param p1, "this$1"    # Lc8/GFn;

    .prologue
    .line 972
    iput-object p1, p0, Lc8/FFn;->this$1:Lc8/GFn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 976
    :try_start_0
    iget-object v2, p0, Lc8/FFn;->this$1:Lc8/GFn;

    iget-object v2, v2, Lc8/GFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    const-class v3, Lc8/gMj;

    invoke-static {v2, v3}, Lc8/Jcf;->get(Landroid/app/Activity;Ljava/lang/Class;)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lc8/gMj;

    invoke-interface {v2}, Lc8/gMj;->scrollTopAndRefresh()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 982
    :goto_0
    return-void

    .line 977
    :catch_0
    move-exception v1

    .line 978
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 979
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 980
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
